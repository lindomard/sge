object Frm_ConProd: TFrm_ConProd
  Left = 218
  Top = 151
  Width = 800
  Height = 554
  ActiveControl = CAMPO
  Caption = 'Manuten'#231#227'o Controle de Produ'#231#227'o'
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
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 792
    Height = 49
    Align = alTop
    Caption = 'Controle Existentes:'
    TabOrder = 0
    object Label1: TLabel
      Left = 9
      Top = 18
      Width = 67
      Height = 13
      Caption = 'Pesquisar por:'
    end
    object CB_Pesq: TComboBox
      Left = 81
      Top = 16
      Width = 142
      Height = 21
      BevelKind = bkSoft
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ItemHeight = 13
      ParentFont = False
      TabOrder = 0
      OnExit = CB_PesqExit
      Items.Strings = (
        'Chave'
        'Data ')
    end
    object CAMPO: TMaskEdit
      Left = 225
      Top = 17
      Width = 216
      Height = 19
      Ctl3D = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 1
    end
    object bbAtualizar: TBitBtn
      Left = 445
      Top = 11
      Width = 86
      Height = 25
      Caption = '&Atualizar'
      TabOrder = 2
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
    object PROTRO: TRadioGroup
      Left = 538
      Top = 0
      Width = 253
      Height = 49
      Cursor = crArrow
      Color = clMoneyGreen
      Ctl3D = True
      DragCursor = crArrow
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      Items.Strings = (
        '0 - Movimentacao Producao'
        '1 - Troca de Molde')
      ParentColor = False
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 3
      OnClick = PROTROClick
    end
  end
  object GroupBox2: TGroupBox
    Left = 0
    Top = 49
    Width = 792
    Height = 102
    Align = alTop
    Caption = 'Controles Existentes:'
    TabOrder = 1
    object DBGrid1: TDBGrid
      Left = 2
      Top = 15
      Width = 788
      Height = 85
      Align = alClient
      Ctl3D = False
      DataSource = Src_CP01
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnCellClick = DBGrid1CellClick
      Columns = <
        item
          Expanded = False
          FieldName = 'CP1CHAVE'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CP1DATA'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CP1TURNO'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CP1REBARBAS'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CP1CODENC'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'nomenc'
          Visible = True
        end>
    end
  end
  object GroupBox3: TGroupBox
    Left = 0
    Top = 151
    Width = 792
    Height = 40
    Align = alTop
    Caption = 'Opera'#231#245'es:'
    TabOrder = 2
    object INCLUIR: TBitBtn
      Left = 265
      Top = 14
      Width = 70
      Height = 24
      Caption = '&Incluir'
      Enabled = False
      TabOrder = 0
      OnClick = INCLUIRClick
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
    object ALTERAR: TBitBtn
      Left = 334
      Top = 14
      Width = 70
      Height = 24
      Caption = 'A&lterar'
      Enabled = False
      TabOrder = 1
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
      NumGlyphs = 2
    end
    object GRAVAR: TBitBtn
      Left = 403
      Top = 14
      Width = 70
      Height = 24
      Caption = '&Gravar'
      Enabled = False
      TabOrder = 2
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
      NumGlyphs = 2
    end
    object CANCELAR: TBitBtn
      Left = 472
      Top = 14
      Width = 70
      Height = 24
      Caption = '&Cancelar'
      Enabled = False
      TabOrder = 3
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
    object DBNavigator1: TDBNavigator
      Left = 5
      Top = 14
      Width = 260
      Height = 24
      DataSource = Src_CP01
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      TabOrder = 4
    end
    object EXCLUIR: TBitBtn
      Left = 542
      Top = 14
      Width = 70
      Height = 24
      Caption = 'E&xcluir'
      Enabled = False
      TabOrder = 5
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
      NumGlyphs = 2
    end
    object IMPRIMIR: TBitBtn
      Left = 613
      Top = 14
      Width = 70
      Height = 24
      Caption = '&Imprimir'
      Enabled = False
      TabOrder = 6
      OnClick = IMPRIMIRClick
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
  object GroupBox4: TGroupBox
    Left = 0
    Top = 191
    Width = 792
    Height = 59
    Align = alTop
    Caption = 'Cabe'#231'alho:'
    Enabled = False
    TabOrder = 3
    object StaticText1: TStaticText
      Left = 9
      Top = 14
      Width = 71
      Height = 17
      Alignment = taRightJustify
      AutoSize = False
      BorderStyle = sbsSunken
      Caption = 'Data:'
      Color = clMoneyGreen
      ParentColor = False
      TabOrder = 0
    end
    object StaticText2: TStaticText
      Left = 384
      Top = 11
      Width = 71
      Height = 17
      Alignment = taRightJustify
      AutoSize = False
      BorderStyle = sbsSunken
      Caption = 'Turno:'
      Color = clMoneyGreen
      ParentColor = False
      TabOrder = 1
    end
    object StaticText3: TStaticText
      Left = 9
      Top = 36
      Width = 71
      Height = 17
      Alignment = taRightJustify
      AutoSize = False
      BorderStyle = sbsSunken
      Caption = 'Encarregado:'
      Color = clMoneyGreen
      ParentColor = False
      TabOrder = 2
    end
    object StaticText4: TStaticText
      Left = 384
      Top = 35
      Width = 71
      Height = 17
      Alignment = taRightJustify
      AutoSize = False
      BorderStyle = sbsSunken
      Caption = 'Rebarbas:'
      Color = clMoneyGreen
      ParentColor = False
      TabOrder = 3
    end
    object DBEdit2: TDBEdit
      Left = 83
      Top = 11
      Width = 82
      Height = 19
      Ctl3D = False
      DataField = 'CP1DATA'
      DataSource = Src_CP01
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 4
    end
    object db_cbTurno: TDBComboBox
      Left = 457
      Top = 8
      Width = 300
      Height = 21
      AutoDropDown = True
      BevelKind = bkSoft
      DataField = 'CP1TURNO'
      DataSource = Src_CP01
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ItemHeight = 13
      ParentFont = False
      TabOrder = 5
      OnEnter = db_cbTurnoEnter
      OnExit = db_cbTurnoExit
    end
    object DBEdit3: TDBEdit
      Left = 83
      Top = 33
      Width = 81
      Height = 19
      Ctl3D = False
      DataField = 'CP1CODENC'
      DataSource = Src_CP01
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 6
      OnExit = DBEdit3Exit
      OnKeyPress = DBEdit3KeyPress
    end
    object DBEdit4: TDBEdit
      Left = 167
      Top = 33
      Width = 207
      Height = 19
      BevelKind = bkFlat
      Ctl3D = False
      DataField = 'nomenc'
      DataSource = Src_CP01
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 7
    end
    object DBEdit6: TDBEdit
      Left = 457
      Top = 31
      Width = 299
      Height = 19
      Ctl3D = False
      DataField = 'CP1REBARBAS'
      DataSource = Src_CP01
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 8
    end
  end
  object GroupBox5: TGroupBox
    Left = 0
    Top = 250
    Width = 792
    Height = 273
    Align = alClient
    Caption = #205'tens:'
    TabOrder = 4
    object dbGridCP02: TDBGrid
      Left = 2
      Top = 15
      Width = 788
      Height = 84
      Align = alClient
      Ctl3D = False
      DataSource = Src_CP02
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 2
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'CP2CODMAQ'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'nommaq'
          Width = 203
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CP2FRASCO'
          Width = 72
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CP2COR'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CP2CICLO'
          Width = 35
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CP2CAVIDADE'
          Width = 52
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CP2PRODUCAO'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'percPerda'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CP2PERDA'
          Width = 40
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CP2HORTRAB'
          Width = 97
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CP2DTHRIPAR'
          Width = 69
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CP2DTHRTPAR'
          Width = 87
          Visible = True
        end>
    end
    object GroupBox9: TGroupBox
      Left = 2
      Top = 235
      Width = 788
      Height = 36
      Align = alBottom
      Caption = 'Opera'#231#245'es:'
      TabOrder = 1
      object bbIncCP02: TBitBtn
        Left = 265
        Top = 14
        Width = 70
        Height = 20
        Caption = 'Incluir'
        Enabled = False
        TabOrder = 2
        OnClick = bbIncCP02Click
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
      object bbAltCP02: TBitBtn
        Left = 334
        Top = 14
        Width = 70
        Height = 20
        Caption = 'Alterar'
        Enabled = False
        TabOrder = 0
        OnClick = bbAltCP02Click
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
      object bbGravCP02: TBitBtn
        Left = 403
        Top = 14
        Width = 70
        Height = 20
        Caption = '&Gravar'
        Enabled = False
        TabOrder = 1
        OnClick = bbGravCP02Click
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
      object bbCancCP02: TBitBtn
        Left = 472
        Top = 14
        Width = 70
        Height = 20
        Caption = 'Cancelar'
        Enabled = False
        TabOrder = 3
        OnClick = bbCancCP02Click
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
      object dbnavCP02: TDBNavigator
        Left = 5
        Top = 14
        Width = 260
        Height = 20
        DataSource = Src_CP02
        VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
        TabOrder = 4
      end
      object bbExcCP02: TBitBtn
        Left = 542
        Top = 14
        Width = 70
        Height = 20
        Caption = 'Excluir'
        Enabled = False
        TabOrder = 5
        OnClick = bbExcCP02Click
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
        NumGlyphs = 2
      end
      object BitBtn8: TBitBtn
        Left = 698
        Top = 10
        Width = 86
        Height = 25
        Caption = '&Sair'
        TabOrder = 6
        OnClick = BitBtn8Click
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
    object PageControl1: TPageControl
      Left = 2
      Top = 99
      Width = 788
      Height = 136
      Cursor = crHandPoint
      ActivePage = ts_div
      Align = alBottom
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      HotTrack = True
      ParentFont = False
      TabOrder = 0
      OnChange = PageControl1Change
      object ts_div: TTabSheet
        Caption = '&Diversos'
        Enabled = False
        object DBEdit19: TDBEdit
          Left = 113
          Top = 62
          Width = 109
          Height = 21
          DataField = 'CP2HORTRAB'
          DataSource = Src_CP02
          TabOrder = 5
        end
        object StaticText18: TStaticText
          Left = 113
          Top = 45
          Width = 112
          Height = 17
          Alignment = taCenter
          AutoSize = False
          BorderStyle = sbsSunken
          Caption = 'Horas Trab'
          Color = clMoneyGreen
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 7
        end
        object DBEdit12: TDBEdit
          Left = 286
          Top = 62
          Width = 57
          Height = 21
          DataField = 'totperdas'
          DataSource = Src_CP02
          Enabled = False
          TabOrder = 8
        end
        object DBEdit13: TDBEdit
          Left = 343
          Top = 62
          Width = 57
          Height = 21
          DataField = 'percPerda'
          DataSource = Src_CP02
          Enabled = False
          TabOrder = 9
        end
        object StaticText12: TStaticText
          Left = 342
          Top = 45
          Width = 58
          Height = 17
          Alignment = taCenter
          AutoSize = False
          BorderStyle = sbsSunken
          Caption = '%'
          Color = clMoneyGreen
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 10
        end
        object StaticText11: TStaticText
          Left = 285
          Top = 45
          Width = 58
          Height = 17
          Alignment = taCenter
          AutoSize = False
          BorderStyle = sbsSunken
          Caption = 'Perda'
          Color = clMoneyGreen
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 11
        end
        object StaticText10: TStaticText
          Left = 227
          Top = 45
          Width = 58
          Height = 17
          Alignment = taCenter
          AutoSize = False
          BorderStyle = sbsSunken
          Caption = 'Produ'#231#227'o'
          Color = clMoneyGreen
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 12
        end
        object DBEdit11: TDBEdit
          Left = 227
          Top = 62
          Width = 57
          Height = 21
          DataField = 'CP2PRODUCAO'
          DataSource = Src_CP02
          TabOrder = 6
        end
        object DBEdit10: TDBEdit
          Left = 75
          Top = 62
          Width = 36
          Height = 21
          DataField = 'CP2CAVIDADE'
          DataSource = Src_CP02
          TabOrder = 4
        end
        object StaticText9: TStaticText
          Left = 75
          Top = 45
          Width = 36
          Height = 17
          Alignment = taCenter
          AutoSize = False
          BorderStyle = sbsSunken
          Caption = 'Cav'
          Color = clMoneyGreen
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 13
        end
        object StaticText8: TStaticText
          Left = 38
          Top = 45
          Width = 36
          Height = 17
          Alignment = taCenter
          AutoSize = False
          BorderStyle = sbsSunken
          Caption = 'Ciclo'
          Color = clMoneyGreen
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 14
        end
        object DBEdit9: TDBEdit
          Left = 38
          Top = 62
          Width = 36
          Height = 21
          DataField = 'CP2CICLO'
          DataSource = Src_CP02
          TabOrder = 3
        end
        object DBEdit8: TDBEdit
          Left = 1
          Top = 62
          Width = 36
          Height = 21
          DataField = 'CP2COR'
          DataSource = Src_CP02
          TabOrder = 2
        end
        object StaticText7: TStaticText
          Left = 1
          Top = 45
          Width = 36
          Height = 17
          Alignment = taCenter
          AutoSize = False
          BorderStyle = sbsSunken
          Caption = 'Cor'
          Color = clMoneyGreen
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 15
        end
        object DBEdit5: TDBEdit
          Left = 1
          Top = 21
          Width = 68
          Height = 21
          DataField = 'CP2CODMAQ'
          DataSource = Src_CP02
          TabOrder = 0
          OnExit = DBEdit5Exit
          OnKeyPress = DBEdit5KeyPress
        end
        object DBEdit7: TDBEdit
          Left = 73
          Top = 22
          Width = 328
          Height = 21
          BevelKind = bkFlat
          DataField = 'nommaq'
          DataSource = Src_CP02
          Enabled = False
          TabOrder = 16
        end
        object StaticText6: TStaticText
          Left = 408
          Top = 5
          Width = 309
          Height = 17
          Alignment = taCenter
          AutoSize = False
          BorderStyle = sbsSunken
          Caption = 'Frasco'
          Color = clMoneyGreen
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 17
        end
        object db_cbFrasco: TDBComboBox
          Left = 409
          Top = 23
          Width = 309
          Height = 21
          AutoDropDown = True
          BevelKind = bkSoft
          DataField = 'CP2FRASCO'
          DataSource = Src_CP02
          ItemHeight = 13
          TabOrder = 1
          OnEnter = db_cbFrascoEnter
          OnExit = db_cbFrascoExit
        end
        object StaticText5: TStaticText
          Left = 0
          Top = 3
          Width = 400
          Height = 17
          Alignment = taCenter
          AutoSize = False
          BorderStyle = sbsSunken
          Caption = 'Maquina'
          Color = clMoneyGreen
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 18
        end
        object bbPrensista: TBitBtn
          Left = 2
          Top = 85
          Width = 125
          Height = 22
          Caption = '&Ir Para Prensista'
          TabOrder = 19
          OnClick = bbPrensistaClick
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000120B0000120B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
            3333333333333333333333333333333333333FFF333333333333000333333333
            3333777FFF3FFFFF33330B000300000333337F777F777773F333000E00BFBFB0
            3333777F773333F7F333000E0BFBF0003333777F7F3337773F33000E0FBFBFBF
            0333777F7F3333FF7FFF000E0BFBF0000003777F7F3337777773000E0FBFBFBF
            BFB0777F7F33FFFFFFF7000E0BF000000003777F7FF777777773000000BFB033
            33337777773FF733333333333300033333333333337773333333333333333333
            3333333333333333333333333333333333333333333333333333333333333333
            3333333333333333333333333333333333333333333333333333}
          NumGlyphs = 2
        end
      end
      object ts_pren: TTabSheet
        Caption = '&Prensista'
        ImageIndex = 1
        object DBG_Pren: TDBGrid
          Left = 0
          Top = 0
          Width = 780
          Height = 81
          Align = alClient
          Ctl3D = False
          DataSource = Src_CP02_PREN
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          ReadOnly = True
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          OnExit = DBG_PrenExit
          OnKeyPress = DBG_PrenKeyPress
          Columns = <
            item
              Expanded = False
              FieldName = 'CP2PRENCODMPREN'
              Width = 68
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'nompren'
              Width = 431
              Visible = True
            end>
        end
        object dbn_pren: TDBNavigator
          Left = 0
          Top = 81
          Width = 780
          Height = 27
          DataSource = Src_CP02_PREN
          VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbDelete, nbEdit, nbPost, nbCancel]
          Align = alBottom
          Enabled = False
          TabOrder = 1
        end
      end
      object ts_perdas: TTabSheet
        Caption = 'Perd&as'
        ImageIndex = 2
        object DBG_Perdas: TDBGrid
          Left = 0
          Top = 0
          Width = 780
          Height = 81
          Align = alClient
          Ctl3D = False
          DataSource = Src_CP02_MPER
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clBlue
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          OnExit = DBG_PerdasExit
          OnKeyPress = DBG_PerdasKeyPress
          Columns = <
            item
              Expanded = False
              FieldName = 'CP2MPERCODMPER'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'motivo'
              Visible = True
            end>
        end
        object dbn_perdas: TDBNavigator
          Left = 0
          Top = 81
          Width = 780
          Height = 27
          DataSource = Src_CP02_MPER
          VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbDelete, nbEdit, nbPost, nbCancel]
          Align = alBottom
          Enabled = False
          TabOrder = 1
        end
      end
      object ts_paradas: TTabSheet
        Caption = 'Pa&radas'
        ImageIndex = 3
        object DBG_Par: TDBGrid
          Left = 0
          Top = 0
          Width = 780
          Height = 81
          Align = alClient
          Ctl3D = False
          DataSource = Src_CP02_MPAR
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          OnExit = DBG_ParExit
          OnKeyPress = DBG_ParKeyPress
          Columns = <
            item
              Expanded = False
              FieldName = 'CP2MPARCODMPAR'
              Width = 41
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'motivo'
              Width = 353
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CP2MPARDTHRIPAR'
              Width = 147
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CP2MPARDTHRTPAR'
              Width = 149
              Visible = True
            end>
        end
        object dbn_par: TDBNavigator
          Left = 0
          Top = 81
          Width = 780
          Height = 27
          DataSource = Src_CP02_MPAR
          VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbDelete, nbEdit, nbPost, nbCancel]
          Align = alBottom
          Enabled = False
          TabOrder = 1
        end
      end
    end
  end
  object Qr_CP01: TQuery
    CachedUpdates = True
    BeforeInsert = Qr_CP01BeforeInsert
    BeforeEdit = Qr_CP01BeforeEdit
    AfterPost = Qr_CP01AfterPost
    AfterCancel = Qr_CP01AfterCancel
    AfterDelete = Qr_CP01AfterDelete
    OnCalcFields = Qr_CP01CalcFields
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select * From CADCP01')
    UpdateObject = U_CP01
    Left = 24
    Top = 79
    object Qr_CP01CP1CODEMP: TFloatField
      DisplayLabel = 'Empresa'
      FieldName = 'CP1CODEMP'
      Origin = 'SG_ASSOC.CADCP01.CP1CODEMP'
    end
    object Qr_CP01CP1LOTSEQ: TFloatField
      DisplayLabel = 'Lote Seq'
      FieldName = 'CP1LOTSEQ'
      Origin = 'SG_ASSOC.CADCP01.CP1LOTSEQ'
    end
    object Qr_CP01CP1CHAVE: TFloatField
      DisplayLabel = 'Chave'
      FieldName = 'CP1CHAVE'
      Origin = 'SG_ASSOC.CADCP01.CP1CHAVE'
    end
    object Qr_CP01CP1DATA: TDateTimeField
      DisplayLabel = 'Data'
      FieldName = 'CP1DATA'
      Origin = 'SG_ASSOC.CADCP01.CP1DATA'
    end
    object Qr_CP01CP1TURNO: TStringField
      DisplayLabel = 'Turno'
      FieldName = 'CP1TURNO'
      Origin = 'SG_ASSOC.CADCP01.CP1TURNO'
      Size = 40
    end
    object Qr_CP01CP1REBARBAS: TStringField
      DisplayLabel = 'Rebarbas'
      FieldName = 'CP1REBARBAS'
      Origin = 'SG_ASSOC.CADCP01.CP1REBARBAS'
      Size = 40
    end
    object Qr_CP01CP1DATAINC: TDateTimeField
      DisplayLabel = 'Data e Hora de Inclus'#227'o'
      FieldName = 'CP1DATAINC'
      Origin = 'SG_ASSOC.CADCP01.CP1DATAINC'
    end
    object Qr_CP01CP1USRINC: TFloatField
      DisplayLabel = 'Usu'#225'rio Incluiu'
      FieldName = 'CP1USRINC'
      Origin = 'SG_ASSOC.CADCP01.CP1USRINC'
    end
    object Qr_CP01CP1DATAALT: TDateTimeField
      DisplayLabel = 'Data e Hota de Altera'#231#227'o'
      FieldName = 'CP1DATAALT'
      Origin = 'SG_ASSOC.CADCP01.CP1DATAALT'
    end
    object Qr_CP01CP1USRALT: TFloatField
      DisplayLabel = 'Usu'#225'rio que Alterou'
      FieldName = 'CP1USRALT'
      Origin = 'SG_ASSOC.CADCP01.CP1USRALT'
    end
    object Qr_CP01CP1CODENC: TFloatField
      DisplayLabel = 'C'#243'digo Encarregado'
      FieldName = 'CP1CODENC'
      Origin = 'SG_ASSOC.CADCP01.CP1CODENC'
    end
    object Qr_CP01nomenc: TStringField
      FieldKind = fkCalculated
      FieldName = 'nomenc'
      Size = 40
      Calculated = True
    end
    object Qr_CP01CP1PROTRO: TFloatField
      FieldName = 'CP1PROTRO'
      Origin = 'SG_ASSOC.CADCP01.CP1PROTRO'
    end
  end
  object Qr_CP02: TQuery
    CachedUpdates = True
    BeforeInsert = Qr_CP02BeforeInsert
    AfterInsert = Qr_CP02AfterInsert
    BeforeEdit = Qr_CP02BeforeEdit
    AfterEdit = Qr_CP02AfterEdit
    AfterPost = Qr_CP02AfterPost
    AfterCancel = Qr_CP02AfterCancel
    AfterDelete = Qr_CP02AfterDelete
    OnCalcFields = Qr_CP02CalcFields
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select * from CADCP02')
    UpdateObject = U_CP02
    Left = 200
    Top = 80
    object Qr_CP02CP2CODEMP: TFloatField
      DisplayLabel = 'Empresa'
      FieldName = 'CP2CODEMP'
      Origin = 'SG_ASSOC.CADCP02.CP2CODEMP'
    end
    object Qr_CP02CP2LOTSEQ: TFloatField
      DisplayLabel = 'Lote Seq'
      FieldName = 'CP2LOTSEQ'
      Origin = 'SG_ASSOC.CADCP02.CP2LOTSEQ'
    end
    object Qr_CP02CP2CHAVE: TFloatField
      DisplayLabel = 'Chave'
      FieldName = 'CP2CHAVE'
      Origin = 'SG_ASSOC.CADCP02.CP2CHAVE'
    end
    object Qr_CP02CP2ITEM: TFloatField
      DisplayLabel = #205'tem'
      FieldName = 'CP2ITEM'
      Origin = 'SG_ASSOC.CADCP02.CP2ITEM'
    end
    object Qr_CP02CP2CODMAQ: TFloatField
      DisplayLabel = 'C'#243'd.Maquina'
      FieldName = 'CP2CODMAQ'
      Origin = 'SG_ASSOC.CADCP02.CP2CODMAQ'
    end
    object Qr_CP02CP2FRASCO: TStringField
      DisplayLabel = 'Frasco'
      FieldName = 'CP2FRASCO'
      Origin = 'SG_ASSOC.CADCP02.CP2FRASCO'
      Size = 40
    end
    object Qr_CP02CP2COR: TStringField
      DisplayLabel = 'Cor'
      FieldName = 'CP2COR'
      Origin = 'SG_ASSOC.CADCP02.CP2COR'
      Size = 40
    end
    object Qr_CP02CP2CICLO: TFloatField
      DisplayLabel = 'Ciclo'
      FieldName = 'CP2CICLO'
      Origin = 'SG_ASSOC.CADCP02.CP2CICLO'
    end
    object Qr_CP02CP2CAVIDADE: TFloatField
      DisplayLabel = 'Cavidade'
      FieldName = 'CP2CAVIDADE'
      Origin = 'SG_ASSOC.CADCP02.CP2CAVIDADE'
    end
    object Qr_CP02CP2PRODUCAO: TFloatField
      DisplayLabel = 'Produ'#231#227'o'
      FieldName = 'CP2PRODUCAO'
      Origin = 'SG_ASSOC.CADCP02.CP2PRODUCAO'
    end
    object Qr_CP02CP2PERDA: TFloatField
      DisplayLabel = 'Perda'
      FieldName = 'CP2PERDA'
      Origin = 'SG_ASSOC.CADCP02.CP2PERDA'
    end
    object Qr_CP02CP2HORTRAB: TFloatField
      DisplayLabel = 'Horas Trabalhadas'
      FieldName = 'CP2HORTRAB'
      Origin = 'SG_ASSOC.CADCP02.CP2HORTRAB'
    end
    object Qr_CP02nommaq: TStringField
      DisplayLabel = 'Nome da M'#225'quina'
      FieldKind = fkCalculated
      FieldName = 'nommaq'
      Size = 40
      Calculated = True
    end
    object Qr_CP02CP2DTHRIPAR: TDateTimeField
      DisplayLabel = 'Inicio Parada'
      FieldName = 'CP2DTHRIPAR'
      Origin = 'SG_ASSOC.CADCP02.CP2DTHRIPAR'
      DisplayFormat = 'hh:mm'
      EditMask = '!90:00;1; '
    end
    object Qr_CP02CP2DTHRTPAR: TDateTimeField
      DisplayLabel = 'Termino Parada'
      FieldName = 'CP2DTHRTPAR'
      Origin = 'SG_ASSOC.CADCP02.CP2DTHRTPAR'
      DisplayFormat = 'hh:mm'
      EditMask = '!90:00;1; '
    end
    object Qr_CP02percPerda: TFloatField
      DisplayLabel = '% Perda'
      FieldKind = fkCalculated
      FieldName = 'percPerda'
      Calculated = True
    end
    object Qr_CP02perda: TFloatField
      FieldKind = fkCalculated
      FieldName = 'perda'
      Calculated = True
    end
    object Qr_CP02totperdas: TFloatField
      FieldKind = fkCalculated
      FieldName = 'totperdas'
      Calculated = True
    end
    object Qr_CP02CP2PROTRO: TFloatField
      FieldName = 'CP2PROTRO'
      Origin = 'SG_ASSOC.CADCP02.CP2PROTRO'
    end
  end
  object U_CP01: TUpdateSQL
    ModifySQL.Strings = (
      'update CADCP01'
      'set'
      '  CP1CODEMP = :CP1CODEMP,'
      '  CP1LOTSEQ = :CP1LOTSEQ,'
      '  CP1CHAVE = :CP1CHAVE,'
      '  CP1DATA = :CP1DATA,'
      '  CP1TURNO = :CP1TURNO,'
      '  CP1REBARBAS = :CP1REBARBAS,'
      '  CP1DATAINC = :CP1DATAINC,'
      '  CP1USRINC = :CP1USRINC,'
      '  CP1DATAALT = :CP1DATAALT,'
      '  CP1USRALT = :CP1USRALT,'
      '  CP1CODENC = :CP1CODENC,'
      '  CP1PROTRO = :CP1PROTRO'
      'where'
      '  CP1CODEMP = :OLD_CP1CODEMP and'
      '  CP1LOTSEQ = :OLD_CP1LOTSEQ and'
      '  CP1CHAVE = :OLD_CP1CHAVE')
    InsertSQL.Strings = (
      'insert into CADCP01'
      
        '  (CP1CODEMP, CP1LOTSEQ, CP1CHAVE, CP1DATA, CP1TURNO, CP1REBARBA' +
        'S, CP1DATAINC, '
      '   CP1USRINC, CP1DATAALT, CP1USRALT, CP1CODENC, CP1PROTRO)'
      'values'
      
        '  (:CP1CODEMP, :CP1LOTSEQ, :CP1CHAVE, :CP1DATA, :CP1TURNO, :CP1R' +
        'EBARBAS, '
      
        '   :CP1DATAINC, :CP1USRINC, :CP1DATAALT, :CP1USRALT, :CP1CODENC,' +
        ' :CP1PROTRO)')
    DeleteSQL.Strings = (
      'delete from CADCP01'
      'where'
      '  CP1CODEMP = :OLD_CP1CODEMP and'
      '  CP1LOTSEQ = :OLD_CP1LOTSEQ and'
      '  CP1CHAVE = :OLD_CP1CHAVE')
    Left = 69
    Top = 79
  end
  object U_CP02: TUpdateSQL
    ModifySQL.Strings = (
      'update CADCP02'
      'set'
      '  CP2CODEMP = :CP2CODEMP,'
      '  CP2LOTSEQ = :CP2LOTSEQ,'
      '  CP2CHAVE = :CP2CHAVE,'
      '  CP2ITEM = :CP2ITEM,'
      '  CP2CODMAQ = :CP2CODMAQ,'
      '  CP2FRASCO = :CP2FRASCO,'
      '  CP2COR = :CP2COR,'
      '  CP2CICLO = :CP2CICLO,'
      '  CP2CAVIDADE = :CP2CAVIDADE,'
      '  CP2PRODUCAO = :CP2PRODUCAO,'
      '  CP2PERDA = :CP2PERDA,'
      '  CP2HORTRAB = :CP2HORTRAB,'
      '  CP2DTHRIPAR = :CP2DTHRIPAR,'
      '  CP2DTHRTPAR = :CP2DTHRTPAR,'
      '  CP2PROTRO = :CP2PROTRO'
      'where'
      '  CP2CODEMP = :OLD_CP2CODEMP and'
      '  CP2LOTSEQ = :OLD_CP2LOTSEQ and'
      '  CP2CHAVE = :OLD_CP2CHAVE and'
      '  CP2ITEM = :OLD_CP2ITEM')
    InsertSQL.Strings = (
      'insert into CADCP02'
      
        '  (CP2CODEMP, CP2LOTSEQ, CP2CHAVE, CP2ITEM, CP2CODMAQ, CP2FRASCO' +
        ', CP2COR, '
      
        '   CP2CICLO, CP2CAVIDADE, CP2PRODUCAO, CP2PERDA, CP2HORTRAB, CP2' +
        'DTHRIPAR, '
      '   CP2DTHRTPAR, CP2PROTRO)'
      'values'
      
        '  (:CP2CODEMP, :CP2LOTSEQ, :CP2CHAVE, :CP2ITEM, :CP2CODMAQ, :CP2' +
        'FRASCO, '
      
        '   :CP2COR, :CP2CICLO, :CP2CAVIDADE, :CP2PRODUCAO, :CP2PERDA, :C' +
        'P2HORTRAB, '
      '   :CP2DTHRIPAR, :CP2DTHRTPAR, :CP2PROTRO)')
    DeleteSQL.Strings = (
      'delete from CADCP02'
      'where'
      '  CP2CODEMP = :OLD_CP2CODEMP and'
      '  CP2LOTSEQ = :OLD_CP2LOTSEQ and'
      '  CP2CHAVE = :OLD_CP2CHAVE and'
      '  CP2ITEM = :OLD_CP2ITEM')
    Left = 248
    Top = 80
  end
  object Src_CP01: TDataSource
    DataSet = Qr_CP01
    OnDataChange = Src_CP01DataChange
    Left = 121
    Top = 79
  end
  object Src_CP02: TDataSource
    DataSet = Qr_CP02
    OnDataChange = Src_CP02DataChange
    Left = 296
    Top = 80
  end
  object Qr_CP02_MPER: TQuery
    CachedUpdates = True
    BeforeInsert = Qr_CP02_MPERBeforeInsert
    AfterInsert = Qr_CP02_MPERAfterInsert
    BeforeEdit = Qr_CP02_MPERBeforeEdit
    BeforePost = Qr_CP02_MPERBeforePost
    AfterPost = Qr_CP02_MPERAfterPost
    OnCalcFields = Qr_CP02_MPERCalcFields
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select * from CADCP02_MPER where '
      'CP2MPERCODEMP is null')
    UpdateObject = U_CP02_MPER
    Left = 34
    Top = 291
    object Qr_CP02_MPERCP2MPERSEQ: TFloatField
      FieldName = 'CP2MPERSEQ'
      Origin = 'SG_ASSOC.CADCP02_MPER.CP2MPERSEQ'
    end
    object Qr_CP02_MPERCP2MPERCODMPER: TFloatField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CP2MPERCODMPER'
      Origin = 'SG_ASSOC.CADCP02_MPER.CP2MPERCODMPER'
    end
    object Qr_CP02_MPERCP2MPERNOMPER: TStringField
      DisplayLabel = 'Motivo'
      FieldName = 'CP2MPERNOMPER'
      Origin = 'SG_ASSOC.CADCP02_MPER.CP2MPERNOMPER'
      Size = 40
    end
    object Qr_CP02_MPERmotivo: TStringField
      DisplayLabel = 'Motivo'
      FieldKind = fkCalculated
      FieldName = 'motivo'
      Size = 40
      Calculated = True
    end
    object Qr_CP02_MPERCP2MPERCODEMP: TFloatField
      FieldName = 'CP2MPERCODEMP'
      Origin = 'SG_ASSOC.CADCP02_MPER.CP2MPERCODEMP'
    end
    object Qr_CP02_MPERCP2MPERLOTSEQ: TFloatField
      FieldName = 'CP2MPERLOTSEQ'
      Origin = 'SG_ASSOC.CADCP02_MPER.CP2MPERLOTSEQ'
    end
    object Qr_CP02_MPERCP2MPERCHAVE: TFloatField
      FieldName = 'CP2MPERCHAVE'
      Origin = 'SG_ASSOC.CADCP02_MPER.CP2MPERCHAVE'
    end
    object Qr_CP02_MPERCP2MPERCODMAQ: TFloatField
      FieldName = 'CP2MPERCODMAQ'
      Origin = 'SG_ASSOC.CADCP02_MPER.CP2MPERCODMAQ'
    end
    object Qr_CP02_MPERCP2MPERPROTRO: TFloatField
      FieldName = 'CP2MPERPROTRO'
      Origin = 'SG_ASSOC.CADCP02_MPER.CP2MPERPROTRO'
    end
  end
  object U_CP02_MPER: TUpdateSQL
    ModifySQL.Strings = (
      'update CADCP02_MPER'
      'set'
      '  CP2MPERCODEMP = :CP2MPERCODEMP,'
      '  CP2MPERLOTSEQ = :CP2MPERLOTSEQ,'
      '  CP2MPERSEQ = :CP2MPERSEQ,'
      '  CP2MPERCODMPER = :CP2MPERCODMPER,'
      '  CP2MPERNOMPER = :CP2MPERNOMPER,'
      '  CP2MPERCHAVE = :CP2MPERCHAVE,'
      '  CP2MPERCODMAQ = :CP2MPERCODMAQ,'
      '  CP2MPERPROTRO = :CP2MPERPROTRO'
      'where'
      '  CP2MPERCODEMP = :OLD_CP2MPERCODEMP and'
      '  CP2MPERLOTSEQ = :OLD_CP2MPERLOTSEQ and'
      '  CP2MPERSEQ = :OLD_CP2MPERSEQ')
    InsertSQL.Strings = (
      'insert into CADCP02_MPER'
      
        '  (CP2MPERCODEMP, CP2MPERLOTSEQ, CP2MPERSEQ, CP2MPERCODMPER, CP2' +
        'MPERNOMPER, '
      '   CP2MPERCHAVE, CP2MPERCODMAQ, CP2MPERPROTRO)'
      'values'
      
        '  (:CP2MPERCODEMP, :CP2MPERLOTSEQ, :CP2MPERSEQ, :CP2MPERCODMPER,' +
        ' :CP2MPERNOMPER, '
      '   :CP2MPERCHAVE, :CP2MPERCODMAQ, :CP2MPERPROTRO)')
    DeleteSQL.Strings = (
      'delete from CADCP02_MPER'
      'where'
      '  CP2MPERCODEMP = :OLD_CP2MPERCODEMP and'
      '  CP2MPERLOTSEQ = :OLD_CP2MPERLOTSEQ and'
      '  CP2MPERSEQ = :OLD_CP2MPERSEQ')
    Left = 116
    Top = 291
  end
  object Src_CP02_MPER: TDataSource
    DataSet = Qr_CP02_MPER
    Left = 201
    Top = 291
  end
  object Qr_CP02_MPAR: TQuery
    CachedUpdates = True
    BeforeInsert = Qr_CP02_MPARBeforeInsert
    AfterInsert = Qr_CP02_MPARAfterInsert
    BeforeEdit = Qr_CP02_MPARBeforeEdit
    BeforePost = Qr_CP02_MPARBeforePost
    AfterPost = Qr_CP02_MPARAfterPost
    OnCalcFields = Qr_CP02_MPARCalcFields
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select * from CADCP02_MPAR where '
      'CP2MPARCODEMP is null')
    UpdateObject = U_CP02_MPAR
    Left = 335
    Top = 291
    object Qr_CP02_MPARCP2MPARCODEMP: TFloatField
      FieldName = 'CP2MPARCODEMP'
      Origin = 'SG_ASSOC.CADCP02_MPAR.CP2MPARCODEMP'
    end
    object Qr_CP02_MPARCP2MPARLOTSEQ: TFloatField
      FieldName = 'CP2MPARLOTSEQ'
      Origin = 'SG_ASSOC.CADCP02_MPAR.CP2MPARLOTSEQ'
    end
    object Qr_CP02_MPARCP2MPARSEQ: TFloatField
      FieldName = 'CP2MPARSEQ'
      Origin = 'SG_ASSOC.CADCP02_MPAR.CP2MPARSEQ'
    end
    object Qr_CP02_MPARCP2MPARCODMPAR: TFloatField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CP2MPARCODMPAR'
      Origin = 'SG_ASSOC.CADCP02_MPAR.CP2MPARCODMPAR'
    end
    object Qr_CP02_MPARCP2MPARNOMPAR: TStringField
      FieldName = 'CP2MPARNOMPAR'
      Origin = 'SG_ASSOC.CADCP02_MPAR.CP2MPARNOMPAR'
      Size = 40
    end
    object Qr_CP02_MPARCP2MPARDTHRTPAR: TDateTimeField
      DisplayLabel = 'Hora Fim'
      FieldName = 'CP2MPARDTHRTPAR'
      Origin = 'SG_ASSOC.CADCP02_MPAR.CP2MPARDTHRTPAR'
      DisplayFormat = 'hh:nn'
      EditMask = '!90:00;1; '
    end
    object Qr_CP02_MPARCP2MPARCHAVE: TFloatField
      FieldName = 'CP2MPARCHAVE'
      Origin = 'SG_ASSOC.CADCP02_MPAR.CP2MPARCHAVE'
    end
    object Qr_CP02_MPARCP2MPARDTHRIPAR: TDateTimeField
      DisplayLabel = 'Hora Ini'
      FieldName = 'CP2MPARDTHRIPAR'
      Origin = 'SG_ASSOC.CADCP02_MPAR.CP2MPARDTHRIPAR'
      DisplayFormat = 'hh:nn'
      EditMask = '!90:00;1; '
    end
    object Qr_CP02_MPARmotivo: TStringField
      DisplayLabel = 'Motivo'
      FieldKind = fkCalculated
      FieldName = 'motivo'
      Size = 40
      Calculated = True
    end
    object Qr_CP02_MPARCP2MPARCODMAQ: TFloatField
      FieldName = 'CP2MPARCODMAQ'
      Origin = 'SG_ASSOC.CADCP02_MPAR.CP2MPARCODMAQ'
    end
    object Qr_CP02_MPARCP2MPARPROTRO: TFloatField
      FieldName = 'CP2MPARPROTRO'
      Origin = 'SG_ASSOC.CADCP02_MPAR.CP2MPARPROTRO'
    end
  end
  object U_CP02_MPAR: TUpdateSQL
    ModifySQL.Strings = (
      'update CADCP02_MPAR'
      'set'
      '  CP2MPARCODEMP = :CP2MPARCODEMP,'
      '  CP2MPARLOTSEQ = :CP2MPARLOTSEQ,'
      '  CP2MPARSEQ = :CP2MPARSEQ,'
      '  CP2MPARCODMPAR = :CP2MPARCODMPAR,'
      '  CP2MPARNOMPAR = :CP2MPARNOMPAR,'
      '  CP2MPARDTHRTPAR = :CP2MPARDTHRTPAR,'
      '  CP2MPARCHAVE = :CP2MPARCHAVE,'
      '  CP2MPARDTHRIPAR = :CP2MPARDTHRIPAR,'
      '  CP2MPARCODMAQ = :CP2MPARCODMAQ,'
      '  CP2MPARPROTRO = :CP2MPARPROTRO'
      'where'
      '  CP2MPARCODEMP = :OLD_CP2MPARCODEMP and'
      '  CP2MPARLOTSEQ = :OLD_CP2MPARLOTSEQ and'
      '  CP2MPARSEQ = :OLD_CP2MPARSEQ and'
      '  CP2MPARCODMPAR = :OLD_CP2MPARCODMPAR')
    InsertSQL.Strings = (
      'insert into CADCP02_MPAR'
      
        '  (CP2MPARCODEMP, CP2MPARLOTSEQ, CP2MPARSEQ, CP2MPARCODMPAR, CP2' +
        'MPARNOMPAR, '
      
        '   CP2MPARDTHRTPAR, CP2MPARCHAVE, CP2MPARDTHRIPAR, CP2MPARCODMAQ' +
        ', CP2MPARPROTRO)'
      'values'
      
        '  (:CP2MPARCODEMP, :CP2MPARLOTSEQ, :CP2MPARSEQ, :CP2MPARCODMPAR,' +
        ' :CP2MPARNOMPAR, '
      
        '   :CP2MPARDTHRTPAR, :CP2MPARCHAVE, :CP2MPARDTHRIPAR, :CP2MPARCO' +
        'DMAQ, :CP2MPARPROTRO)')
    DeleteSQL.Strings = (
      'delete from CADCP02_MPAR'
      'where'
      '  CP2MPARCODEMP = :OLD_CP2MPARCODEMP and'
      '  CP2MPARLOTSEQ = :OLD_CP2MPARLOTSEQ and'
      '  CP2MPARSEQ = :OLD_CP2MPARSEQ and'
      '  CP2MPARCODMPAR = :OLD_CP2MPARCODMPAR')
    Left = 420
    Top = 291
  end
  object Src_CP02_MPAR: TDataSource
    DataSet = Qr_CP02_MPAR
    Left = 508
    Top = 291
  end
  object Qr_CP02_PREN: TQuery
    CachedUpdates = True
    BeforeInsert = Qr_CP02_PRENBeforeInsert
    AfterInsert = Qr_CP02_PRENAfterInsert
    BeforeEdit = Qr_CP02_PRENBeforeEdit
    BeforePost = Qr_CP02_PRENBeforePost
    AfterPost = Qr_CP02_PRENAfterPost
    OnCalcFields = Qr_CP02_PRENCalcFields
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select * from CADCP02_PREN where '
      'CP2PRENCODEMP is null')
    UpdateObject = U_CP02_PREN
    Left = 401
    Top = 80
    object Qr_CP02_PRENCP2PRENCODEMP: TFloatField
      FieldName = 'CP2PRENCODEMP'
      Origin = 'SG_ASSOC.CADCP02_PREN.CP2PRENCODEMP'
    end
    object Qr_CP02_PRENCP2PRENLOTSEQ: TFloatField
      FieldName = 'CP2PRENLOTSEQ'
      Origin = 'SG_ASSOC.CADCP02_PREN.CP2PRENLOTSEQ'
    end
    object Qr_CP02_PRENCP2PRENCHAVE: TFloatField
      FieldName = 'CP2PRENCHAVE'
      Origin = 'SG_ASSOC.CADCP02_PREN.CP2PRENCHAVE'
    end
    object Qr_CP02_PRENCP2PRENCODMPREN: TFloatField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CP2PRENCODMPREN'
      Origin = 'SG_ASSOC.CADCP02_PREN.CP2PRENCODMPREN'
    end
    object Qr_CP02_PRENnompren: TStringField
      DisplayLabel = 'Nome Prensista'
      FieldKind = fkCalculated
      FieldName = 'nompren'
      Size = 40
      Calculated = True
    end
    object Qr_CP02_PRENCP2PRENCODMAQ: TFloatField
      FieldName = 'CP2PRENCODMAQ'
      Origin = 'SG_ASSOC.CADCP02_PREN.CP2PRENCODMAQ'
    end
    object Qr_CP02_PRENCP2PRENSEQ: TFloatField
      FieldName = 'CP2PRENSEQ'
      Origin = 'SG_ASSOC.CADCP02_PREN.CP2PRENSEQ'
    end
    object Qr_CP02_PRENCP2PRENNOMPREN: TStringField
      FieldName = 'CP2PRENNOMPREN'
      Origin = 'SG_ASSOC.CADCP02_PREN.CP2PRENNOMPREN'
      Size = 40
    end
    object Qr_CP02_PRENCP2PRENPROTRO: TFloatField
      FieldName = 'CP2PRENPROTRO'
      Origin = 'SG_ASSOC.CADCP02_PREN.CP2PRENPROTRO'
    end
  end
  object U_CP02_PREN: TUpdateSQL
    ModifySQL.Strings = (
      'update CADCP02_PREN'
      'set'
      '  CP2PRENCODEMP = :CP2PRENCODEMP,'
      '  CP2PRENLOTSEQ = :CP2PRENLOTSEQ,'
      '  CP2PRENCHAVE = :CP2PRENCHAVE,'
      '  CP2PRENSEQ = :CP2PRENSEQ,'
      '  CP2PRENCODMPREN = :CP2PRENCODMPREN,'
      '  CP2PRENCODMAQ = :CP2PRENCODMAQ,'
      '  CP2PRENNOMPREN = :CP2PRENNOMPREN,'
      '  CP2PRENPROTRO = :CP2PRENPROTRO'
      'where'
      '  CP2PRENCODEMP = :OLD_CP2PRENCODEMP and'
      '  CP2PRENLOTSEQ = :OLD_CP2PRENLOTSEQ and'
      '  CP2PRENCHAVE = :OLD_CP2PRENCHAVE and'
      '  CP2PRENSEQ = :OLD_CP2PRENSEQ')
    InsertSQL.Strings = (
      'insert into CADCP02_PREN'
      
        '  (CP2PRENCODEMP, CP2PRENLOTSEQ, CP2PRENCHAVE, CP2PRENSEQ, CP2PR' +
        'ENCODMPREN, '
      '   CP2PRENCODMAQ, CP2PRENNOMPREN, CP2PRENPROTRO)'
      'values'
      
        '  (:CP2PRENCODEMP, :CP2PRENLOTSEQ, :CP2PRENCHAVE, :CP2PRENSEQ, :' +
        'CP2PRENCODMPREN, '
      '   :CP2PRENCODMAQ, :CP2PRENNOMPREN, :CP2PRENPROTRO)')
    DeleteSQL.Strings = (
      'delete from CADCP02_PREN'
      'where'
      '  CP2PRENCODEMP = :OLD_CP2PRENCODEMP and'
      '  CP2PRENLOTSEQ = :OLD_CP2PRENLOTSEQ and'
      '  CP2PRENCHAVE = :OLD_CP2PRENCHAVE and'
      '  CP2PRENSEQ = :OLD_CP2PRENSEQ')
    Left = 483
    Top = 81
  end
  object Src_CP02_PREN: TDataSource
    DataSet = Qr_CP02_PREN
    Left = 570
    Top = 80
  end
end
