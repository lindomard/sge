object Frm_Prod_Classificar: TFrm_Prod_Classificar
  Left = 109
  Top = 130
  Width = 1071
  Height = 541
  Caption = 'Classificar Produtos'
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
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 0
    Top = 0
    Width = 1055
    Height = 34
    Align = alTop
    Alignment = taCenter
    Caption = 'Classificar Produtos'
    Color = 16777145
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -30
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentColor = False
    ParentFont = False
  end
  object Panel1: TPanel
    Left = 0
    Top = 34
    Width = 1055
    Height = 69
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    object Label2: TLabel
      Left = 23
      Top = 8
      Width = 82
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Novo Grupo:'
    end
    object Label3: TLabel
      Left = 349
      Top = 8
      Width = 104
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Sub-Grupo/Ramo:'
    end
    object Label4: TLabel
      Left = 694
      Top = 8
      Width = 104
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Tipo:'
    end
    object Label5: TLabel
      Left = 23
      Top = 26
      Width = 82
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'C'#243'd.Controle:'
    end
    object Label6: TLabel
      Left = 371
      Top = 26
      Width = 82
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Departamento:'
    end
    object Label7: TLabel
      Left = 715
      Top = 26
      Width = 82
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'C'#243'd.Fornec:'
    end
    object Label8: TLabel
      Left = 23
      Top = 44
      Width = 82
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Marca:'
    end
    object Label9: TLabel
      Left = 373
      Top = 46
      Width = 82
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'C'#243'digo NCM:'
    end
    object Label10: TLabel
      Left = 715
      Top = 44
      Width = 82
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Se'#231#227'o:'
    end
    object edt_codgru: TEdit
      Left = 106
      Top = 5
      Width = 51
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 0
      OnExit = edt_codgruExit
      OnKeyPress = edt_codgruKeyPress
    end
    object edt_nomgru: TEdit
      Left = 156
      Top = 5
      Width = 183
      Height = 19
      TabStop = False
      Color = 11796403
      Ctl3D = False
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 1
      Text = 'N'#227'o Alterar'
    end
    object edt_codram: TEdit
      Left = 456
      Top = 5
      Width = 51
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 2
      OnExit = edt_codramExit
      OnKeyPress = edt_codramKeyPress
    end
    object edt_nomram: TEdit
      Left = 506
      Top = 5
      Width = 183
      Height = 19
      TabStop = False
      Color = 11796403
      Ctl3D = False
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 3
      Text = 'N'#227'o Alterar'
    end
    object edt_codtip: TEdit
      Left = 800
      Top = 5
      Width = 51
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 4
      OnExit = edt_codtipExit
      OnKeyPress = edt_codtipKeyPress
    end
    object edt_nomtip: TEdit
      Left = 850
      Top = 5
      Width = 183
      Height = 19
      TabStop = False
      Color = 11796403
      Ctl3D = False
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 5
      Text = 'N'#227'o Alterar'
    end
    object edt_codcon: TEdit
      Left = 106
      Top = 23
      Width = 51
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 6
      OnExit = edt_codconExit
      OnKeyPress = edt_codconKeyPress
    end
    object edt_nomcon: TEdit
      Left = 156
      Top = 23
      Width = 183
      Height = 19
      TabStop = False
      Color = 11796403
      Ctl3D = False
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 7
      Text = 'N'#227'o Alterar'
    end
    object edt_coddep: TEdit
      Left = 456
      Top = 23
      Width = 51
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 8
      OnExit = edt_coddepExit
      OnKeyPress = edt_coddepKeyPress
    end
    object edt_nomdep: TEdit
      Left = 506
      Top = 23
      Width = 183
      Height = 19
      TabStop = False
      Color = 11796403
      Ctl3D = False
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 9
      Text = 'N'#227'o Alterar'
    end
    object edt_codfor: TEdit
      Left = 800
      Top = 23
      Width = 51
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 10
      OnExit = edt_codforExit
      OnKeyPress = edt_codforKeyPress
    end
    object edt_nomfor: TEdit
      Left = 850
      Top = 23
      Width = 183
      Height = 19
      TabStop = False
      Color = 11796403
      Ctl3D = False
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 11
      Text = 'N'#227'o Alterar'
    end
    object edt_codmarca: TEdit
      Left = 106
      Top = 41
      Width = 51
      Height = 19
      Ctl3D = False
      MaxLength = 40
      ParentCtl3D = False
      TabOrder = 12
      OnExit = edt_codmarcaExit
    end
    object edt_nommarca: TEdit
      Left = 156
      Top = 41
      Width = 183
      Height = 19
      TabStop = False
      Color = 11796403
      Ctl3D = False
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 13
      Text = 'N'#227'o Alterar'
    end
    object edt_codncm: TEdit
      Left = 456
      Top = 41
      Width = 51
      Height = 19
      Ctl3D = False
      MaxLength = 8
      ParentCtl3D = False
      TabOrder = 14
      OnExit = edt_codncmExit
    end
    object edt_nomncm: TEdit
      Left = 506
      Top = 41
      Width = 183
      Height = 19
      TabStop = False
      Color = 11796403
      Ctl3D = False
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 15
      Text = 'N'#227'o Alterar'
    end
    object edt_codsecao: TEdit
      Left = 800
      Top = 41
      Width = 51
      Height = 19
      Ctl3D = False
      MaxLength = 10
      ParentCtl3D = False
      TabOrder = 16
      OnExit = edt_codsecaoExit
    end
    object edt_nomsecao: TEdit
      Left = 850
      Top = 41
      Width = 183
      Height = 19
      TabStop = False
      Color = 11796403
      Ctl3D = False
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 17
      Text = 'N'#227'o Alterar'
    end
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 103
    Width = 1055
    Height = 48
    Align = alTop
    Caption = 'Criterito da Listagem:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    object Label11: TLabel
      Left = 10
      Top = 20
      Width = 178
      Height = 13
      Caption = 'Somente que come'#231'arem com :'
    end
    object edt_ini_nome: TEdit
      Left = 192
      Top = 16
      Width = 249
      Height = 21
      TabOrder = 0
    end
    object bbAplicar: TBitBtn
      Left = 461
      Top = 12
      Width = 150
      Height = 24
      Cursor = crHandPoint
      Hint = 'Seleciona Registros de Acordo com as'#13#10'Op'#231#245'es Digitadas'
      Caption = '&Listar'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnClick = bbAplicarClick
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
    object bbSair: TBitBtn
      Left = 893
      Top = 11
      Width = 150
      Height = 25
      Cursor = crHandPoint
      Hint = 'Fecha Este Formul'#225'rio'#13#10'e Volta ao Menu Principal'
      Caption = '&Sair'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
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
    Top = 151
    Width = 1055
    Height = 41
    Align = alTop
    Caption = 'Filtrar:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    object Label12: TLabel
      Left = 16
      Top = 16
      Width = 94
      Height = 13
      Caption = 'Filtrar Registros:'
    end
    object sbn_marcar: TSpeedButton
      Left = 275
      Top = 8
      Width = 137
      Height = 22
      Caption = 'Marcar Todos'
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
      OnClick = sbn_marcarClick
    end
    object sbn_desmarcar: TSpeedButton
      Left = 427
      Top = 8
      Width = 137
      Height = 22
      Caption = 'Desmarcar Todos'
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
      OnClick = sbn_desmarcarClick
    end
    object sbn_Atualizar: TSpeedButton
      Left = 911
      Top = 8
      Width = 137
      Height = 22
      Caption = 'Atualizar Produtos'
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
      OnClick = sbn_AtualizarClick
    end
    object cb_filtros: TComboBox
      Left = 115
      Top = 12
      Width = 145
      Height = 21
      ItemHeight = 13
      ItemIndex = 2
      Sorted = True
      TabOrder = 0
      Text = 'Todos'
      OnClick = cb_filtrosClick
      Items.Strings = (
        'Nao Selecionados'
        'Selecionados'
        'Todos')
    end
    object Edit1: TEdit
      Left = 576
      Top = 9
      Width = 111
      Height = 19
      TabStop = False
      Color = 11796403
      Ctl3D = False
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 1
      Text = 'Totais: Marcados:'
    end
    object Edt_QtdMarc: TEdit
      Left = 686
      Top = 9
      Width = 51
      Height = 19
      TabStop = False
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 2
      OnExit = edt_codsecaoExit
    end
    object Edit2: TEdit
      Left = 736
      Top = 9
      Width = 111
      Height = 19
      TabStop = False
      Color = 11796403
      Ctl3D = False
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 3
      Text = 'N'#227'o Marcado:'
    end
    object edt_naoMarcado: TEdit
      Left = 847
      Top = 9
      Width = 51
      Height = 19
      TabStop = False
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 4
      OnExit = edt_codsecaoExit
    end
  end
  object GroupBox3: TGroupBox
    Left = 0
    Top = 192
    Width = 1055
    Height = 179
    Align = alClient
    Caption = 'Listagem:'
    TabOrder = 3
    object DBGrid_Pro: TDBGrid
      Left = 2
      Top = 15
      Width = 1051
      Height = 162
      Align = alClient
      DataSource = Src_Pro
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnColExit = DBGrid_ProColExit
      OnDrawColumnCell = DBGrid_ProDrawColumnCell
      OnDblClick = DBGrid_ProDblClick
      OnExit = DBGrid_ProExit
      OnKeyPress = DBGrid_ProKeyPress
      Columns = <
        item
          Expanded = False
          FieldName = 'SEL'
          Width = 49
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PDCODPRO'
          Width = 69
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PDNOME'
          Width = 487
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PDMARCA'
          Visible = True
        end>
    end
    object DBCheckBox1: TDBCheckBox
      Left = 592
      Top = 96
      Width = 97
      Height = 17
      Caption = 'DBCheckBox1'
      DataField = 'SEL'
      DataSource = Src_Pro
      TabOrder = 1
      ValueChecked = '0'
      ValueUnchecked = '1'
      Visible = False
      OnClick = DBCheckBox1Click
      OnExit = DBCheckBox1Exit
    end
  end
  object GroupBox4: TGroupBox
    Left = 0
    Top = 371
    Width = 1055
    Height = 132
    Align = alBottom
    Caption = 'Informa'#231#245'es:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
    object Label13: TLabel
      Left = 5
      Top = 18
      Width = 88
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Dados Atuais:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label14: TLabel
      Left = 92
      Top = 18
      Width = 82
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Grupo:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label15: TLabel
      Left = 388
      Top = 18
      Width = 103
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Sub-Grupo/Ramo:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label16: TLabel
      Left = 724
      Top = 18
      Width = 103
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Tipo:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label17: TLabel
      Left = 5
      Top = 35
      Width = 88
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Dados  Novos:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label18: TLabel
      Left = 91
      Top = 35
      Width = 82
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Grupo:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label19: TLabel
      Left = 388
      Top = 35
      Width = 103
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Sub-Grupo/Ramo:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label20: TLabel
      Left = 724
      Top = 35
      Width = 103
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Tipo:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label21: TLabel
      Left = 5
      Top = 53
      Width = 88
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Dados Atuais:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label22: TLabel
      Left = 92
      Top = 53
      Width = 82
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Controle:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label23: TLabel
      Left = 388
      Top = 53
      Width = 103
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Departamento:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label24: TLabel
      Left = 724
      Top = 53
      Width = 103
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'C'#243'd. Fornec:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label25: TLabel
      Left = 5
      Top = 70
      Width = 88
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Dados  Novos:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label26: TLabel
      Left = 91
      Top = 70
      Width = 82
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Controle:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label27: TLabel
      Left = 388
      Top = 70
      Width = 103
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Departamento:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label28: TLabel
      Left = 724
      Top = 70
      Width = 103
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'C'#243'd. Fornec:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label29: TLabel
      Left = 6
      Top = 88
      Width = 88
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Dados Atuais:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label30: TLabel
      Left = 93
      Top = 88
      Width = 82
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Marca:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label31: TLabel
      Left = 388
      Top = 88
      Width = 103
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'C'#243'digo NCM:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label32: TLabel
      Left = 725
      Top = 88
      Width = 103
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Se'#231#227'o:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label33: TLabel
      Left = 6
      Top = 105
      Width = 88
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Dados  Novos:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label34: TLabel
      Left = 92
      Top = 105
      Width = 82
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Marca:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label35: TLabel
      Left = 389
      Top = 105
      Width = 103
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'C'#243'digo NCM:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label36: TLabel
      Left = 725
      Top = 105
      Width = 103
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Se'#231#227'o:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBEdit1: TDBEdit
      Left = 176
      Top = 16
      Width = 41
      Height = 19
      TabStop = False
      Ctl3D = False
      DataField = 'PDCODGRU'
      DataSource = Src_Pro
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
    end
    object DBEdit2: TDBEdit
      Left = 216
      Top = 16
      Width = 163
      Height = 19
      TabStop = False
      Color = 11796403
      Ctl3D = False
      DataField = 'PDNOMGRU'
      DataSource = Src_Pro
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 1
    end
    object DBEdit3: TDBEdit
      Left = 492
      Top = 16
      Width = 41
      Height = 19
      TabStop = False
      Ctl3D = False
      DataField = 'PDCODRAM'
      DataSource = Src_Pro
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 2
    end
    object DBEdit4: TDBEdit
      Left = 532
      Top = 16
      Width = 163
      Height = 19
      TabStop = False
      Color = 11796403
      Ctl3D = False
      DataField = 'PDNOMRAM'
      DataSource = Src_Pro
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 3
    end
    object DBEdit5: TDBEdit
      Left = 828
      Top = 16
      Width = 41
      Height = 19
      TabStop = False
      Ctl3D = False
      DataField = 'PDCODTIP'
      DataSource = Src_Pro
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 4
    end
    object DBEdit6: TDBEdit
      Left = 868
      Top = 16
      Width = 163
      Height = 19
      TabStop = False
      Color = 11796403
      Ctl3D = False
      DataField = 'PDNOMTIP'
      DataSource = Src_Pro
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 5
    end
    object DBEdit7: TDBEdit
      Left = 176
      Top = 33
      Width = 41
      Height = 19
      TabStop = False
      Ctl3D = False
      DataField = 'novo_codgru'
      DataSource = Src_Pro
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 6
    end
    object DBEdit8: TDBEdit
      Left = 216
      Top = 33
      Width = 163
      Height = 19
      TabStop = False
      Color = 11796403
      Ctl3D = False
      DataField = 'novo_nomgru'
      DataSource = Src_Pro
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 7
    end
    object DBEdit9: TDBEdit
      Left = 492
      Top = 33
      Width = 41
      Height = 19
      TabStop = False
      Ctl3D = False
      DataField = 'novo_codram'
      DataSource = Src_Pro
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 8
    end
    object DBEdit10: TDBEdit
      Left = 532
      Top = 33
      Width = 163
      Height = 19
      TabStop = False
      Color = 11796403
      Ctl3D = False
      DataField = 'novo_nomram'
      DataSource = Src_Pro
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 9
    end
    object DBEdit11: TDBEdit
      Left = 828
      Top = 33
      Width = 41
      Height = 19
      TabStop = False
      Ctl3D = False
      DataField = 'novo_codtip'
      DataSource = Src_Pro
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 10
    end
    object DBEdit12: TDBEdit
      Left = 868
      Top = 33
      Width = 163
      Height = 19
      TabStop = False
      Color = 11796403
      Ctl3D = False
      DataField = 'novo_nomtip'
      DataSource = Src_Pro
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 11
    end
    object DBEdit13: TDBEdit
      Left = 176
      Top = 51
      Width = 41
      Height = 19
      TabStop = False
      Ctl3D = False
      DataField = 'PDCODCON'
      DataSource = Src_Pro
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 12
    end
    object DBEdit14: TDBEdit
      Left = 216
      Top = 51
      Width = 163
      Height = 19
      TabStop = False
      Color = 11796403
      Ctl3D = False
      DataField = 'PDNOMCON'
      DataSource = Src_Pro
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 13
    end
    object DBEdit15: TDBEdit
      Left = 492
      Top = 51
      Width = 41
      Height = 19
      TabStop = False
      Ctl3D = False
      DataField = 'PDCODDEP'
      DataSource = Src_Pro
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 14
    end
    object DBEdit16: TDBEdit
      Left = 532
      Top = 51
      Width = 163
      Height = 19
      TabStop = False
      Color = 11796403
      Ctl3D = False
      DataField = 'PDNOMDEP'
      DataSource = Src_Pro
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 15
    end
    object DBEdit17: TDBEdit
      Left = 828
      Top = 51
      Width = 41
      Height = 19
      TabStop = False
      Ctl3D = False
      DataField = 'PDCODFOR'
      DataSource = Src_Pro
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 16
    end
    object DBEdit18: TDBEdit
      Left = 868
      Top = 51
      Width = 163
      Height = 19
      TabStop = False
      Color = 11796403
      Ctl3D = False
      DataField = 'PDNOMFOR'
      DataSource = Src_Pro
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 17
    end
    object DBEdit19: TDBEdit
      Left = 176
      Top = 68
      Width = 41
      Height = 19
      TabStop = False
      Ctl3D = False
      DataField = 'novo_codcon'
      DataSource = Src_Pro
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 18
    end
    object DBEdit20: TDBEdit
      Left = 216
      Top = 68
      Width = 163
      Height = 19
      TabStop = False
      Color = 11796403
      Ctl3D = False
      DataField = 'novo_nomcon'
      DataSource = Src_Pro
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 19
    end
    object DBEdit21: TDBEdit
      Left = 492
      Top = 68
      Width = 41
      Height = 19
      TabStop = False
      Ctl3D = False
      DataField = 'novo_coddep'
      DataSource = Src_Pro
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 20
    end
    object DBEdit22: TDBEdit
      Left = 532
      Top = 68
      Width = 163
      Height = 19
      TabStop = False
      Color = 11796403
      Ctl3D = False
      DataField = 'novo_nomdep'
      DataSource = Src_Pro
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 21
    end
    object DBEdit23: TDBEdit
      Left = 828
      Top = 68
      Width = 41
      Height = 19
      TabStop = False
      Ctl3D = False
      DataField = 'novo_codfor'
      DataSource = Src_Pro
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 22
    end
    object DBEdit24: TDBEdit
      Left = 868
      Top = 68
      Width = 163
      Height = 19
      TabStop = False
      Color = 11796403
      Ctl3D = False
      DataField = 'novo_nomfor'
      DataSource = Src_Pro
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 23
    end
    object DBEdit26: TDBEdit
      Left = 216
      Top = 86
      Width = 163
      Height = 19
      TabStop = False
      Color = 11796403
      Ctl3D = False
      DataField = 'PDMARCA'
      DataSource = Src_Pro
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 24
    end
    object DBEdit28: TDBEdit
      Left = 532
      Top = 86
      Width = 163
      Height = 19
      TabStop = False
      Color = 11796403
      Ctl3D = False
      DataField = 'PDCODNCM'
      DataSource = Src_Pro
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 25
    end
    object DBEdit30: TDBEdit
      Left = 868
      Top = 86
      Width = 163
      Height = 19
      TabStop = False
      Color = 11796403
      Ctl3D = False
      DataField = 'PDSECAO'
      DataSource = Src_Pro
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 26
    end
    object DBEdit32: TDBEdit
      Left = 216
      Top = 103
      Width = 163
      Height = 19
      TabStop = False
      Color = 11796403
      Ctl3D = False
      DataField = 'novo_marca'
      DataSource = Src_Pro
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 27
    end
    object DBEdit34: TDBEdit
      Left = 532
      Top = 103
      Width = 163
      Height = 19
      TabStop = False
      Color = 11796403
      Ctl3D = False
      DataField = 'novo_codncm'
      DataSource = Src_Pro
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 28
    end
    object DBEdit36: TDBEdit
      Left = 868
      Top = 103
      Width = 163
      Height = 19
      TabStop = False
      Color = 11796403
      Ctl3D = False
      DataField = 'novo_secao'
      DataSource = Src_Pro
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 29
    end
  end
  object Qr_Pro: TQuery
    CachedUpdates = True
    AfterEdit = Qr_ProAfterEdit
    AfterPost = Qr_ProAfterPost
    OnCalcFields = Qr_ProCalcFields
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'seleCT 0 AS SEL,PDNOME,PDCODPRO'
      ',PDCODGRU,PDNOMGRU,PDCODRAM,PDNOMRAM,PDCODTIP,PDNOMTIP'
      ',PDCODCON,PDNOMCON,PDCODDEP,PDNOMDEP,PDCODFOR,PDNOMFOR'
      ',PDMARCA,PDCLAS AS PDCODNCM,PDSECAO FROM CADPRO')
    UpdateObject = U_Pro
    Left = 544
    Top = 240
    object Qr_ProPDNOME: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'PDNOME'
      Size = 120
    end
    object Qr_ProPDCODPRO: TFloatField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'PDCODPRO'
    end
    object Qr_ProPDCODGRU: TFloatField
      FieldName = 'PDCODGRU'
    end
    object Qr_ProPDNOMGRU: TStringField
      FieldName = 'PDNOMGRU'
      Size = 40
    end
    object Qr_ProPDCODRAM: TFloatField
      FieldName = 'PDCODRAM'
    end
    object Qr_ProPDNOMRAM: TStringField
      FieldName = 'PDNOMRAM'
      Size = 40
    end
    object Qr_ProPDCODTIP: TFloatField
      FieldName = 'PDCODTIP'
    end
    object Qr_ProPDNOMTIP: TStringField
      FieldName = 'PDNOMTIP'
      Size = 40
    end
    object Qr_ProPDCODCON: TFloatField
      FieldName = 'PDCODCON'
    end
    object Qr_ProPDNOMCON: TStringField
      FieldName = 'PDNOMCON'
      Size = 40
    end
    object Qr_ProPDCODDEP: TFloatField
      FieldName = 'PDCODDEP'
    end
    object Qr_ProPDNOMDEP: TStringField
      FieldName = 'PDNOMDEP'
      Size = 40
    end
    object Qr_ProPDCODFOR: TFloatField
      FieldName = 'PDCODFOR'
    end
    object Qr_ProPDNOMFOR: TStringField
      FieldName = 'PDNOMFOR'
      Size = 40
    end
    object Qr_ProPDCODNCM: TStringField
      FieldName = 'PDCODNCM'
      Size = 10
    end
    object Qr_ProPDSECAO: TStringField
      FieldName = 'PDSECAO'
      Size = 10
    end
    object Qr_ProPDMARCA: TStringField
      DisplayLabel = 'Marca'
      FieldName = 'PDMARCA'
      Size = 40
    end
    object Qr_Pronovo_codgru: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'novo_codgru'
      Calculated = True
    end
    object Qr_Pronovo_nomgru: TStringField
      FieldKind = fkCalculated
      FieldName = 'novo_nomgru'
      Size = 60
      Calculated = True
    end
    object Qr_Pronovo_codcon: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'novo_codcon'
      Calculated = True
    end
    object Qr_Pronovo_nomcon: TStringField
      FieldKind = fkCalculated
      FieldName = 'novo_nomcon'
      Size = 60
      Calculated = True
    end
    object Qr_Pronovo_marca: TStringField
      FieldKind = fkCalculated
      FieldName = 'novo_marca'
      Size = 60
      Calculated = True
    end
    object Qr_Pronovo_codram: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'novo_codram'
      Calculated = True
    end
    object Qr_Pronovo_nomram: TStringField
      FieldKind = fkCalculated
      FieldName = 'novo_nomram'
      Size = 60
      Calculated = True
    end
    object Qr_Pronovo_coddep: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'novo_coddep'
      Calculated = True
    end
    object Qr_Pronovo_nomdep: TStringField
      FieldKind = fkCalculated
      FieldName = 'novo_nomdep'
      Size = 60
      Calculated = True
    end
    object Qr_Pronovo_codncm: TStringField
      FieldKind = fkCalculated
      FieldName = 'novo_codncm'
      Size = 8
      Calculated = True
    end
    object Qr_Pronovo_codtip: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'novo_codtip'
      Calculated = True
    end
    object Qr_Pronovo_nomtip: TStringField
      FieldKind = fkCalculated
      FieldName = 'novo_nomtip'
      Size = 60
      Calculated = True
    end
    object Qr_Pronovo_codfor: TFloatField
      FieldKind = fkCalculated
      FieldName = 'novo_codfor'
      Calculated = True
    end
    object Qr_Pronovo_nomfor: TStringField
      FieldKind = fkCalculated
      FieldName = 'novo_nomfor'
      Size = 60
      Calculated = True
    end
    object Qr_Pronovo_secao: TStringField
      FieldKind = fkCalculated
      FieldName = 'novo_secao'
      Calculated = True
    end
    object Qr_ProSEL: TFloatField
      FieldName = 'SEL'
    end
  end
  object U_Pro: TUpdateSQL
    Left = 600
    Top = 240
  end
  object Src_Pro: TDataSource
    DataSet = Qr_Pro
    Left = 632
    Top = 240
  end
end
