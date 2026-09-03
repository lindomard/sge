object Frm_MFor01: TFrm_MFor01
  Left = 142
  Top = 104
  Width = 791
  Height = 598
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Formula'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIForm
  Icon.Data = {
    0000010001002020100000000000E80200001600000028000000200000004000
    0000010004000000000080020000000000000000000000000000000000000000
    0000000080000080000000808000800000008000800080800000C0C0C0008080
    80000000FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF000000
    0000000000888888888888000000888888888888888000000000888000000000
    000000000002422222220888000005555555555550224E2E2E2E2088888000DD
    BDDDDDD5022F24EAE2E2E200008800055555555502FAA4AAAE2E2E0666080000
    DBDDDD5080AFA4AAEAE2E06666600000DBDDDD5080AFAA4AAA2E206666600000
    DBD00000080FAA4AEAE2066666600000DBDDDD50000AFA6AAE2E06E6E6600000
    DBDDDD500080AFA6EAE06EE6E6600000DBD000000000AFA4AE20EEE6E6600000
    DBDDDD5000080FA6E207EEE6E6600000DBDDDD5000000AFA2E0EEEE6E6600000
    DBD00000000007FE470EEEE6E66000007FF77780000007FE870EEEE6E6600000
    7F7F778000007FFFEE707778788000007FF00000000000000000777878800000
    7F7F77800000000778F7F7F8788000007FF7778000000007F4777F7878800000
    7F7000000000008F778F77F8788000007FF7778000000FF7F747777777700000
    7F7F77800000000000400000000000007FF00000000000000078000000000000
    7F7F77800000000000040000000000007FF77780000000000008700000000000
    7F7F77800000000000078000000000007FF77780000000000000400000000000
    7F7F7780000000000000870000000007F788888000000000000078000000007F
    777777700000000000000400000000000000000000000000000008700000FFFC
    003F0000001F0000000F0000000180000000C0000000E0000000E0000000E008
    0000E00C0000E00C0000E00E0000E00E0000E00F0000E00F0000E00F0000E00E
    0000E00E0000E00FC000E00FC000E00F8000E00F0000E00F0000E00FFCFFE00F
    FEFFE00FFE7FE00FFE7FE00FFF7FE00FFF3FC00FFF3F800FFFBF800FFF9F}
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 783
    Height = 46
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 2
      Top = 8
      Width = 118
      Height = 13
      Caption = 'C'#243'digo do Produto..:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object grade: TLabel
      Left = 243
      Top = 9
      Width = 39
      Height = 13
      Caption = 'Grade:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Visible = False
    end
    object Label6: TLabel
      Left = 2
      Top = 29
      Width = 118
      Height = 13
      Caption = 'Tempo Estimado.....:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label7: TLabel
      Left = 185
      Top = 29
      Width = 82
      Height = 13
      Caption = 'Peso Liquido.:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object CODPRO: TEdit
      Left = 122
      Top = 6
      Width = 115
      Height = 19
      Hint = 'C'#243'digo do Produto a Ser Produzido'
      Ctl3D = False
      ParentCtl3D = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnEnter = CODPROEnter
      OnExit = CODPROExit
      OnKeyPress = CODPROKeyPress
    end
    object NOMPRO: TEdit
      Left = 236
      Top = 6
      Width = 360
      Height = 19
      Color = 12582911
      Ctl3D = False
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 2
    end
    object bbAtualizar: TBitBtn
      Left = 601
      Top = 4
      Width = 83
      Height = 21
      Hint = 'Atualizar as Informa'#231#245'es'
      Caption = '&Atualizar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
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
    object numero: TEdit
      Left = 290
      Top = 6
      Width = 61
      Height = 19
      Hint = 'N'#250'mero da Grade a ser Produzida'
      Ctl3D = False
      ParentCtl3D = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      Visible = False
      OnEnter = numeroEnter
      OnExit = numeroExit
      OnKeyDown = numeroKeyDown
    end
    object CB_CUSTOS: TCheckBox
      Left = 334
      Top = 27
      Width = 107
      Height = 17
      Caption = 'Manter Custos'
      Checked = True
      State = cbChecked
      TabOrder = 6
    end
    object CB_ATUPRO: TCheckBox
      Left = 435
      Top = 27
      Width = 165
      Height = 17
      Caption = 'ao Gravar Atualizar o Produto'
      Checked = True
      State = cbChecked
      TabOrder = 7
    end
    object MPESOL: TEdit
      Left = 267
      Top = 24
      Width = 61
      Height = 19
      Hint = 'Peso do Produto'
      Ctl3D = False
      ParentCtl3D = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 5
      OnExit = MPESOLExit
    end
    object MTEMPO: TMaskEdit
      Left = 122
      Top = 24
      Width = 63
      Height = 19
      Ctl3D = False
      EditMask = '!90:99;1; '
      MaxLength = 5
      ParentCtl3D = False
      TabOrder = 4
      Text = '  :  '
      OnExit = MTEMPOExit
    end
    object CB_ATUACUSSEL: TCheckBox
      Left = 595
      Top = 27
      Width = 162
      Height = 17
      Caption = 'Atualizar Custo ao Selecionar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 8
      OnClick = CB_ATUACUSSELClick
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 543
    Width = 783
    Height = 24
    Align = alBottom
    TabOrder = 1
    object bbImprmir: TBitBtn
      Left = 2
      Top = 0
      Width = 150
      Height = 25
      Cursor = crHandPoint
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
      Left = 627
      Top = 0
      Width = 150
      Height = 25
      Cursor = crHandPoint
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
    object bbAtuMatPrim: TBitBtn
      Left = 196
      Top = 0
      Width = 244
      Height = 25
      Cursor = crHandPoint
      Hint = 'Atualiza os Valores das Mat'#233'rias Primas'
      Caption = 'Atual&izar Pre'#231'os das Materias PrimasTodas'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      OnClick = bbAtuMatPrimClick
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
    object bbExportar: TBitBtn
      Left = 450
      Top = 0
      Width = 150
      Height = 25
      Cursor = crHandPoint
      Hint = 'Exporta os Parametros para '#13#10'Outros Produtos'
      Caption = '&Exportar'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      OnClick = bbExportarClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333303
        333333333333337FF3333333333333903333333333333377FF33333333333399
        03333FFFFFFFFF777FF3000000999999903377777777777777FF0FFFF0999999
        99037F3337777777777F0FFFF099999999907F3FF777777777770F00F0999999
        99037F773777777777730FFFF099999990337F3FF777777777330F00FFFFF099
        03337F773333377773330FFFFFFFF09033337F3FF3FFF77733330F00F0000003
        33337F773777777333330FFFF0FF033333337F3FF7F3733333330F08F0F03333
        33337F7737F7333333330FFFF003333333337FFFF77333333333000000333333
        3333777777333333333333333333333333333333333333333333}
      NumGlyphs = 2
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 46
    Width = 783
    Height = 162
    Align = alClient
    DataSource = Src_Comp
    FixedColor = 12582911
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clNavy
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = [fsBold]
    OnColExit = DBGrid1ColExit
    OnExit = DBGrid1Exit
    OnKeyDown = DBGrid1KeyDown
    OnKeyPress = DBGrid1KeyPress
    Columns = <
      item
        Expanded = False
        FieldName = 'CPCODMAT'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CPMPNUM'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'und'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nommat'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CPQUANT'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CPPU'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CPALICMSCRED'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CPICMSCRED'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'total'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'totalliq'
        ReadOnly = True
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CPORDEM'
        ReadOnly = True
        Visible = True
      end
      item
        Expanded = False
        Visible = True
      end>
  end
  object DBNavigator2: TDBNavigator
    Left = 0
    Top = 525
    Width = 783
    Height = 18
    DataSource = Src_Comp
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbDelete, nbEdit, nbPost, nbCancel]
    Align = alBottom
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
    TabOrder = 3
  end
  object pnl_master: TPanel
    Left = 55
    Top = 47
    Width = 665
    Height = 159
    TabOrder = 4
    Visible = False
    object gb_master: TGroupBox
      Left = 1
      Top = 1
      Width = 663
      Height = 157
      Align = alClient
      Caption = 'Configura'#231#245'es Master'
      TabOrder = 0
      object Label8: TLabel
        Left = 9
        Top = 39
        Width = 90
        Height = 13
        Caption = 'Aliquota de D'#233'bito:'
      end
      object bb_salvamaster: TBitBtn
        Left = 185
        Top = 104
        Width = 232
        Height = 33
        Cursor = crHandPoint
        Hint = 'Ajusta o Pre'#231'o de Venda do Produto'#13#10'de Acordo com os parametros'
        Caption = 'Salvar Configura'#231#245'es'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        OnClick = bb_salvamasterClick
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
      object cb_pcoven: TCheckBox
        Left = 8
        Top = 16
        Width = 143
        Height = 17
        Caption = 'Atualizar Pre'#231'o de Venda'
        TabOrder = 1
      end
      object edt_aliq: TEdit
        Left = 103
        Top = 34
        Width = 61
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 2
        Text = '10'
        OnExit = edt_aliqExit
      end
      object cb_vcustos: TCheckBox
        Left = 9
        Top = 62
        Width = 78
        Height = 12
        Caption = 'Ver Custos'
        TabOrder = 3
        OnClick = cb_vcustosClick
      end
    end
  end
  object Panel5: TPanel
    Left = 0
    Top = 208
    Width = 783
    Height = 27
    Align = alBottom
    TabOrder = 5
    object Label2: TLabel
      Left = 3
      Top = 7
      Width = 101
      Height = 13
      Caption = 'Totais: Unidades:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 192
      Top = 7
      Width = 41
      Height = 13
      Caption = #205'tens..:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 483
      Top = 7
      Width = 82
      Height = 13
      Caption = 'Total Formula:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 293
      Top = 7
      Width = 75
      Height = 13
      Caption = 'Icms Cr'#233'dito:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object QTDU: TEdit
      Left = 106
      Top = 3
      Width = 83
      Height = 21
      Enabled = False
      ParentColor = True
      TabOrder = 0
    end
    object QTDIT: TEdit
      Left = 234
      Top = 3
      Width = 55
      Height = 21
      Enabled = False
      ParentColor = True
      TabOrder = 1
    end
    object TOTAL: TEdit
      Left = 567
      Top = 3
      Width = 110
      Height = 21
      Enabled = False
      ParentColor = True
      TabOrder = 2
    end
    object TOTICMSCRED: TEdit
      Left = 369
      Top = 3
      Width = 110
      Height = 21
      Enabled = False
      ParentColor = True
      TabOrder = 3
    end
  end
  object pnl_ccus: TPanel
    Left = 0
    Top = 235
    Width = 783
    Height = 290
    Align = alBottom
    TabOrder = 6
    object gb_Custo: TGroupBox
      Left = 1
      Top = 1
      Width = 781
      Height = 288
      Align = alClient
      Caption = 'Custo Final do Produtos:'
      TabOrder = 0
      object StaticText2: TStaticText
        Left = 4
        Top = 15
        Width = 250
        Height = 17
        Alignment = taCenter
        AutoSize = False
        BorderStyle = sbsSunken
        Caption = 'Composi'#231#227'o do Custo do Produto'
        TabOrder = 0
      end
      object StaticText4: TStaticText
        Left = 519
        Top = 15
        Width = 250
        Height = 17
        Alignment = taCenter
        AutoSize = False
        BorderStyle = sbsSunken
        Caption = 'Composi'#231#227'o Pre'#231'o de Venda'
        TabOrder = 1
      end
      object GroupBox1: TGroupBox
        Left = 2
        Top = 187
        Width = 777
        Height = 99
        Align = alBottom
        Caption = 'Conclus'#245'es:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
        object StaticText1: TStaticText
          Left = 7
          Top = 13
          Width = 95
          Height = 17
          BorderStyle = sbsSunken
          Caption = 'Pre'#231'o de Custo:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 5
        end
        object PCOCUS: TStaticText
          Left = 105
          Top = 13
          Width = 90
          Height = 17
          Alignment = taRightJustify
          AutoSize = False
          BorderStyle = sbsSunken
          Caption = '0,00'
          TabOrder = 6
        end
        object PCOVDA01: TStaticText
          Left = 675
          Top = 12
          Width = 90
          Height = 17
          Alignment = taRightJustify
          AutoSize = False
          BorderStyle = sbsSunken
          Caption = '0,00'
          TabOrder = 7
        end
        object StaticText5: TStaticText
          Left = 558
          Top = 12
          Width = 117
          Height = 17
          BorderStyle = sbsSunken
          Caption = 'Pre'#231'o de Venda 01:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 8
        end
        object StaticText6: TStaticText
          Left = 453
          Top = 30
          Width = 222
          Height = 17
          BorderStyle = sbsSunken
          Caption = '% Sobre P'#231'o.01 = Pre'#231'o de Venda 02:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 9
        end
        object PCOVDA02: TStaticText
          Left = 675
          Top = 30
          Width = 90
          Height = 17
          Alignment = taRightJustify
          AutoSize = False
          BorderStyle = sbsSunken
          Caption = '0,00'
          TabOrder = 10
        end
        object StaticText3: TStaticText
          Left = 453
          Top = 47
          Width = 222
          Height = 17
          BorderStyle = sbsSunken
          Caption = '% Sobre P'#231'o.01 = Pre'#231'o de Venda 03:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 11
        end
        object PCOVDA03: TStaticText
          Left = 675
          Top = 47
          Width = 90
          Height = 17
          Alignment = taRightJustify
          AutoSize = False
          BorderStyle = sbsSunken
          Caption = '0,00'
          TabOrder = 12
        end
        object StaticText7: TStaticText
          Left = 399
          Top = 30
          Width = 11
          Height = 17
          BorderStyle = sbsSunken
          Caption = '+'
          TabOrder = 13
        end
        object APCO02: TEdit
          Left = 410
          Top = 28
          Width = 42
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 2
          Text = '0,00'
          OnExit = APCO02Exit
          OnKeyPress = mEdit_CustoKeyPress
        end
        object APCO03: TEdit
          Left = 410
          Top = 46
          Width = 42
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 3
          Text = '0,00'
          OnExit = APCO03Exit
          OnKeyPress = mEdit_CustoKeyPress
        end
        object StaticText8: TStaticText
          Left = 399
          Top = 48
          Width = 11
          Height = 17
          BorderStyle = sbsSunken
          Caption = '+'
          TabOrder = 14
        end
        object bbAtuaPro: TBitBtn
          Left = 5
          Top = 32
          Width = 137
          Height = 33
          Cursor = crHandPoint
          Hint = 'Ajusta o Pre'#231'o de Venda do Produto'#13#10'de Acordo com os parametros'
          Caption = '&Ajustar Produto'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 15
          OnClick = bbAtuaProClick
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
        object bbGravar: TBitBtn
          Left = 5
          Top = 64
          Width = 137
          Height = 33
          Cursor = crHandPoint
          Caption = '&Gravar'
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 16
          OnClick = bbGravarClick
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
        object StaticText9: TStaticText
          Left = 145
          Top = 29
          Width = 125
          Height = 17
          Alignment = taRightJustify
          AutoSize = False
          BorderStyle = sbsSunken
          Caption = 'Pre'#231'o M'#237'nimo:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 17
        end
        object PCOMIN: TEdit
          Left = 271
          Top = 28
          Width = 90
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 0
          Text = '0,00'
          OnExit = PCOMINExit
          OnKeyPress = mEdit_CustoKeyPress
        end
        object bbImpComp: TBitBtn
          Left = 144
          Top = 74
          Width = 137
          Height = 22
          Cursor = crHandPoint
          Caption = '&Imprimir Composi'#231#227'o'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 18
          OnClick = bbImpCompClick
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
        object bbSavar_Padroes: TBitBtn
          Left = 283
          Top = 74
          Width = 137
          Height = 22
          Cursor = crHandPoint
          Caption = 'Salvar &Pad'#245'es'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 19
          OnClick = bbSavar_PadroesClick
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
        object StaticText10: TStaticText
          Left = 144
          Top = 47
          Width = 126
          Height = 17
          BorderStyle = sbsSunken
          Caption = 'Incidencia S/M'#237'nimo:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 20
        end
        object INCPMIN: TEdit
          Left = 271
          Top = 46
          Width = 90
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 1
          Text = '0,00'
          OnExit = INCPMINExit
          OnKeyPress = mEdit_CustoKeyPress
        end
        object GroupBox2: TGroupBox
          Left = 424
          Top = 65
          Width = 343
          Height = 32
          Caption = 'Atualizar os Seguintes Pre'#231'os:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 4
          object CB_ATUP01: TCheckBox
            Left = 80
            Top = 15
            Width = 78
            Height = 12
            Caption = 'Pre'#231'o 0&1'
            TabOrder = 0
          end
          object CB_ATUP02: TCheckBox
            Left = 165
            Top = 14
            Width = 76
            Height = 12
            Caption = 'Pre'#231'o 0&2'
            TabOrder = 1
          end
          object CB_ATUP03: TCheckBox
            Left = 257
            Top = 12
            Width = 80
            Height = 17
            Caption = 'Pre'#231'o 0&3'
            TabOrder = 2
          end
        end
      end
      object StaticText11: TStaticText
        Left = 262
        Top = 15
        Width = 250
        Height = 17
        Alignment = taCenter
        AutoSize = False
        BorderStyle = sbsSunken
        Caption = 'Composi'#231#227'o do Custo do Produto'
        TabOrder = 3
      end
    end
  end
  object Tb_Comp: TQuery
    CachedUpdates = True
    AfterInsert = Tb_CompAfterInsert
    AfterEdit = Tb_CompAfterEdit
    BeforePost = Tb_CompBeforePost
    AfterPost = c
    AfterCancel = Tb_CompAfterCancel
    BeforeDelete = Tb_CompBeforeDelete
    AfterDelete = c
    OnCalcFields = Tb_CompCalcFields
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select * From CADCOMP'
      'where  CPCODEMP like :CODEMP '
      'and      CPCODPRO like :CODPRO'
      'and      CPNUMERO like :NUMERO'
      'and      CPCODPRO_ACAB like :CODPRO_ACAB'
      'order by CPORDEM')
    UpdateMode = upWhereKeyOnly
    UpdateObject = U_Comp
    Left = 16
    Top = 136
    ParamData = <
      item
        DataType = ftString
        Name = 'CODEMP'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CODPRO'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'NUMERO'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CODPRO_ACAB'
        ParamType = ptUnknown
        Value = ''
      end>
    object Tb_Compnommat: TStringField
      DisplayLabel = 'Nome Mat'#233'ria Prima'
      FieldKind = fkCalculated
      FieldName = 'nommat'
      Size = 40
      Calculated = True
    end
    object Tb_Compund: TStringField
      DisplayLabel = 'Und'
      FieldKind = fkCalculated
      FieldName = 'und'
      Size = 3
      Calculated = True
    end
    object Tb_CompCPCODEMP: TFloatField
      DisplayLabel = 'Empresa'
      FieldName = 'CPCODEMP'
      Origin = 'SG_ASSOC.CADCOMP.CPCODEMP'
    end
    object Tb_CompCPORDEM: TFloatField
      DisplayLabel = 'Ordem'
      FieldName = 'CPORDEM'
      Origin = 'SG_ASSOC.CADCOMP.CPORDEM'
    end
    object Tb_CompCPCODPRO: TFloatField
      DisplayLabel = 'Cod.Prod'
      FieldName = 'CPCODPRO'
      Origin = 'SG_ASSOC.CADCOMP.CPCODPRO'
    end
    object Tb_CompCPCODMAT: TFloatField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CPCODMAT'
      Origin = 'SG_ASSOC.CADCOMP.CPCODMAT'
    end
    object Tb_CompCPQUANT: TFloatField
      DisplayLabel = 'Quantidade'
      FieldName = 'CPQUANT'
      Origin = 'SG_ASSOC.CADCOMP.CPQUANT'
    end
    object Tb_CompCPPU: TFloatField
      DisplayLabel = 'Pre'#231'o Unit'
      FieldName = 'CPPU'
      Origin = 'SG_ASSOC.CADCOMP.CPPU'
    end
    object Tb_CompCPNUMERO: TStringField
      DisplayLabel = 'N'#250'mero'
      FieldName = 'CPNUMERO'
      Origin = 'SG_ASSOC.CADCOMP.CPNUMERO'
    end
    object Tb_CompCPMPNUM: TStringField
      DisplayLabel = 'N'#250'mero'
      FieldName = 'CPMPNUM'
      Origin = 'SG_ASSOC.CADCOMP.CPMPNUM'
    end
    object Tb_CompCPCODPRO_ACAB: TFloatField
      DisplayLabel = 'C'#243'd.Prod.Acabado'
      FieldName = 'CPCODPRO_ACAB'
      Origin = 'SG_ASSOC.CADCOMP.CPCODPRO_ACAB'
    end
    object Tb_CompCPALICMSCRED: TFloatField
      DisplayLabel = 'Aliq.Icms'
      FieldName = 'CPALICMSCRED'
      Origin = 'SG_ASSOC.CADCOMP.CPALICMSCRED'
    end
    object Tb_CompCPICMSCRED: TFloatField
      DisplayLabel = 'Valor ICMS'
      FieldName = 'CPICMSCRED'
      Origin = 'SG_ASSOC.CADCOMP.CPICMSCRED'
    end
    object Tb_Comptotalliq: TFloatField
      DisplayLabel = 'Total L'#237'quido'
      FieldKind = fkCalculated
      FieldName = 'totalliq'
      Calculated = True
    end
    object Tb_Comptotal: TFloatField
      DisplayLabel = 'Total'
      FieldKind = fkCalculated
      FieldName = 'total'
      Calculated = True
    end
    object Tb_CompCPVLRINC: TFloatField
      FieldName = 'CPVLRINC'
      Origin = 'SG_ASSOC.CADCOMP.CPVLRINC'
    end
    object Tb_CompCPALIQORI: TFloatField
      FieldName = 'CPALIQORI'
      Origin = 'SG_ASSOC.CADCOMP.CPALIQORI'
    end
    object Tb_CompCPPERCENT: TFloatField
      FieldName = 'CPPERCENT'
      Origin = 'SG_ASSOC.CADCOMP.CPPERCENT'
    end
    object Tb_CompCPPERCENT_REST: TFloatField
      FieldName = 'CPPERCENT_REST'
      Origin = 'SG_ASSOC.CADCOMP.CPPERCENT_REST'
    end
    object Tb_CompCPTIPO: TFloatField
      FieldName = 'CPTIPO'
      Origin = 'SG_ASSOC.CADCOMP.CPTIPO'
    end
    object Tb_CompCPQTD_PAD: TFloatField
      FieldName = 'CPQTD_PAD'
      Origin = 'SG_ASSOC.CADCOMP.CPQTD_PAD'
    end
  end
  object U_Comp: TUpdateSQL
    ModifySQL.Strings = (
      'update CADCOMP'
      'set'
      '  CPCODEMP = :CPCODEMP,'
      '  CPORDEM = :CPORDEM,'
      '  CPCODPRO = :CPCODPRO,'
      '  CPCODMAT = :CPCODMAT,'
      '  CPQUANT = :CPQUANT,'
      '  CPPU = :CPPU,'
      '  CPNUMERO = :CPNUMERO,'
      '  CPMPNUM = :CPMPNUM,'
      '  CPCODPRO_ACAB = :CPCODPRO_ACAB,'
      '  CPALICMSCRED = :CPALICMSCRED,'
      '  CPICMSCRED = :CPICMSCRED,'
      '  CPVLRINC = :CPVLRINC,'
      '  CPALIQORI = :CPALIQORI,'
      '  CPPERCENT = :CPPERCENT,'
      '  CPPERCENT_REST = :CPPERCENT_REST,'
      '  CPTIPO = :CPTIPO,'
      '  CPQTD_PAD = :CPQTD_PAD'
      'where'
      '  CPCODEMP = :OLD_CPCODEMP and'
      '  CPORDEM = :OLD_CPORDEM and'
      '  CPCODPRO = :OLD_CPCODPRO and'
      '  CPCODMAT = :OLD_CPCODMAT')
    InsertSQL.Strings = (
      'insert into CADCOMP'
      '  (CPCODEMP, CPORDEM, CPCODPRO, CPCODMAT, CPQUANT, CPPU, '
      'CPNUMERO, CPMPNUM, '
      
        '   CPCODPRO_ACAB, CPALICMSCRED, CPICMSCRED, CPVLRINC, CPALIQORI,' +
        ' '
      'CPPERCENT, '
      '   CPPERCENT_REST, CPTIPO, CPQTD_PAD)'
      'values'
      '  (:CPCODEMP, :CPORDEM, :CPCODPRO, :CPCODMAT, :CPQUANT, :CPPU, '
      ':CPNUMERO, '
      
        '   :CPMPNUM, :CPCODPRO_ACAB, :CPALICMSCRED, :CPICMSCRED, :CPVLRI' +
        'NC, '
      ':CPALIQORI, '
      '   :CPPERCENT, :CPPERCENT_REST, :CPTIPO, :CPQTD_PAD)')
    DeleteSQL.Strings = (
      'delete from CADCOMP'
      'where'
      '  CPCODEMP = :OLD_CPCODEMP and'
      '  CPORDEM = :OLD_CPORDEM and'
      '  CPCODPRO = :OLD_CPCODPRO and'
      '  CPCODMAT = :OLD_CPCODMAT')
    Left = 48
    Top = 136
  end
  object Src_Comp: TDataSource
    DataSet = Tb_Comp
    Left = 74
    Top = 136
  end
end
