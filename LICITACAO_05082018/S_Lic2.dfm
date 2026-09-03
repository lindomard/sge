object Frm_Lic2: TFrm_Lic2
  Left = 99
  Top = 109
  Width = 914
  Height = 592
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Cadastro de Licita'#231#245'es'
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
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 60
    Width = 898
    Height = 41
    Align = alTop
    BevelInner = bvLowered
    TabOrder = 0
    object Label1: TLabel
      Left = 6
      Top = 17
      Width = 91
      Height = 13
      Caption = 'Pesquisar Por..:'
    end
    object CB_TIPO: TComboBox
      Left = 99
      Top = 9
      Width = 145
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 0
      Text = 'Chave'
      Items.Strings = (
        'Chave'
        'Data'
        'C'#243'digo do Cliente'
        'Nome do Cliente'
        'Cidade')
    end
    object NOME: TEdit
      Left = 243
      Top = 9
      Width = 299
      Height = 21
      TabOrder = 1
    end
    object BitBtn1: TBitBtn
      Left = 545
      Top = 8
      Width = 81
      Height = 21
      Cursor = crHandPoint
      Caption = '&Atualizar'
      TabOrder = 2
      OnClick = BitBtn1Click
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
    object CB_VISIBLE: TCheckBox
      Left = 704
      Top = 8
      Width = 97
      Height = 17
      Caption = 'CB_VISIBLE'
      TabOrder = 3
      Visible = False
    end
  end
  object PC1: TPageControl
    Left = 0
    Top = 101
    Width = 898
    Height = 412
    ActivePage = tsItens
    Align = alClient
    TabOrder = 1
    OnChange = PC1Change
    object tsCabecalho: TTabSheet
      Caption = '&Cabecalho'
      Enabled = False
      object Label2: TLabel
        Left = 60
        Top = 3
        Width = 48
        Height = 13
        Caption = 'N'#250'mero:'
      end
      object Label3: TLabel
        Left = 420
        Top = 3
        Width = 100
        Height = 13
        Caption = 'Data de Emissao:'
      end
      object Label4: TLabel
        Left = 62
        Top = 23
        Width = 44
        Height = 13
        Caption = 'Cliente:'
      end
      object Label5: TLabel
        Left = 63
        Top = 57
        Width = 39
        Height = 13
        Caption = #211'rg'#227'o:'
      end
      object Label6: TLabel
        Left = 5
        Top = 168
        Width = 96
        Height = 13
        Caption = 'Carta Conv. No.:'
      end
      object Label7: TLabel
        Left = 464
        Top = 57
        Width = 55
        Height = 13
        Caption = 'Telefone:'
      end
      object Label11: TLabel
        Left = 16
        Top = 73
        Width = 88
        Height = 13
        Caption = 'Validade Prop.:'
      end
      object Label12: TLabel
        Left = 13
        Top = 93
        Width = 94
        Height = 13
        Caption = 'Condicoes Pgto:'
      end
      object Label13: TLabel
        Left = 35
        Top = 113
        Width = 70
        Height = 13
        Caption = 'Modalidade:'
      end
      object Label17: TLabel
        Left = 4
        Top = 218
        Width = 103
        Height = 13
        Caption = 'Prazo de Entrega:'
      end
      object Label18: TLabel
        Left = 29
        Top = 148
        Width = 79
        Height = 13
        Caption = 'Observa'#231'oes:'
      end
      object Label36: TLabel
        Left = 42
        Top = 40
        Width = 63
        Height = 13
        Caption = 'Vendedor.:'
        FocusControl = DBE_VEND
      end
      object Label14: TLabel
        Left = 39
        Top = 187
        Width = 70
        Height = 13
        Caption = 'Proponente:'
      end
      object sbnDadosCli: TSpeedButton
        Left = 487
        Top = 18
        Width = 23
        Height = 20
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
        OnClick = sbnDadosCliClick
      end
      object Label31: TLabel
        Left = 63
        Top = 275
        Width = 43
        Height = 13
        Caption = 'Email..:'
      end
      object Label35: TLabel
        Left = 465
        Top = 95
        Width = 119
        Height = 13
        Caption = 'Qtd. casas decimais:'
      end
      object Label54: TLabel
        Left = 5
        Top = 295
        Width = 101
        Height = 13
        Caption = 'Modelo Relatorio:'
      end
      object Label37: TLabel
        Left = 685
        Top = 131
        Width = 102
        Height = 13
        Caption = 'N'#250'mero Proposta:'
      end
      object DBText3: TDBText
        Left = 54
        Top = 131
        Width = 50
        Height = 13
        Alignment = taRightJustify
        AutoSize = True
        DataField = 'carta_convite_n_pregao'
        DataSource = DataSource1
      end
      object Label8: TLabel
        Left = 325
        Top = 132
        Width = 84
        Height = 13
        Caption = 'Data Abertura:'
      end
      object Label9: TLabel
        Left = 517
        Top = 131
        Width = 32
        Height = 13
        Caption = 'Hora:'
      end
      object DBE_CHAVE: TDBEdit
        Left = 109
        Top = 1
        Width = 93
        Height = 19
        TabStop = False
        Ctl3D = False
        DataField = 'LC1_CHAVE'
        DataSource = DataSource1
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 0
      end
      object DBE_CODCLI: TDBEdit
        Left = 109
        Top = 19
        Width = 67
        Height = 19
        Ctl3D = False
        DataField = 'LC1_CODCLI'
        DataSource = DataSource1
        ParentCtl3D = False
        TabOrder = 2
        OnEnter = DBE_CODCLIEnter
        OnExit = DBE_CODCLIExit
        OnKeyPress = DBE_CODCLIKeyPress
      end
      object DBE_NOMCLI: TDBEdit
        Left = 175
        Top = 19
        Width = 312
        Height = 19
        Ctl3D = False
        DataField = 'LC1_NOMCLI'
        DataSource = DataSource1
        ParentCtl3D = False
        TabOrder = 3
      end
      object DBE_ORGAO: TDBEdit
        Left = 109
        Top = 55
        Width = 325
        Height = 19
        Ctl3D = False
        DataField = 'LC1_AOSCUI'
        DataSource = DataSource1
        ParentCtl3D = False
        TabOrder = 5
      end
      object DBE_FONE: TDBEdit
        Left = 525
        Top = 55
        Width = 137
        Height = 19
        Ctl3D = False
        DataField = 'LC1_FONCUI'
        DataSource = DataSource1
        ParentCtl3D = False
        TabOrder = 6
        OnExit = DBE_FONEExit
      end
      object DBE_VALPRO: TDBEdit
        Left = 109
        Top = 73
        Width = 325
        Height = 19
        Ctl3D = False
        DataField = 'LC1_VALPRO_TEXTO'
        DataSource = DataSource1
        ParentCtl3D = False
        TabOrder = 7
      end
      object DBE_COND: TDBEdit
        Left = 109
        Top = 91
        Width = 325
        Height = 19
        Ctl3D = False
        DataField = 'LC1_CONDPAG'
        DataSource = DataSource1
        ParentCtl3D = False
        TabOrder = 8
      end
      object dbPrzEnt01: TDBEdit
        Left = 109
        Top = 219
        Width = 400
        Height = 19
        Ctl3D = False
        DataField = 'LC1_PRZENT1'
        DataSource = DataSource1
        ParentCtl3D = False
        TabOrder = 16
      end
      object dbPrzEnt02: TDBEdit
        Left = 109
        Top = 237
        Width = 400
        Height = 19
        Ctl3D = False
        DataField = 'LC1_PRZENT2'
        DataSource = DataSource1
        ParentCtl3D = False
        TabOrder = 17
      end
      object dbPrzEnt03: TDBEdit
        Left = 109
        Top = 255
        Width = 400
        Height = 19
        Ctl3D = False
        DataField = 'LC1_PRZENT3'
        DataSource = DataSource1
        ParentCtl3D = False
        TabOrder = 18
      end
      object DbObs01: TDBEdit
        Left = 109
        Top = 147
        Width = 400
        Height = 19
        Ctl3D = False
        DataField = 'LC1_OBS1'
        DataSource = DataSource1
        ParentCtl3D = False
        TabOrder = 12
      end
      object DbObs02: TDBEdit
        Left = 109
        Top = 165
        Width = 400
        Height = 19
        Ctl3D = False
        DataField = 'LC1_OBS2'
        DataSource = DataSource1
        ParentCtl3D = False
        TabOrder = 13
      end
      object DBCB_MODALIDADE: TDBComboBox
        Left = 109
        Top = 109
        Width = 180
        Height = 21
        BevelKind = bkSoft
        Ctl3D = False
        DataField = 'LC1_OBJETO'
        DataSource = DataSource1
        ItemHeight = 13
        Items.Strings = (
          'TOMADA DE PRECOS'
          'CARTA CONVITE'
          'CONCORRENCIA PUBLICA'
          'PREG'#195'O'
          'PREG'#195'O ELETRONICO'
          'PREG'#195'O PRESENCIAL'
          'COTA'#199#195'O')
        ParentCtl3D = False
        TabOrder = 9
      end
      object DBCB_RMS: TDBCheckBox
        Left = 294
        Top = 110
        Width = 241
        Height = 17
        Caption = '&Registro no Minist'#233'rio da Sa'#250'de'
        DataField = 'LC1_DIGRMS'
        DataSource = DataSource1
        TabOrder = 10
        ValueChecked = '0'
        ValueUnchecked = '1'
      end
      object bbItens: TBitBtn
        Left = 715
        Top = 220
        Width = 50
        Height = 67
        Cursor = crHandPoint
        Hint = 'Click aqui para ir a '#13#10'tela dos itens'
        Caption = '&Itens'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 21
        OnClick = bbItensClick
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
        Layout = blGlyphTop
        NumGlyphs = 2
      end
      object DBE_NOMVEN: TDBEdit
        Left = 176
        Top = 37
        Width = 335
        Height = 19
        Ctl3D = False
        DataField = 'nomven'
        DataSource = DataSource1
        Enabled = False
        ParentColor = True
        ParentCtl3D = False
        TabOrder = 19
      end
      object DBE_VEND: TDBEdit
        Left = 109
        Top = 37
        Width = 67
        Height = 19
        Ctl3D = False
        DataField = 'LC1_CODVEN'
        DataSource = DataSource1
        ParentCtl3D = False
        TabOrder = 4
        OnExit = DBE_VENDExit
        OnKeyPress = DBE_VENDKeyPress
      end
      object RG_CAB: TDBRadioGroup
        Left = 540
        Top = 148
        Width = 174
        Height = 66
        Caption = 'Imprimir Cabe'#231'alho:'
        Ctl3D = False
        DataField = 'LC1_IMPCAB'
        DataSource = DataSource1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Items.Strings = (
          'Todas as P'#225'ginas'
          'Primeira P'#225'gina'
          'N'#227'o Imprimir Inutilizar Espacos'
          'N'#227'o Imprimir deixar Brancos')
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 11
        Values.Strings = (
          '0'
          '1'
          '2'
          '3')
        Visible = False
      end
      object bordagrade: TDBRadioGroup
        Left = 539
        Top = 214
        Width = 175
        Height = 73
        Caption = 'bordagrade'
        Ctl3D = False
        DataField = 'LC1_BORDAGRADE'
        DataSource = DataSource1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Items.Strings = (
          'Borda Lateral'
          'Grade nos Itens'
          'Borda/Grade'
          'Sem Bordas'
          'Borda Completa')
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 20
        Values.Strings = (
          '0'
          '1'
          '2'
          '3'
          '4')
      end
      object Db_Prop01: TDBEdit
        Left = 109
        Top = 183
        Width = 400
        Height = 19
        Ctl3D = False
        DataField = 'LC1_PROPL01'
        DataSource = DataSource1
        ParentCtl3D = False
        TabOrder = 14
      end
      object Db_Prop02: TDBEdit
        Left = 109
        Top = 201
        Width = 400
        Height = 19
        Ctl3D = False
        DataField = 'LC1_PROPL02'
        DataSource = DataSource1
        ParentCtl3D = False
        TabOrder = 15
      end
      object DBE_DTEMIS: TDBDateEdit
        Left = 522
        Top = 0
        Width = 100
        Height = 21
        DataField = 'LC1_DTEMIS'
        DataSource = DataSource1
        Ctl3D = False
        DialogTitle = 'Digite  ou Selecione a Data'
        NumGlyphs = 2
        ParentCtl3D = False
        TabOrder = 1
      end
      object GroupBox1: TGroupBox
        Left = 662
        Top = 2
        Width = 111
        Height = 73
        Caption = 'Imprimir Extenso:'
        TabOrder = 22
        Visible = False
        object DBCheckBox5: TDBCheckBox
          Left = 3
          Top = 15
          Width = 97
          Height = 17
          Caption = 'Unit'#225'rio'
          DataField = 'LC1_EXTUAV'
          DataSource = DataSource1
          TabOrder = 0
          ValueChecked = '0'
          ValueUnchecked = '1'
        end
        object DBCheckBox6: TDBCheckBox
          Left = 3
          Top = 33
          Width = 106
          Height = 17
          Caption = 'Total Produtos'
          DataField = 'LC1_EXTPAV'
          TabOrder = 1
          ValueChecked = '0'
          ValueUnchecked = '1'
        end
        object DBCheckBox7: TDBCheckBox
          Left = 3
          Top = 51
          Width = 97
          Height = 17
          Caption = 'Valor Total'
          DataField = 'LC1_EXTTAV'
          TabOrder = 2
          ValueChecked = '0'
          ValueUnchecked = '1'
        end
      end
      object DBCB_LOTEPREGAO: TDBCheckBox
        Left = 525
        Top = 75
        Width = 182
        Height = 17
        TabStop = False
        Caption = 'Separado por Lote(Pregao)'
        DataField = 'LC1_SEPLOTEPREGAO'
        DataSource = DataSource1
        TabOrder = 23
        ValueChecked = '1'
        ValueUnchecked = '0'
      end
      object cb_casas: TComboBox
        Left = 584
        Top = 92
        Width = 145
        Height = 21
        Ctl3D = False
        ItemHeight = 13
        ParentCtl3D = False
        TabOrder = 24
        Text = '2 (padrao)'
        OnChange = cb_casasChange
        Items.Strings = (
          'Padrao(default do Sistema)'
          '2 duas'
          '3 tres'
          '4 quatro'
          '5 cinco'
          '6 seis')
      end
      object DBEdit1: TDBEdit
        Left = 109
        Top = 273
        Width = 400
        Height = 19
        Ctl3D = False
        DataField = 'LC1_EMAIL'
        DataSource = DataSource1
        ParentCtl3D = False
        TabOrder = 25
      end
      object gb_dadoscli: TGroupBox
        Left = 453
        Top = 207
        Width = 467
        Height = 154
        Caption = 'Dados do Cliente:'
        Color = 13303807
        Ctl3D = False
        ParentColor = False
        ParentCtl3D = False
        TabOrder = 26
        Visible = False
        OnExit = gb_dadoscliExit
        object Label20: TLabel
          Left = 1
          Top = 19
          Width = 98
          Height = 13
          Caption = 'Nome do Cliente:'
        end
        object Label21: TLabel
          Left = 62
          Top = 36
          Width = 36
          Height = 13
          Caption = 'CNPJ:'
        end
        object Label22: TLabel
          Left = 39
          Top = 54
          Width = 59
          Height = 13
          Caption = 'Endere'#231'o:'
        end
        object Label23: TLabel
          Left = 58
          Top = 71
          Width = 38
          Height = 13
          Caption = 'Bairro:'
        end
        object Label24: TLabel
          Left = 344
          Top = 71
          Width = 27
          Height = 13
          Caption = 'Cep:'
        end
        object Label25: TLabel
          Left = 39
          Top = 107
          Width = 55
          Height = 13
          Caption = 'Telefone:'
        end
        object Label26: TLabel
          Left = 265
          Top = 35
          Width = 57
          Height = 13
          Caption = 'Inscri'#231#227'o:'
        end
        object Label27: TLabel
          Left = 40
          Top = 90
          Width = 44
          Height = 13
          Caption = 'Cidade:'
        end
        object Label29: TLabel
          Left = 350
          Top = 89
          Width = 21
          Height = 13
          Caption = 'UF:'
        end
        object DBE_dc_nome: TDBEdit
          Left = 101
          Top = 14
          Width = 359
          Height = 19
          DataField = 'LC1_NOMCLI'
          DataSource = DataSource1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          OnKeyDown = DBE_NOM01KeyDown
        end
        object DBE_dc_cnp: TDBEdit
          Left = 101
          Top = 32
          Width = 133
          Height = 19
          DataField = 'LC1_CNPJ'
          DataSource = DataSource1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          OnKeyDown = DBE_NOM01KeyDown
        end
        object DBE_dc_ender: TDBEdit
          Left = 101
          Top = 50
          Width = 359
          Height = 19
          DataField = 'LC1_ENDER'
          DataSource = DataSource1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
          OnKeyDown = DBE_NOM01KeyDown
        end
        object DBE_dc_bairro: TDBEdit
          Left = 101
          Top = 68
          Width = 220
          Height = 19
          DataField = 'LC1_BAIRRO'
          DataSource = DataSource1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
          OnKeyDown = DBE_NOM01KeyDown
        end
        object DBE_dc_fone: TDBEdit
          Left = 101
          Top = 104
          Width = 133
          Height = 19
          DataField = 'LC1_FONE'
          DataSource = DataSource1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 8
          OnExit = DBE_dc_foneExit
          OnKeyDown = DBE_NOM01KeyDown
        end
        object DBE_dc_cidade: TDBEdit
          Left = 101
          Top = 86
          Width = 220
          Height = 19
          DataField = 'LC1_NOMLOC'
          DataSource = DataSource1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 6
          OnKeyDown = DBE_NOM01KeyDown
        end
        object bb_dc_sair: TBitBtn
          Left = 174
          Top = 125
          Width = 126
          Height = 22
          Caption = '[F3]-Fechar'
          TabOrder = 9
          OnClick = bb_dc_sairClick
          OnKeyDown = bb_dc_sairKeyDown
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
        object DBE_dc_cep: TDBEdit
          Left = 375
          Top = 68
          Width = 85
          Height = 19
          DataField = 'LC1_CEP'
          DataSource = DataSource1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 5
          OnExit = DBE_dc_cepExit
          OnKeyDown = DBE_NOM01KeyDown
        end
        object DBE_dc_inscricao: TDBEdit
          Left = 327
          Top = 32
          Width = 133
          Height = 19
          DataField = 'LC1_IE'
          DataSource = DataSource1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          OnKeyDown = DBE_NOM01KeyDown
        end
        object DBE_dc_uf: TDBEdit
          Left = 375
          Top = 86
          Width = 25
          Height = 19
          DataField = 'LC1_UF'
          DataSource = DataSource1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 7
          OnKeyDown = DBE_NOM01KeyDown
        end
      end
      object dbcb_modelo: TDBComboBox
        Left = 109
        Top = 291
        Width = 180
        Height = 21
        BevelKind = bkSoft
        Ctl3D = False
        DataField = 'LC1_MODELO_REL'
        DataSource = DataSource1
        ItemHeight = 13
        Items.Strings = (
          'TOMADA DE PRECOS'
          'CARTA CONVITE'
          'CONCORRENCIA PUBLICA'
          'PREG'#195'O'
          'PREG'#195'O ELETRONICO'
          'PREG'#195'O PRESENCIAL'
          'COTA'#199#195'O')
        ParentCtl3D = False
        TabOrder = 27
      end
      object DBE_LC1_PROPOSTA_NUMERO: TDBEdit
        Left = 786
        Top = 129
        Width = 97
        Height = 19
        Ctl3D = False
        DataField = 'LC1_PROPOSTA_NUMERO'
        DataSource = DataSource1
        ParentCtl3D = False
        TabOrder = 28
      end
      object DBE_CARCONV: TDBEdit
        Left = 109
        Top = 129
        Width = 212
        Height = 19
        Ctl3D = False
        DataField = 'LC1_CARCON'
        DataSource = DataSource1
        ParentCtl3D = False
        TabOrder = 29
      end
      object edt_datcon_data: TDateEdit
        Left = 411
        Top = 126
        Width = 95
        Height = 21
        NumGlyphs = 2
        TabOrder = 30
      end
      object edt_datcon_hora: TEdit
        Left = 550
        Top = 125
        Width = 121
        Height = 21
        TabOrder = 31
        Text = 'edt_datcon_hora'
        OnChange = edt_datcon_horaChange
        OnExit = edt_datcon_horaExit
      end
    end
    object tsMaisInformacoes: TTabSheet
      Caption = 'Mais Informa'#231#245'es'
      Enabled = False
      ImageIndex = 1
      object Label38: TLabel
        Left = 24
        Top = 16
        Width = 244
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Dados Sobre Aquisi'#231#227'o dos Equipamentos:'
        WordWrap = True
      end
      object Label39: TLabel
        Left = 23
        Top = 109
        Width = 244
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Dados da Assinatura do Contrado:'
        WordWrap = True
      end
      object DBMemo_LC1_AQUISICAO_EQUIP: TDBMemo
        Left = 272
        Top = 16
        Width = 601
        Height = 110
        Ctl3D = False
        DataField = 'LC1_AQUISICAO_EQUIP'
        DataSource = DataSource1
        ParentCtl3D = False
        ScrollBars = ssBoth
        TabOrder = 0
      end
      object DBMemo3: TDBMemo
        Left = 272
        Top = 114
        Width = 601
        Height = 110
        Ctl3D = False
        DataField = 'LC1_DADOS_ASSINATURA_CONTRATO'
        DataSource = DataSource1
        ParentCtl3D = False
        ScrollBars = ssBoth
        TabOrder = 1
      end
    end
    object tsItens: TTabSheet
      Caption = 'Itens'
      ImageIndex = 1
      object Panel_rodapeitens: TPanel
        Left = 0
        Top = 343
        Width = 890
        Height = 41
        Align = alBottom
        TabOrder = 2
        object lbl_qtditens: TLabel
          Left = 569
          Top = 0
          Width = 87
          Height = 13
          Caption = 'Total Unidades'
        end
        object lbl_totger: TLabel
          Left = 709
          Top = 0
          Width = 64
          Height = 13
          Caption = 'Total Geral'
        end
        object Label19: TLabel
          Left = 460
          Top = 3
          Width = 86
          Height = 13
          Caption = 'Total dos Itens'
        end
        object Label15: TLabel
          Left = 1
          Top = 3
          Width = 93
          Height = 13
          Caption = 'Tipo de Pre'#231'o..:'
        end
        object Label30: TLabel
          Left = 11
          Top = 22
          Width = 80
          Height = 13
          Caption = 'Acres/Desc..:'
        end
        object st_tot_qtd: TStaticText
          Left = 550
          Top = 16
          Width = 117
          Height = 20
          Alignment = taRightJustify
          AutoSize = False
          BorderStyle = sbsSingle
          Caption = 'st_tot_qtd'
          TabOrder = 0
        end
        object st_tot_vltotal: TStaticText
          Left = 666
          Top = 16
          Width = 117
          Height = 20
          Alignment = taRightJustify
          AutoSize = False
          BorderStyle = sbsSingle
          Caption = 'st_qtditens'
          TabOrder = 1
        end
        object bbImpLic: TBitBtn
          Left = 172
          Top = 8
          Width = 129
          Height = 25
          Cursor = crHandPoint
          Caption = 'Importar Licita'#231#227'o'
          Enabled = False
          TabOrder = 2
          OnClick = bbImpLicClick
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
        object st_qtd_itens: TStaticText
          Left = 434
          Top = 16
          Width = 117
          Height = 20
          Alignment = taRightJustify
          AutoSize = False
          BorderStyle = sbsSingle
          Caption = 'st_tot_qtd'
          TabOrder = 3
        end
        object CBTPPCO: TComboBox
          Left = 93
          Top = -1
          Width = 76
          Height = 21
          Style = csDropDownList
          ItemHeight = 13
          ItemIndex = 2
          TabOrder = 4
          Text = 'P'#231'o.Custo'
          OnEnter = CBTPPCOEnter
          OnExit = CBTPPCOExit
          Items.Strings = (
            'Extra'
            'Padr'#227'o'
            'P'#231'o.Custo'
            'P'#231'o.Med.Custo')
        end
        object Acres_Desc: TCurrencyEdit
          Left = 93
          Top = 19
          Width = 73
          Height = 19
          AutoSize = False
          DisplayFormat = '% ,0.00;-% ,0.00'
          MaxValue = 100.000000000000000000
          MinValue = -100.000000000000000000
          TabOrder = 5
          OnExit = Acres_DescExit
        end
        object btn_marcadesmarca: TButton
          Left = 304
          Top = 8
          Width = 129
          Height = 25
          Caption = 'Marcar/Desmarcar todas'
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 6
          OnClick = btn_marcadesmarcaClick
        end
      end
      object DBGrid1_Itens: TDBGrid
        Left = 0
        Top = 28
        Width = 890
        Height = 196
        Align = alClient
        DataSource = Src_Lic02
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        PopupMenu = pop_excluir
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = [fsBold]
        OnColEnter = DBGrid1_ItensColEnter
        OnColExit = DBGrid1_ItensColExit
        OnDblClick = DBGrid1_ItensDblClick
        OnKeyPress = DBGrid1_ItensKeyPress
        Columns = <
          item
            Expanded = False
            FieldName = 'LC2_LOTEPREGAO'
            Width = 29
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'LC2_ITEM'
            Width = 30
            Visible = True
          end
          item
            Alignment = taCenter
            Color = 16776176
            Expanded = False
            FieldName = 'LC2_GANHOU'
            ReadOnly = False
            Title.Alignment = taCenter
            Title.Caption = 'OK'
            Width = 20
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'LC2_CODPRO'
            Width = 44
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'LC2_QTD'
            Width = 42
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'LC2_UND'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'LC2_NOM01'
            Width = 300
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'LC2_MARCA'
            Width = 65
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'LC2_PCOAV'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'LC2_PCOPZ'
            Width = 74
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'LC2_RMS'
            Width = 58
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'total_bruto'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'total_bruto_prazo'
            Visible = True
          end>
      end
      object Panel4: TPanel
        Left = 0
        Top = 0
        Width = 890
        Height = 28
        Align = alTop
        TabOrder = 1
        object Label28: TLabel
          Left = 1
          Top = 1
          Width = 66
          Height = 26
          Align = alLeft
          Caption = 'Chave:'
          Color = 8454016
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -18
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
        end
        object DBText2: TDBText
          Left = 67
          Top = 1
          Width = 189
          Height = 26
          Align = alClient
          Alignment = taCenter
          Color = 16777088
          DataField = 'LC1_CHAVE'
          DataSource = DataSource1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -18
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
        end
        object DBText1: TDBText
          Left = 256
          Top = 1
          Width = 633
          Height = 26
          Align = alRight
          Alignment = taCenter
          Color = 8454016
          DataField = 'LC1_NOMCLI'
          DataSource = DataSource1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -18
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
        end
      end
      object GroupBox4: TGroupBox
        Left = 0
        Top = 224
        Width = 890
        Height = 93
        Align = alBottom
        Caption = 'Descri'#231#227'o Conforme Licita'#231#227'o:'
        TabOrder = 3
        object DBMemo1: TDBMemo
          Left = 2
          Top = 15
          Width = 886
          Height = 76
          Align = alClient
          DataField = 'LC2_DESCCOMP'
          DataSource = Src_Lic02
          TabOrder = 0
          OnExit = DBMemo1Exit
        end
      end
      object Panel2: TPanel
        Left = 0
        Top = 317
        Width = 890
        Height = 26
        Align = alBottom
        TabOrder = 4
        object bbItem_ExcluirItem: TBitBtn
          Left = 9
          Top = 1
          Width = 200
          Height = 25
          Cursor = crHandPoint
          Caption = 'Excluir Item'
          Enabled = False
          TabOrder = 0
          OnClick = bbItem_ExcluirItemClick
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
        object bbItem_renomear: TBitBtn
          Left = 213
          Top = 1
          Width = 200
          Height = 25
          Cursor = crHandPoint
          Caption = 'Renomear Numero do Item'
          Enabled = False
          TabOrder = 1
          OnClick = bbItem_renomearClick
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000120B0000120B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333330000000
            00003333377777777777333330FFFFFFFFF03FF3F7FFFF33FFF7003000000FF0
            00F077F7777773F77737E00FBFBFB0FFFFF07773333FF7FF33F7E0FBFB00000F
            F0F077F333777773F737E0BFBFBFBFB0FFF077F3333FFFF733F7E0FBFB00000F
            F0F077F333777773F737E0BFBFBFBFB0FFF077F33FFFFFF733F7E0FB0000000F
            F0F077FF777777733737000FB0FFFFFFFFF07773F7F333333337333000FFFFFF
            FFF0333777F3FFF33FF7333330F000FF0000333337F777337777333330FFFFFF
            0FF0333337FFFFFF7F37333330CCCCCC0F033333377777777F73333330FFFFFF
            0033333337FFFFFF773333333000000003333333377777777333}
          NumGlyphs = 2
        end
        object bbItem_Cadastrar: TBitBtn
          Left = 416
          Top = 1
          Width = 200
          Height = 25
          Cursor = crHandPoint
          Caption = 'Cadastrar Produtos'
          Enabled = False
          TabOrder = 2
          OnClick = bbItem_CadastrarClick
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
      end
    end
    object TabSheet3: TTabSheet
      Caption = '&Rodape'
      Enabled = False
      ImageIndex = 2
      object Label55: TLabel
        Left = 0
        Top = 0
        Width = 283
        Height = 29
        Align = alTop
        Alignment = taCenter
        Caption = 'Observa'#231#245'es / Declara'#231'oes'
        Color = 16744576
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -25
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object DBMemo2: TDBMemo
        Left = 0
        Top = 29
        Width = 890
        Height = 355
        Align = alClient
        DataField = 'LC1_DECLARACAO'
        DataSource = DataSource1
        TabOrder = 0
      end
    end
    object TabSheet4: TTabSheet
      Caption = '&Lista'
      ImageIndex = 3
      object DBGrid1: TDBGrid
        Left = 0
        Top = 0
        Width = 890
        Height = 384
        Align = alClient
        DataSource = DataSource1
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = [fsBold]
        OnDrawColumnCell = DBGrid1DrawColumnCell
        Columns = <
          item
            Expanded = False
            FieldName = 'LC1_CHAVE'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'LC1_DTEMIS'
            Width = 88
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'LC1_CODCLI'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'LC1_NOMCLI'
            Width = 221
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'LC1_AOSCUI'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'LC1_FONCUI'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'LC1_CARCON'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'LC1_DATCON'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'LC1_VALPRO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'LC1_CONDPAG'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'LC1_OBJETO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'LC1_DIGRMS'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'LC1_PCOAVI'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'LC1_PCOPRZ'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'LC1_EXTTAV'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'LC1_EXTUAV'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'LC1_EXTPAV'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'LC1_EXTTAP'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'LC1_EXTPAP'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'LC1_EXTUAP'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'LC1_OBS1'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'LC1_OBS2'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'LC1_IMPCAB'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'LC1_PRZENT1'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'LC1_PRZENT2'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'LC1_PRZENT3'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'LC1_DEC01'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'LC1_DEC02'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'LC1_DEC03'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'LC1_DEC04'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'LC1_DEC05'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'LC1_DEC06'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'LC1_DEC07'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'LC1_DEC08'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'LC1_DEC09'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'LC1_DEC10'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'LC1_HORCON'
            Visible = True
          end>
      end
    end
    object ts_relatorio: TTabSheet
      Caption = 'fortes report'
      ImageIndex = 4
      object RLReport1: TRLReport
        Left = 53
        Top = -153
        Width = 794
        Height = 1123
        Background.Height = 149
        Background.Stretch = True
        Background.Width = 159
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = False
        DataSource = Src_LC2
        Degrade.OppositeColor = clTeal
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ShowProgress = False
        Visible = False
        object RLBand_cabger: TRLBand
          Left = 38
          Top = 185
          Width = 718
          Height = 163
          BandType = btTitle
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          object rlb_nomcli: TRLDBText
            Left = 209
            Top = 1
            Width = 502
            Height = 16
            AutoSize = False
            DataField = 'LC1_NOMCLI'
            DataSource = DataSource1
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold, fsUnderline]
            ParentFont = False
          end
          object RLDBText21: TRLDBText
            Left = 59
            Top = 20
            Width = 76
            Height = 15
            DataField = 'LC1_AOSCUI'
            DataSource = DataSource1
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel1: TRLLabel
            Left = 4
            Top = 51
            Width = 83
            Height = 15
            Caption = 'MODALIDADE:'
          end
          object RLLabel2: TRLLabel
            Left = 544
            Top = 50
            Width = 32
            Height = 15
            Caption = 'Data:'
          end
          object lbl_nomrep: TRLLabel
            Left = 227
            Top = 146
            Width = 94
            Height = 15
            Caption = 'Representante..:'
          end
          object txt_codven: TRLDBText
            Left = 325
            Top = 146
            Width = 84
            Height = 15
            DataField = 'LC1_CODVEN'
            DataSource = DataSource1
          end
          object RLDBText23: TRLDBText
            Left = 584
            Top = 50
            Width = 80
            Height = 15
            DataField = 'LC1_DATCON'
            DataSource = DataSource1
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDBText22: TRLDBText
            Left = 93
            Top = 51
            Width = 79
            Height = 15
            DataField = 'LC1_OBJETO'
            DataSource = DataSource1
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDBText20: TRLDBText
            Left = 423
            Top = 51
            Width = 81
            Height = 15
            DataField = 'LC1_CARCON'
            DataSource = DataSource1
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel3: TRLLabel
            Left = 94
            Top = 69
            Width = 45
            Height = 15
            Caption = 'Hora....:'
          end
          object txt_nomven: TRLDBText
            Left = 415
            Top = 145
            Width = 47
            Height = 15
            DataField = 'nomven'
            DataSource = DataSource1
          end
          object RLDBText24: TRLDBText
            Left = 144
            Top = 69
            Width = 80
            Height = 15
            DataField = 'LC1_DATCON'
            DataSource = DataSource1
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLSystemInfo1: TRLSystemInfo
            Left = 632
            Top = 145
            Width = 59
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Info = itPageNumber
            Text = 'Pagina:'
          end
          object RLLabel7: TRLLabel
            Left = 4
            Top = 20
            Width = 49
            Height = 15
            Caption = #211'RG'#195'O:'
          end
          object RLLabel22: TRLLabel
            Left = 356
            Top = 51
            Width = 59
            Height = 15
            Caption = 'NUMERO:'
          end
          object RLLabel27: TRLLabel
            Left = 4
            Top = 36
            Width = 221
            Height = 15
            Caption = 'COMISS'#195'O PERMANETE DE LICITA'#199#195'O'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Visible = False
          end
          object RLLabel28: TRLLabel
            Left = 5
            Top = 69
            Width = 70
            Height = 15
            Caption = 'ABERTURA:'
          end
          object RLDBText17: TRLDBText
            Left = 96
            Top = 89
            Width = 64
            Height = 15
            DataField = 'LC1_OBS1'
            DataSource = DataSource1
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDBText53: TRLDBText
            Left = 95
            Top = 103
            Width = 64
            Height = 15
            DataField = 'LC1_OBS2'
            DataSource = DataSource1
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDBText55: TRLDBText
            Left = 3
            Top = 279
            Width = 86
            Height = 15
            DataField = 'LC1_PROPL01'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDBText56: TRLDBText
            Left = 3
            Top = 296
            Width = 86
            Height = 15
            DataField = 'LC1_PROPL02'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel14: TRLLabel
            Left = 4
            Top = 89
            Width = 87
            Height = 15
            Caption = 'OBSERVA'#199#195'O:'
          end
          object RLLabel20: TRLLabel
            Left = 4
            Top = 119
            Width = 86
            Height = 15
            Caption = 'PREPONENTE'
          end
          object RLSystemInfo2: TRLSystemInfo
            Left = 692
            Top = 145
            Width = 21
            Height = 16
            AutoSize = False
            Info = itLastPageNumber
            Text = '/'
          end
          object RLDBText1: TRLDBText
            Left = 95
            Top = 121
            Width = 88
            Height = 15
            DataField = 'LC1_PROPL01'
            DataSource = DataSource1
          end
          object RLDBText2: TRLDBText
            Left = 95
            Top = 136
            Width = 88
            Height = 15
            DataField = 'LC1_PROPL02'
            DataSource = DataSource1
          end
          object RLLabel4: TRLLabel
            Left = 4
            Top = 2
            Width = 106
            Height = 15
            Caption = 'LICITA'#199#195'O DE N'#186'.:'
          end
          object RLDBText3: TRLDBText
            Left = 113
            Top = 2
            Width = 88
            Height = 15
            AutoSize = False
            DataField = 'LC1_CHAVE'
            DataSource = DataSource1
          end
          object RLLabel5: TRLLabel
            Left = 305
            Top = 74
            Width = 110
            Height = 15
            Caption = 'Chave da Licita'#231#227'o:'
          end
          object RLDBText4: TRLDBText
            Left = 424
            Top = 74
            Width = 71
            Height = 15
            DataField = 'LC1_CHAVE'
            DataSource = DataSource1
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
        end
        object RLGroup1: TRLGroup
          Left = 38
          Top = 348
          Width = 718
          Height = 285
          DataFields = 'LC2_CHAVE'
          object RLBand_cabItens: TRLBand
            Left = 0
            Top = 0
            Width = 718
            Height = 17
            Background.Height = 60
            Background.Stretch = True
            Background.Width = 468
            BandType = btColumnHeader
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = False
            Borders.DrawBottom = False
            Color = clSilver
            ParentColor = False
            Transparent = False
            object cab_item: TRLLabel
              Left = 0
              Top = 0
              Width = 23
              Height = 16
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = False
              Caption = 'It.'
              Transparent = False
            end
            object cab_und: TRLLabel
              Left = 23
              Top = 0
              Width = 25
              Height = 16
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = False
              Caption = 'Und.'
              Transparent = False
            end
            object cab_qtd: TRLLabel
              Left = 48
              Top = 0
              Width = 34
              Height = 16
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = False
              Caption = 'Qtde.'
              Transparent = False
            end
            object cab_desc: TRLLabel
              Left = 168
              Top = 0
              Width = 233
              Height = 16
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = False
              Caption = 'Descri'#231#227'o'
              Transparent = False
            end
            object cab_marca: TRLLabel
              Left = 402
              Top = 0
              Width = 89
              Height = 16
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = False
              Caption = 'Marca'
              Transparent = False
            end
            object cab_LRMS: TRLLabel
              Left = 492
              Top = 0
              Width = 64
              Height = 16
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = False
              Caption = 'Reg. M.S.'
              Transparent = False
            end
            object cab_LPV: TRLLabel
              Left = 563
              Top = 0
              Width = 67
              Height = 16
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = False
              Caption = 'P'#231'.a Vista'
              Transparent = False
            end
            object cab_LPP: TRLLabel
              Left = 641
              Top = 0
              Width = 69
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = False
              Caption = 'P'#231'.a Prazo'
              Transparent = False
            end
            object cab_qtdenv: TRLLabel
              Left = 82
              Top = 0
              Width = 38
              Height = 16
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = False
              Caption = 'Q.Env.'
              Transparent = False
            end
            object cab_codpro: TRLLabel
              Left = 120
              Top = 0
              Width = 48
              Height = 16
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = False
              Caption = 'Codigo'
              Transparent = False
            end
          end
          object RLGroup2: TRLGroup
            Left = 0
            Top = 17
            Width = 718
            Height = 264
            Color = clWhite
            DataFields = 'LC2_LOTEPREGAO'
            ParentColor = False
            Transparent = False
            object RLBand_detitens01: TRLBand
              Left = 0
              Top = 16
              Width = 718
              Height = 18
              AutoSize = True
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = False
              Transparent = False
              AfterPrint = RLBand_detitens01AfterPrint
              BeforePrint = RLBand_detitens01BeforePrint
              object det_item: TRLDBText
                Left = 0
                Top = 0
                Width = 23
                Height = 12
                Alignment = taRightJustify
                AutoSize = False
                Borders.Sides = sdCustom
                Borders.DrawLeft = False
                Borders.DrawTop = False
                Borders.DrawRight = False
                Borders.DrawBottom = False
                DataField = 'LC2_ITEM'
                DataSource = Src_LC2
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -9
                Font.Name = 'Arial'
                Font.Style = []
                Holder = cab_item
                ParentFont = False
                Transparent = False
              end
              object det_und: TRLDBText
                Left = 23
                Top = 0
                Width = 25
                Height = 12
                AutoSize = False
                Borders.Sides = sdCustom
                Borders.DrawLeft = False
                Borders.DrawTop = False
                Borders.DrawRight = False
                Borders.DrawBottom = False
                DataField = 'LC2_UND'
                DataSource = Src_LC2
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -9
                Font.Name = 'Arial'
                Font.Style = []
                Holder = cab_und
                ParentFont = False
                Transparent = False
              end
              object det_qtd: TRLDBText
                Left = 48
                Top = 0
                Width = 34
                Height = 12
                Alignment = taRightJustify
                AutoSize = False
                Borders.Sides = sdCustom
                Borders.DrawLeft = False
                Borders.DrawTop = False
                Borders.DrawRight = False
                Borders.DrawBottom = False
                DataField = 'LC2_QTD'
                DataSource = Src_LC2
                DisplayMask = '#,##0'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -9
                Font.Name = 'Arial'
                Font.Style = []
                Holder = cab_qtd
                ParentFont = False
                Transparent = False
              end
              object det_marca: TRLDBText
                Left = 402
                Top = 0
                Width = 89
                Height = 12
                AutoSize = False
                Borders.Sides = sdCustom
                Borders.DrawLeft = False
                Borders.DrawTop = False
                Borders.DrawRight = False
                Borders.DrawBottom = False
                DataField = 'LC2_MARCA'
                DataSource = Src_LC2
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -9
                Font.Name = 'Arial'
                Font.Style = []
                Holder = cab_marca
                ParentFont = False
                Transparent = False
              end
              object det_LRMS: TRLDBText
                Left = 492
                Top = 0
                Width = 64
                Height = 12
                AutoSize = False
                Borders.Sides = sdCustom
                Borders.DrawLeft = False
                Borders.DrawTop = False
                Borders.DrawRight = False
                Borders.DrawBottom = False
                DataField = 'LC2_RMS'
                DataSource = Src_LC2
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -9
                Font.Name = 'Arial'
                Font.Style = []
                Holder = cab_LRMS
                ParentFont = False
                Transparent = False
              end
              object det_LPV: TRLDBText
                Left = 563
                Top = 0
                Width = 67
                Height = 12
                Alignment = taRightJustify
                AutoSize = False
                Borders.Sides = sdCustom
                Borders.DrawLeft = False
                Borders.DrawTop = False
                Borders.DrawRight = False
                Borders.DrawBottom = False
                DataField = 'LC2_PCOAV'
                DataSource = Src_LC2
                DisplayMask = '#,##0.00'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -9
                Font.Name = 'Arial'
                Font.Style = []
                Holder = cab_LPV
                ParentFont = False
                Transparent = False
              end
              object det_LPP: TRLDBText
                Left = 641
                Top = 0
                Width = 69
                Height = 12
                Alignment = taRightJustify
                AutoSize = False
                Borders.Sides = sdCustom
                Borders.DrawLeft = False
                Borders.DrawTop = False
                Borders.DrawRight = False
                Borders.DrawBottom = False
                DataField = 'LC2_PCOPZ'
                DataSource = Src_LC2
                DisplayMask = '#,##0.00'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -9
                Font.Name = 'Arial'
                Font.Style = []
                Holder = cab_LPP
                ParentFont = False
                Transparent = False
              end
              object det_qtdenv: TRLDBText
                Left = 82
                Top = 0
                Width = 38
                Height = 12
                Alignment = taRightJustify
                AutoSize = False
                Borders.Sides = sdCustom
                Borders.DrawLeft = False
                Borders.DrawTop = False
                Borders.DrawRight = False
                Borders.DrawBottom = False
                DataField = 'LC2_QTDENV'
                DataSource = Src_Lic02
                DisplayMask = '#,##0'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -9
                Font.Name = 'Arial'
                Font.Style = []
                Holder = cab_qtdenv
                ParentFont = False
                Transparent = False
              end
              object det_codpro: TRLDBText
                Left = 120
                Top = 0
                Width = 48
                Height = 12
                Alignment = taRightJustify
                AutoSize = False
                Borders.Sides = sdCustom
                Borders.DrawLeft = False
                Borders.DrawTop = False
                Borders.DrawRight = False
                Borders.DrawBottom = False
                DataField = 'LC2_CODPRO'
                DataSource = Src_LC2
                DisplayMask = '#,##0'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -9
                Font.Name = 'Arial'
                Font.Style = []
                Holder = cab_codpro
                ParentFont = False
                Transparent = False
              end
              object det_desc01: TRLDBRichText
                Left = 168
                Top = 0
                Width = 233
                Height = 18
                DataField = 'LC2_DESCCOMP'
                DataSource = Src_LC2
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -4
                Font.Name = 'Arial'
                Font.Style = []
                Holder = cab_desc
                ParentFont = False
              end
            end
            object RLBand_detExt01: TRLBand
              Left = 0
              Top = 34
              Width = 718
              Height = 12
              AutoSize = True
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = False
              Color = clSilver
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = 'Arial'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              Transparent = False
              object extenso1: TRLMemo
                Left = 3
                Top = 0
                Width = 708
                Height = 12
                AutoSize = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -8
                Font.Name = 'Arial'
                Font.Style = [fsBold]
                ParentFont = False
                Transparent = False
              end
            end
            object RLBand_detExt02: TRLBand
              Left = 0
              Top = 46
              Width = 718
              Height = 16
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = False
              Color = clSilver
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = 'Arial'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              Transparent = False
              object extenso2: TRLLabel
                Left = 7
                Top = -1
                Width = 35
                Height = 10
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -8
                Font.Name = 'Arial'
                Font.Style = [fsBold]
                ParentFont = False
                Transparent = False
              end
            end
            object rlband_lotepregao: TRLBand
              Left = 0
              Top = 0
              Width = 718
              Height = 16
              BandType = btHeader
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = False
              Transparent = False
              Visible = False
              object RLLabel24: TRLLabel
                Left = 296
                Top = 0
                Width = 100
                Height = 16
                Caption = 'N'#250'mero do Lote:'
                Transparent = False
              end
              object RLDBText52: TRLDBText
                Left = 397
                Top = 0
                Width = 123
                Height = 16
                Borders.Sides = sdCustom
                Borders.DrawLeft = False
                Borders.DrawTop = False
                Borders.DrawRight = False
                Borders.DrawBottom = False
                DataField = 'LC2_LOTEPREGAO'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -13
                Font.Name = 'Arial'
                Font.Style = []
                ParentFont = False
                Transparent = False
              end
            end
            object rlbandtotgru_avista: TRLBand
              Left = 0
              Top = 62
              Width = 718
              Height = 35
              BandType = btSummary
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = False
              Color = clSilver
              ParentColor = False
              Transparent = False
              BeforePrint = rlbandtotgru_avistaBeforePrint
              object RLLabel25: TRLLabel
                Left = 4
                Top = 1
                Width = 99
                Height = 16
                Caption = 'Total do Pregao:'
                Transparent = False
              end
              object LGru_TGV: TRLLabel
                Left = 108
                Top = 1
                Width = 69
                Height = 16
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -13
                Font.Name = 'Arial'
                Font.Style = [fsBold]
                ParentFont = False
                Transparent = False
              end
              object extensotGruv: TRLLabel
                Left = 5
                Top = 17
                Width = 53
                Height = 10
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -8
                Font.Name = 'Arial'
                Font.Style = [fsBold]
                ParentFont = False
                Transparent = False
              end
            end
            object rlbandtotgru_aprazo: TRLBand
              Left = 0
              Top = 97
              Width = 718
              Height = 35
              BandType = btSummary
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = False
              Color = clSilver
              ParentColor = False
              Transparent = False
              BeforePrint = rlbandtotgru_aprazoBeforePrint
              object RLLabel26: TRLLabel
                Left = 4
                Top = 1
                Width = 148
                Height = 16
                Caption = 'Total do Pregao a Prazo:'
                Transparent = False
              end
              object LGru_TGP: TRLLabel
                Left = 148
                Top = 1
                Width = 69
                Height = 16
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -13
                Font.Name = 'Arial'
                Font.Style = [fsBold]
                ParentFont = False
                Transparent = False
              end
              object extensotGruP: TRLLabel
                Left = 5
                Top = 17
                Width = 53
                Height = 10
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -8
                Font.Name = 'Arial'
                Font.Style = [fsBold]
                ParentFont = False
                Transparent = False
              end
            end
          end
        end
        object RLBandTotPrazo: TRLBand
          Left = 38
          Top = 633
          Width = 718
          Height = 35
          BandType = btSummary
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = True
          Borders.DrawRight = False
          Borders.DrawBottom = False
          Color = clSilver
          ParentColor = False
          Transparent = False
          BeforePrint = RLBandTotPrazoBeforePrint
          object LTP: TRLLabel
            Left = 3
            Top = 1
            Width = 132
            Height = 16
            Caption = 'Total Geral a Prazo...:'
            Transparent = False
          end
          object L_TGP: TRLLabel
            Left = 150
            Top = 1
            Width = 46
            Height = 16
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
          end
          object extensotp: TRLLabel
            Left = 4
            Top = 17
            Width = 39
            Height = 10
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -8
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
          end
        end
        object RLBand_valpro: TRLBand
          Left = 38
          Top = 703
          Width = 718
          Height = 103
          BandType = btSummary
          Color = clSilver
          ParentColor = False
          Transparent = False
          object RLLabel8: TRLLabel
            Left = 4
            Top = 6
            Width = 132
            Height = 16
            Caption = 'Validade da Proposta:'
            Transparent = False
          end
          object RLDBText27: TRLDBText
            Left = 140
            Top = 6
            Width = 89
            Height = 16
            DataField = 'LC1_VALPRO'
            DataSource = DataSource1
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
          end
          object RLLabel9: TRLLabel
            Left = 233
            Top = 5
            Width = 31
            Height = 16
            Caption = 'Dias'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
          end
          object RLLabel10: TRLLabel
            Left = 4
            Top = 23
            Width = 133
            Height = 16
            Caption = 'Condi'#231#245'es de Pagto..:'
            Transparent = False
          end
          object RLDBText28: TRLDBText
            Left = 142
            Top = 24
            Width = 100
            Height = 16
            DataField = 'LC1_CONDPAG'
            DataSource = DataSource1
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
          end
          object RLLabel11: TRLLabel
            Left = 5
            Top = 42
            Width = 133
            Height = 16
            Caption = 'Prazo de Entrega......:'
            Transparent = False
          end
          object RLDBText29: TRLDBText
            Left = 143
            Top = 41
            Width = 92
            Height = 16
            DataField = 'LC1_PRZENT1'
            DataSource = DataSource1
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
          end
          object RLDBText30: TRLDBText
            Left = 143
            Top = 58
            Width = 92
            Height = 16
            DataField = 'LC1_PRZENT2'
            DataSource = DataSource1
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
          end
          object RLDBText31: TRLDBText
            Left = 143
            Top = 75
            Width = 92
            Height = 16
            DataField = 'LC1_PRZENT3'
            DataSource = DataSource1
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
          end
        end
        object RLBand7: TRLBand
          Left = 38
          Top = 806
          Width = 718
          Height = 37
          BandType = btSummary
          BeforePrint = RLBand7BeforePrint
          object RLLabel13: TRLLabel
            Left = 279
            Top = 0
            Width = 160
            Height = 32
            Align = faCenterTop
            Caption = 'Declara'#231#245'es'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -27
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
        end
        object RLBand8: TRLBand
          Left = 38
          Top = 843
          Width = 718
          Height = 16
          BandType = btSummary
          BeforePrint = RLBand8BeforePrint
          object RLDBText34: TRLDBText
            Left = 321
            Top = 0
            Width = 75
            Height = 16
            Align = faCenter
            DataField = 'LC1_DEC01'
            DataSource = DataSource1
          end
        end
        object RLBand9: TRLBand
          Left = 38
          Top = 859
          Width = 718
          Height = 16
          BandType = btSummary
          BeforePrint = RLBand9BeforePrint
          object RLDBText35: TRLDBText
            Left = 321
            Top = 0
            Width = 75
            Height = 16
            Align = faCenter
            DataField = 'LC1_DEC02'
            DataSource = DataSource1
          end
        end
        object RLBand10: TRLBand
          Left = 38
          Top = 875
          Width = 718
          Height = 16
          BandType = btSummary
          BeforePrint = RLBand10BeforePrint
          object RLDBText36: TRLDBText
            Left = 321
            Top = 0
            Width = 75
            Height = 16
            Align = faCenter
            DataField = 'LC1_DEC03'
            DataSource = DataSource1
          end
        end
        object RLBand11: TRLBand
          Left = 38
          Top = 891
          Width = 718
          Height = 16
          BandType = btSummary
          BeforePrint = RLBand11BeforePrint
          object RLDBText37: TRLDBText
            Left = 321
            Top = 0
            Width = 75
            Height = 16
            Align = faCenter
            DataField = 'LC1_DEC04'
            DataSource = DataSource1
          end
        end
        object RLBand12: TRLBand
          Left = 38
          Top = 907
          Width = 718
          Height = 16
          BandType = btSummary
          BeforePrint = RLBand12BeforePrint
          object RLDBText38: TRLDBText
            Left = 321
            Top = 0
            Width = 75
            Height = 16
            Align = faCenter
            DataField = 'LC1_DEC05'
            DataSource = DataSource1
          end
        end
        object RLBand13: TRLBand
          Left = 38
          Top = 923
          Width = 718
          Height = 16
          BandType = btSummary
          BeforePrint = RLBand13BeforePrint
          object RLDBText39: TRLDBText
            Left = 321
            Top = 0
            Width = 75
            Height = 16
            Align = faCenter
            DataField = 'LC1_DEC06'
            DataSource = DataSource1
          end
        end
        object RLBand14: TRLBand
          Left = 38
          Top = 939
          Width = 718
          Height = 16
          BandType = btSummary
          BeforePrint = RLBand14BeforePrint
          object RLDBText40: TRLDBText
            Left = 321
            Top = 0
            Width = 75
            Height = 16
            Align = faCenter
            DataField = 'LC1_DEC07'
            DataSource = DataSource1
          end
        end
        object RLBandtotaVista: TRLBand
          Left = 38
          Top = 668
          Width = 718
          Height = 35
          BandType = btSummary
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = False
          Color = clSilver
          ParentColor = False
          Transparent = False
          BeforePrint = RLBandtotaVistaBeforePrint
          object LTV: TRLLabel
            Left = 4
            Top = 1
            Width = 71
            Height = 16
            Caption = 'Total Geral:'
            Transparent = False
          end
          object L_TGV: TRLLabel
            Left = 148
            Top = 1
            Width = 46
            Height = 16
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
          end
          object extensotv: TRLLabel
            Left = 6
            Top = 16
            Width = 39
            Height = 10
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -8
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
          end
        end
        object RLBand15: TRLBand
          Left = 38
          Top = 955
          Width = 718
          Height = 92
          BandType = btSummary
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = True
          object LDT: TRLLabel
            Left = 24
            Top = 19
            Width = 209
            Height = 16
            Caption = 'Goi'#226'nia, 00 de AAAAAAA de 0000.'
          end
          object RLDBText41: TRLDBText
            Left = 23
            Top = 63
            Width = 81
            Height = 16
            DataField = 'RAZAO'
            DataSource = DM1.Src_Emp
          end
        end
        object rlband_cabprim: TRLBand
          Left = 38
          Top = 38
          Width = 718
          Height = 131
          BandType = btHeader
          AfterPrint = rlband_cabprimAfterPrint
          object RLImage1: TRLImage
            Left = 5
            Top = 8
            Width = 207
            Height = 119
            Stretch = True
          end
          object RLDBText10: TRLDBText
            Left = 220
            Top = 29
            Width = 490
            Height = 15
            Alignment = taCenter
            AutoSize = False
            DataField = 'RAZAO'
            DataSource = DM1.Src_Emp
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object txt_ender: TRLDBMemo
            Left = 220
            Top = 45
            Width = 490
            Height = 27
            Alignment = taCenter
            AutoSize = False
            DataField = 'ender'
            DataSource = DM1.Src_Emp
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDBText12: TRLDBText
            Left = 220
            Top = 73
            Width = 490
            Height = 15
            Alignment = taCenter
            AutoSize = False
            DataField = 'telefone'
            DataSource = DM1.Src_Emp
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDBText13: TRLDBText
            Left = 220
            Top = 89
            Width = 490
            Height = 15
            Alignment = taCenter
            AutoSize = False
            DataField = 'E_MAIL'
            DataSource = DM1.Src_Emp
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDBText14: TRLDBText
            Left = 220
            Top = 106
            Width = 490
            Height = 15
            Alignment = taCenter
            AutoSize = False
            DataField = 'cnpj'
            DataSource = DM1.Src_Emp
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
        end
        object RLBand_pagina: TRLBand
          Left = 38
          Top = 169
          Width = 718
          Height = 16
          BandType = btHeader
          Visible = False
          object RLSystemInfo3: TRLSystemInfo
            Left = 633
            Top = -1
            Width = 59
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Info = itPageNumber
            Text = 'Pagina:'
          end
          object RLSystemInfo4: TRLSystemInfo
            Left = 693
            Top = -1
            Width = 21
            Height = 16
            AutoSize = False
            Info = itLastPageNumber
            Text = '/'
          end
        end
      end
    end
    object ts_orcamento: TTabSheet
      Caption = 'fortes report2'
      ImageIndex = 5
      object RLReport2: TRLReport
        Left = 30
        Top = -244
        Width = 794
        Height = 1123
        Borders.Sides = sdCustom
        Borders.DrawLeft = True
        Borders.DrawTop = True
        Borders.DrawRight = True
        Borders.DrawBottom = True
        DataSource = Src_Lic02
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        Margins.BottomMargin = 20.000000000000000000
        ShowProgress = False
        object rl_cabtit: TRLBand
          Left = 39
          Top = 157
          Width = 716
          Height = 42
          BandType = btHeader
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -30
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          BeforePrint = rl_cabtitBeforePrint
          object lblObs: TRLLabel
            Left = 0
            Top = 0
            Width = 546
            Height = 41
            Align = faClient
            Alignment = taCenter
            Caption = 'Or'#231'amento de Mercadorias'
            Layout = tlCenter
          end
          object RL_CHAVE: TRLLabel
            Left = 546
            Top = 0
            Width = 170
            Height = 41
            Align = faRight
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'CHAVE:   0000'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -20
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            Layout = tlCenter
            ParentFont = False
          end
        end
        object RLBand6: TRLBand
          Left = 39
          Top = 625
          Width = 716
          Height = 1
          BandType = btSummary
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = False
          object RLrodape: TRLLabel
            Left = 0
            Top = 0
            Width = 716
            Height = 7
            Align = faTop
            Alignment = taRightJustify
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -7
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
        end
        object RLcabcli: TRLBand
          Left = 39
          Top = 199
          Width = 716
          Height = 115
          BandType = btHeader
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          object lbl_cabcli: TRLLabel
            Left = 2
            Top = 3
            Width = 71
            Height = 16
            AutoSize = False
            Caption = 'Cliente.......'
          end
          object RLDBText8: TRLDBText
            Left = 74
            Top = 3
            Width = 503
            Height = 16
            AutoSize = False
            DataField = 'LC1_NOMCLI'
            DataSource = DataSource1
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object lbl_cadcnpj: TRLLabel
            Left = 2
            Top = 54
            Width = 71
            Height = 16
            AutoSize = False
            Caption = 'CPF/CNPJ..:'
          end
          object db_cnpj: TRLDBText
            Left = 76
            Top = 54
            Width = 279
            Height = 16
            AutoSize = False
            DataField = 'LC1_CNPJ'
            DataSource = DataSource1
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object lbl_cadend: TRLLabel
            Left = 2
            Top = 21
            Width = 71
            Height = 16
            AutoSize = False
            Caption = 'Endere'#231'o...'
          end
          object db_ender: TRLDBText
            Left = 74
            Top = 20
            Width = 422
            Height = 16
            AutoSize = False
            DataField = 'LC1_ENDER'
            DataSource = DataSource1
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object lbl_bairro: TRLLabel
            Left = 507
            Top = 19
            Width = 65
            Height = 16
            AutoSize = False
            Caption = 'Bairro.......'
          end
          object db_bairro: TRLDBText
            Left = 575
            Top = 19
            Width = 136
            Height = 16
            AutoSize = False
            DataField = 'LC1_BAIRRO'
            DataSource = DataSource1
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object lbl_cadloc: TRLLabel
            Left = 2
            Top = 36
            Width = 71
            Height = 16
            AutoSize = False
            Caption = 'Cidade........'
          end
          object db_cidade: TRLDBText
            Left = 74
            Top = 38
            Width = 279
            Height = 16
            AutoSize = False
            DataField = 'LC1_NOMLOC'
            DataSource = DataSource1
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object lbl_uf: TRLLabel
            Left = 448
            Top = 39
            Width = 25
            Height = 16
            Caption = 'UF:'
          end
          object db_uf: TRLDBText
            Left = 476
            Top = 39
            Width = 24
            Height = 16
            AutoSize = False
            DataField = 'LC1_UF'
            DataSource = DataSource1
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object lbl_cep: TRLLabel
            Left = 507
            Top = 37
            Width = 65
            Height = 16
            AutoSize = False
            Caption = 'CEP...........'
          end
          object db_cep: TRLDBText
            Left = 575
            Top = 37
            Width = 116
            Height = 16
            AutoSize = False
            DataField = 'LC1_CEP'
            DataSource = DataSource1
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object db_ie: TRLDBText
            Left = 505
            Top = 54
            Width = 205
            Height = 16
            AutoSize = False
            DataField = 'LC1_IE'
            DataSource = DataSource1
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object lbl_ie: TRLLabel
            Left = 437
            Top = 54
            Width = 65
            Height = 16
            AutoSize = False
            Caption = 'IE/RG.......'
          end
          object db_nomcon: TRLDBText
            Left = 75
            Top = 73
            Width = 194
            Height = 16
            AutoSize = False
            DataField = 'LC1_NOMCLI'
            DataSource = DataSource1
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object lbl_cabcont: TRLLabel
            Left = 2
            Top = 73
            Width = 71
            Height = 16
            AutoSize = False
            Caption = 'Contato......'
          end
          object db_fonecon: TRLDBText
            Left = 337
            Top = 73
            Width = 166
            Height = 16
            AutoSize = False
            DataField = 'LC1_FONE'
            DataSource = DataSource1
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object lbl_cadvend: TRLLabel
            Left = 2
            Top = 90
            Width = 71
            Height = 16
            AutoSize = False
            Caption = 'Vendedor...'
          end
          object db_nomven: TRLDBText
            Left = 76
            Top = 90
            Width = 273
            Height = 16
            AutoSize = False
            DataField = 'nomven'
            DataSource = DataSource1
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object lbl_datped: TRLLabel
            Left = 353
            Top = 90
            Width = 36
            Height = 16
            AutoSize = False
            Caption = 'Data:'
          end
          object db_datped: TRLDBText
            Left = 392
            Top = 90
            Width = 93
            Height = 16
            AutoSize = False
            DataField = 'LC1_DTEMIS'
            DataSource = DataSource1
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object lbl_pag: TRLLabel
            Left = 629
            Top = 97
            Width = 31
            Height = 16
            AutoSize = False
            Caption = 'P'#225'g:'
          end
          object db_barpag: TRLLabel
            Left = 681
            Top = 97
            Width = 10
            Height = 16
            AutoSize = False
            Caption = '/'
          end
          object db_pag: TRLSystemInfo
            Left = 662
            Top = 97
            Width = 20
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            Info = itPageNumber
            ParentFont = False
          end
          object db_qtdpag: TRLSystemInfo
            Left = 689
            Top = 97
            Width = 25
            Height = 16
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            Info = itLastPageNumber
            ParentFont = False
          end
          object db_fone: TRLLabel
            Left = 297
            Top = 73
            Width = 37
            Height = 16
            Caption = 'Fone:'
          end
        end
        object RLcabemp: TRLBand
          Left = 39
          Top = 39
          Width = 716
          Height = 118
          BandType = btHeader
          object rldb_fantasia: TRLDBText
            Left = 0
            Top = 0
            Width = 716
            Height = 21
            Align = faTop
            Alignment = taCenter
            DataField = 'FANTASIA_CAB'
            DataSource = DM1.Src_Emp
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -18
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText9: TRLDBText
            Left = 0
            Top = 21
            Width = 716
            Height = 16
            Align = faTop
            Alignment = taCenter
            DataField = 'RAZAO_CAB'
            DataSource = DM1.Src_Emp
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -14
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object lbl_cnpj_ie2: TRLLabel
            Left = 0
            Top = 37
            Width = 716
            Height = 16
            Align = faTop
            Alignment = taCenter
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -14
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText11: TRLDBText
            Left = 0
            Top = 53
            Width = 716
            Height = 16
            Align = faTop
            Alignment = taCenter
            DataField = 'ender'
            DataSource = DM1.Src_Emp
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -14
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object rlobs2: TRLMemo
            Left = 0
            Top = 69
            Width = 716
            Height = 16
            Align = faTop
            Alignment = taCenter
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -14
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText46: TRLDBText
            Left = 0
            Top = 85
            Width = 716
            Height = 16
            Align = faTop
            Alignment = taCenter
            DataField = 'E_MAIL'
            DataSource = DM1.Src_Emp
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -14
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText47: TRLDBText
            Left = 0
            Top = 101
            Width = 716
            Height = 16
            Align = faTop
            Alignment = taCenter
            DataField = 'FONE'
            DataSource = DM1.Src_Emp
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -14
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
        end
        object RLBand2: TRLBand
          Left = 39
          Top = 314
          Width = 716
          Height = 20
          BandType = btTitle
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          BeforePrint = RLBand2BeforePrint
          object RLcabCodpro: TRLLabel
            Left = 1
            Top = 0
            Width = 64
            Height = 16
            AutoSize = False
            Caption = 'C'#243'digo'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLCabQtd: TRLLabel
            Left = 65
            Top = 0
            Width = 57
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Qtde.'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLCabUnd: TRLLabel
            Left = 122
            Top = 0
            Width = 30
            Height = 16
            AutoSize = False
            Caption = 'Und'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLCabNome: TRLLabel
            Left = 154
            Top = 0
            Width = 313
            Height = 16
            AutoSize = False
            Caption = 'Descri'#231#227'o dos Produtos'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLCabMarca: TRLLabel
            Left = 468
            Top = 0
            Width = 87
            Height = 16
            AutoSize = False
            Caption = 'Marca'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLCabPU: TRLLabel
            Left = 555
            Top = 0
            Width = 74
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'P'#231'o.Unit'#225'rio'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLCabTotal: TRLLabel
            Left = 629
            Top = 0
            Width = 77
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Valor Total'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
        end
        object RLBand4: TRLBand
          Left = 39
          Top = 334
          Width = 716
          Height = 18
          AutoSize = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -10
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          object RLCodPro: TRLDBText
            Left = 1
            Top = 0
            Width = 64
            Height = 13
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = False
            Borders.DrawBottom = False
            DataField = 'LC2_CODPRO'
            DataSource = Src_Lic02
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            Holder = RLcabCodpro
            ParentFont = False
          end
          object RLQtd: TRLDBText
            Left = 65
            Top = 0
            Width = 57
            Height = 13
            Alignment = taRightJustify
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = False
            Borders.DrawBottom = False
            DataField = 'LC2_QTD'
            DataSource = Src_Lic02
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            Holder = RLCabQtd
            ParentFont = False
          end
          object RLUnd: TRLDBText
            Left = 122
            Top = 0
            Width = 30
            Height = 13
            Alignment = taCenter
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = False
            Borders.DrawBottom = False
            DataField = 'LC2_UND'
            DataSource = Src_Lic02
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            Holder = RLCabUnd
            ParentFont = False
          end
          object RLMarca: TRLDBText
            Left = 468
            Top = 0
            Width = 87
            Height = 13
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = False
            Borders.DrawBottom = False
            DataField = 'LC2_MARCA'
            DataSource = Src_Lic02
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            Holder = RLCabMarca
            ParentFont = False
          end
          object RLPU: TRLDBText
            Left = 555
            Top = 0
            Width = 74
            Height = 13
            Alignment = taRightJustify
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = False
            Borders.DrawBottom = False
            DataField = 'LC2_PCOAV'
            DataSource = Src_Lic02
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            Holder = RLCabPU
            ParentFont = False
          end
          object RLTotal: TRLDBText
            Left = 629
            Top = 0
            Width = 77
            Height = 13
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'total_bruto'
            DataSource = Src_Lic02
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            Holder = RLCabTotal
            ParentFont = False
          end
          object RLDBRichText1: TRLDBRichText
            Left = 154
            Top = 0
            Width = 313
            Height = 18
            DataField = 'LC2_DESCCOMP'
            DataSource = Src_Lic02
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -4
            Font.Name = 'Arial'
            Font.Style = []
            Holder = RLCabNome
            ParentFont = False
          end
        end
        object RLBand5: TRLBand
          Left = 39
          Top = 352
          Width = 716
          Height = 23
          BandType = btSummary
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = True
          Borders.DrawRight = False
          Borders.DrawBottom = False
          BeforePrint = RLBand5BeforePrint
          object RLMensTotalb: TRLLabel
            Left = 358
            Top = 0
            Width = 273
            Height = 16
            AutoSize = False
            Caption = 
              'Total ..........................................................' +
              '.....................'
          end
          object RL_TOTAL: TRLLabel
            Left = 631
            Top = 0
            Width = 84
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Caption = '0,00'
          end
        end
        object RLBand1: TRLBand
          Left = 39
          Top = 375
          Width = 716
          Height = 46
          BandType = btSummary
          object RLLabel6: TRLLabel
            Left = 8
            Top = 8
            Width = 85
            Height = 15
            Caption = 'Observa'#231#245'es..:'
          end
          object RLDBText6: TRLDBText
            Left = 96
            Top = 8
            Width = 409
            Height = 15
            AutoSize = False
            DataField = 'LC1_OBS1'
            DataSource = DataSource1
          end
          object RLDBText7: TRLDBText
            Left = 96
            Top = 24
            Width = 409
            Height = 15
            AutoSize = False
            DataField = 'LC1_OBS2'
            DataSource = DataSource1
          end
        end
        object RL_DEC_TOPO: TRLBand
          Left = 39
          Top = 421
          Width = 716
          Height = 24
          BandType = btSummary
          Visible = False
          object RLLabel12: TRLLabel
            Left = 0
            Top = 0
            Width = 716
            Height = 24
            Align = faClient
            Alignment = taCenter
            Caption = 'Declara'#231#245'es'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -17
            Font.Name = 'Arial'
            Font.Style = []
            Layout = tlCenter
            ParentFont = False
          end
        end
        object RL_DEC_LN1: TRLBand
          Left = 39
          Top = 445
          Width = 716
          Height = 18
          BandType = btSummary
          Visible = False
          object RLDBText15: TRLDBText
            Left = 96
            Top = 2
            Width = 529
            Height = 15
            AutoSize = False
            DataField = 'LC1_DEC01'
            DataSource = DataSource1
          end
        end
        object RL_DEC_LN9: TRLBand
          Left = 39
          Top = 589
          Width = 716
          Height = 18
          BandType = btSummary
          Visible = False
          object RLDBText16: TRLDBText
            Left = 96
            Top = 2
            Width = 529
            Height = 15
            AutoSize = False
            DataField = 'LC1_DEC09'
            DataSource = DataSource1
          end
        end
        object RL_DEC_LN8: TRLBand
          Left = 39
          Top = 571
          Width = 716
          Height = 18
          BandType = btSummary
          Visible = False
          object RLDBText18: TRLDBText
            Left = 96
            Top = 2
            Width = 529
            Height = 15
            AutoSize = False
            DataField = 'LC1_DEC08'
            DataSource = DataSource1
          end
        end
        object RL_DEC_LN7: TRLBand
          Left = 39
          Top = 553
          Width = 716
          Height = 18
          BandType = btSummary
          Visible = False
          object RLDBText19: TRLDBText
            Left = 96
            Top = 2
            Width = 529
            Height = 15
            AutoSize = False
            DataField = 'LC1_DEC07'
            DataSource = DataSource1
          end
        end
        object RL_DEC_LN6: TRLBand
          Left = 39
          Top = 535
          Width = 716
          Height = 18
          BandType = btSummary
          Visible = False
          object RLDBText25: TRLDBText
            Left = 96
            Top = 2
            Width = 529
            Height = 15
            AutoSize = False
            DataField = 'LC1_DEC06'
            DataSource = DataSource1
          end
        end
        object RL_DEC_LN5: TRLBand
          Left = 39
          Top = 517
          Width = 716
          Height = 18
          BandType = btSummary
          Visible = False
          object RLDBText26: TRLDBText
            Left = 96
            Top = 2
            Width = 529
            Height = 15
            AutoSize = False
            DataField = 'LC1_DEC05'
            DataSource = DataSource1
          end
        end
        object RL_DEC_LN4: TRLBand
          Left = 39
          Top = 499
          Width = 716
          Height = 18
          BandType = btSummary
          Visible = False
          object RLDBText32: TRLDBText
            Left = 96
            Top = 2
            Width = 529
            Height = 15
            AutoSize = False
            DataField = 'LC1_DEC04'
            DataSource = DataSource1
          end
        end
        object RL_DEC_LN3: TRLBand
          Left = 39
          Top = 481
          Width = 716
          Height = 18
          BandType = btSummary
          Visible = False
          object RLDBText33: TRLDBText
            Left = 96
            Top = 2
            Width = 529
            Height = 15
            AutoSize = False
            DataField = 'LC1_DEC03'
            DataSource = DataSource1
          end
        end
        object RL_DEC_LN2: TRLBand
          Left = 39
          Top = 463
          Width = 716
          Height = 18
          BandType = btSummary
          Visible = False
          object RLDBText42: TRLDBText
            Left = 96
            Top = 2
            Width = 529
            Height = 15
            AutoSize = False
            DataField = 'LC1_DEC02'
            DataSource = DataSource1
          end
        end
        object RL_DEC_LN10: TRLBand
          Left = 39
          Top = 607
          Width = 716
          Height = 18
          BandType = btSummary
          Visible = False
          object RLDBText43: TRLDBText
            Left = 96
            Top = 2
            Width = 529
            Height = 15
            AutoSize = False
            DataField = 'LC1_DEC10'
            DataSource = DataSource1
          end
        end
        object RL_DEC_DATA: TRLBand
          Left = 39
          Top = 626
          Width = 716
          Height = 43
          BandType = btSummary
          Visible = False
          object RLSystemInfo5: TRLSystemInfo
            Left = 0
            Top = 23
            Width = 716
            Height = 15
            Alignment = taCenter
            AutoSize = False
            Info = itFullDate
          end
          object RLDBText44: TRLDBText
            Left = 0
            Top = 7
            Width = 716
            Height = 15
            Alignment = taCenter
            AutoSize = False
            DataField = 'CIDADE'
            DataSource = DM1.Src_Emp
          end
        end
      end
    end
    object tsParamMaster: TTabSheet
      Caption = 'Parametros Master'
      ImageIndex = 5
      object Label40: TLabel
        Left = 168
        Top = 336
        Width = 46
        Height = 13
        Caption = 'Label40'
        OnClick = Acres_DescExit
      end
      object bbSalvarPadrao: TBitBtn
        Left = 336
        Top = 40
        Width = 137
        Height = 25
        Caption = 'Salvar Padr'#227'o'
        TabOrder = 0
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
      object cbvalidardesconto: TCheckBox
        Left = 64
        Top = 80
        Width = 249
        Height = 17
        Caption = 'Validar desconto maximo no produto.'
        TabOrder = 1
      end
      object CBUSERINC: TCheckBox
        Left = 64
        Top = 104
        Width = 249
        Height = 17
        Caption = 'Filtrar Usuario que incluiu.'
        TabOrder = 2
      end
      object CB_USAAVAP: TCheckBox
        Left = 63
        Top = 127
        Width = 249
        Height = 17
        Caption = 'Utilizar Preco a Vista e A Prazo'
        TabOrder = 3
        OnClick = CB_USAAVAPClick
      end
    end
    object tsRelatorios: TTabSheet
      Caption = 'Relatorios'
      ImageIndex = 8
      object gbop_especifica: TGroupBox
        Left = 0
        Top = 0
        Width = 890
        Height = 137
        Align = alTop
        Caption = 'Ordem de Produ'#231#227'o Especifica:'
        TabOrder = 0
        object bbop_esp_visedit: TBitBtn
          Left = 6
          Top = 37
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
          Top = 61
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
          Top = 85
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
        object GroupBox5: TGroupBox
          Left = 459
          Top = 15
          Width = 429
          Height = 120
          Align = alRight
          Caption = 'Modelos Existentes'
          TabOrder = 3
          object DBGrid2: TDBGrid
            Left = 2
            Top = 15
            Width = 425
            Height = 103
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
      end
      object GroupBox2: TGroupBox
        Left = 0
        Top = 137
        Width = 890
        Height = 247
        Align = alClient
        Caption = 'Legenda:'
        TabOrder = 1
        object Memo_legenda: TMemo
          Left = 2
          Top = 15
          Width = 367
          Height = 230
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
        object GroupBox3: TGroupBox
          Left = 369
          Top = 15
          Width = 138
          Height = 230
          Align = alLeft
          Caption = 'Grade 01'
          TabOrder = 1
          object Memo1: TMemo
            Left = 2
            Top = 15
            Width = 134
            Height = 213
            Align = alClient
            Lines.Strings = (
              '[%ITENS01%]'
              'item'
              'descricao'
              'qtd'
              'marca'
              'preco unitario'
              'valor total')
            ReadOnly = True
            ScrollBars = ssBoth
            TabOrder = 0
          end
        end
        object GroupBox6: TGroupBox
          Left = 673
          Top = 15
          Width = 166
          Height = 230
          Align = alLeft
          Caption = 'Grade 01'
          TabOrder = 2
          object Memo2: TMemo
            Left = 2
            Top = 15
            Width = 162
            Height = 213
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
        object GroupBox8: TGroupBox
          Left = 507
          Top = 15
          Width = 166
          Height = 230
          Align = alLeft
          Caption = 'Grade 01'
          TabOrder = 3
          object Memo3: TMemo
            Left = 2
            Top = 15
            Width = 162
            Height = 213
            Align = alClient
            Lines.Strings = (
              '[%ITENS02%]'
              'item'
              'descricao'
              'qtd'
              'marca'
              'preco unitario'
              'valor total'
              ''
              'linha 02'
              'extenso preco unitario'
              'linha 03'
              'extenso valor total')
            ReadOnly = True
            ScrollBars = ssBoth
            TabOrder = 0
          end
        end
      end
    end
    object TabSheet1: TTabSheet
      Caption = 'Imagens/Documentos'
      ImageIndex = 8
      object GroupBox7: TGroupBox
        Left = 652
        Top = 0
        Width = 238
        Height = 384
        Align = alRight
        Caption = 'Documento Digitalizado:'
        TabOrder = 0
        object DBGrid3: TDBGrid
          Left = 2
          Top = 15
          Width = 234
          Height = 333
          Align = alClient
          DataSource = Src_LC_imagem
          ReadOnly = True
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = [fsBold]
          OnDblClick = DBGrid3DblClick
          Columns = <
            item
              Expanded = False
              FieldName = 'LI_OBS'
              Width = 190
              Visible = True
            end>
        end
        object Panel5: TPanel
          Left = 2
          Top = 348
          Width = 234
          Height = 34
          Align = alBottom
          TabOrder = 1
          object sbn_nova: TSpeedButton
            Left = 2
            Top = 0
            Width = 51
            Height = 33
            Caption = 'Novo'
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
            Layout = blGlyphTop
            NumGlyphs = 2
            OnClick = sbn_novaClick
          end
          object sbn_alterar: TSpeedButton
            Left = 58
            Top = 0
            Width = 60
            Height = 33
            Caption = 'Alterar'
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
            OnClick = sbn_alterarClick
          end
          object sbnRenomear: TSpeedButton
            Left = 117
            Top = 1
            Width = 60
            Height = 33
            Caption = 'Renomear'
            Glyph.Data = {
              76010000424D7601000000000000760000002800000020000000100000000100
              04000000000000010000120B0000120B00001000000000000000000000000000
              800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333330000000
              00003333377777777777333330FFFFFFFFF03FF3F7FFFF33FFF7003000000FF0
              00F077F7777773F77737E00FBFBFB0FFFFF07773333FF7FF33F7E0FBFB00000F
              F0F077F333777773F737E0BFBFBFBFB0FFF077F3333FFFF733F7E0FBFB00000F
              F0F077F333777773F737E0BFBFBFBFB0FFF077F33FFFFFF733F7E0FB0000000F
              F0F077FF777777733737000FB0FFFFFFFFF07773F7F333333337333000FFFFFF
              FFF0333777F3FFF33FF7333330F000FF0000333337F777337777333330FFFFFF
              0FF0333337FFFFFF7F37333330CCCCCC0F033333377777777F73333330FFFFFF
              0033333337FFFFFF773333333000000003333333377777777333}
            Layout = blGlyphTop
            NumGlyphs = 2
            OnClick = sbnRenomearClick
          end
          object sbn_excluir: TSpeedButton
            Left = 176
            Top = 1
            Width = 56
            Height = 33
            Caption = 'excluir'
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
            OnClick = sbn_excluirClick
          end
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'TabSheet2'
      ImageIndex = 9
      object DBGrid4: TDBGrid
        Left = 0
        Top = 0
        Width = 890
        Height = 384
        Align = alClient
        DataSource = src_aliquotas
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = [fsBold]
      end
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 0
    Width = 898
    Height = 60
    Align = alTop
    BevelInner = bvLowered
    TabOrder = 2
    object Label16: TLabel
      Left = 301
      Top = 6
      Width = 103
      Height = 13
      Caption = 'Tam.Fonte Grade:'
    end
    object INCLUIR: TBitBtn
      Left = 2
      Top = 3
      Width = 60
      Height = 40
      Cursor = crHandPoint
      Hint = 'Inclus'#227'o de novos registros'
      Caption = '&Novo'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
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
      Layout = blGlyphTop
      NumGlyphs = 2
      Spacing = 2
    end
    object ALTERAR: TBitBtn
      Left = 61
      Top = 3
      Width = 60
      Height = 40
      Cursor = crHandPoint
      Hint = 'Permite alterar o registro atual'
      Caption = '&Alterar'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
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
      Spacing = 2
    end
    object EXCLUIR: TBitBtn
      Left = 120
      Top = 3
      Width = 60
      Height = 40
      Cursor = crHandPoint
      Hint = 'Exclus'#227'o do registro atual'
      Caption = '&Excluir'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 4
      OnClick = EXCLUIRClick
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
      Spacing = 2
    end
    object GRAVAR: TBitBtn
      Left = 179
      Top = 3
      Width = 60
      Height = 40
      Cursor = crHandPoint
      Hint = 'Grava o registro atual'
      Caption = '&Gravar'
      Enabled = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
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
      Spacing = 2
    end
    object CANCELAR: TBitBtn
      Left = 238
      Top = 3
      Width = 60
      Height = 40
      Cursor = crHandPoint
      Hint = 'Cancela a opera'#231#227'o atual'
      Caption = 'Cance&lar'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 5
      OnClick = CANCELARClick
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
      Layout = blGlyphTop
      NumGlyphs = 2
      Spacing = 2
    end
    object IMPRIMIR: TBitBtn
      Left = 299
      Top = 21
      Width = 102
      Height = 20
      Cursor = crHandPoint
      Hint = 'Imprimir a Licita'#231#227'o'
      Caption = '&Imprimir'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 7
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
      Spacing = 2
    end
    object DBNavigator1: TDBNavigator
      Left = 492
      Top = 3
      Width = 236
      Height = 40
      Cursor = crHandPoint
      DataSource = DataSource1
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      Hints.Strings = (
        'Primeiro Registro'
        'Registro Anterior'
        'Proximo Registro'
        #218'ltimo Registro')
      TabOrder = 1
    end
    object SAIR: TBitBtn
      Left = 732
      Top = 3
      Width = 60
      Height = 40
      Cursor = crHandPoint
      Hint = 'Sair do Programa'
      Caption = '&Sair'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 6
      OnClick = SAIRClick
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
      Spacing = 2
    end
    object StaticText4: TStaticText
      Left = 3
      Top = 44
      Width = 125
      Height = 17
      Alignment = taCenter
      AutoSize = False
      BorderStyle = sbsSunken
      Caption = 'Listar Licita'#231#245'es:'
      Color = 16776176
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 8
    end
    object CLB_STATUS: TCheckListBox
      Left = 133
      Top = 42
      Width = 659
      Height = 18
      Color = 16776176
      Columns = 4
      Ctl3D = False
      ItemHeight = 13
      Items.Strings = (
        'Pendentes'
        'Faturados Parciais'
        'Fatura total'
        'Todos')
      ParentCtl3D = False
      TabOrder = 9
      OnClick = CLB_STATUSClick
    end
    object bbExcel: TBitBtn
      Left = 790
      Top = 3
      Width = 60
      Height = 39
      Cursor = crHandPoint
      Hint = 'Click aqui para Gerar'#13#10'um Documento Word'
      Caption = 'Excel'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 10
      OnClick = bbExcelClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
        5555555555FFFFF555555555544C4C5555555555F777775FF5555554C444C444
        5555555775FF55775F55554C4334444445555575577F55557FF554C4C334C4C4
        335557F5577FF55577F554CCC3334444335557555777F555775FCCCCC333CCC4
        C4457F55F777F555557F4CC33333CCC444C57F577777F5F5557FC4333333C3C4
        CCC57F777777F7FF557F4CC33333333C4C457F577777777F557FCCC33CC4333C
        C4C575F7755F777FF5755CCCCC3333334C5557F5FF777777F7F554C333333333
        CC55575777777777F755553333CC3C33C555557777557577755555533CC4C4CC
        5555555775FFFF77555555555C4CCC5555555555577777555555}
      Layout = blGlyphTop
      NumGlyphs = 2
    end
    object CB_GANHOU: TCheckBox
      Left = 406
      Top = 25
      Width = 80
      Height = 17
      Caption = 'So Ganhado'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 11
    end
    object edt_tamfonte: TSpinEdit
      Left = 405
      Top = 4
      Width = 81
      Height = 22
      MaxValue = 0
      MinValue = 0
      TabOrder = 12
      Value = 9
    end
  end
  object panel_rodape: TPanel
    Left = 0
    Top = 513
    Width = 898
    Height = 41
    Align = alBottom
    TabOrder = 3
    object Shape1: TShape
      Left = 583
      Top = 15
      Width = 29
      Height = 13
      Brush.Color = clGreen
      Pen.Style = psClear
    end
    object Label32: TLabel
      Left = 615
      Top = 14
      Width = 94
      Height = 13
      Caption = 'Faturado Parcial'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGreen
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Shape2: TShape
      Left = 583
      Top = 3
      Width = 29
      Height = 13
      Brush.Color = clRed
      Pen.Style = psClear
    end
    object Label33: TLabel
      Left = 615
      Top = 2
      Width = 78
      Height = 13
      Caption = 'N'#227'o Faturado'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Shape3: TShape
      Left = 583
      Top = 27
      Width = 29
      Height = 13
      Brush.Color = clWindowText
      Pen.Style = psClear
    end
    object Label34: TLabel
      Left = 615
      Top = 26
      Width = 84
      Height = 13
      Caption = 'Faturado Total'
    end
    object Label10: TLabel
      Left = 387
      Top = 0
      Width = 56
      Height = 13
      Caption = 'Relatorio:'
      Visible = False
    end
    object PEDIDO: TBitBtn
      Left = 0
      Top = 0
      Width = 62
      Height = 39
      Cursor = crHandPoint
      Hint = 'Gerar Pedido de Venda'
      Caption = '&Pedido'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = PEDIDOClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333FFFFF3333333333000003333333333F777773FF333333008F88800
        33333337733333773F33330FFF8F888F033333733333333373F330DEFFF8F8FE
        D03337F33333333337F330DDEFFFFFEDD0333733333FFF33373F0BBFDE000EDF
        BB037F33337773F3337F0AABB08880BBAA037F3337F3F7F3337F0EEAA08080AA
        EE037F3337F737F3337F0AABB08880BBAA037F33373FF733337F0BBFDE000EDB
        BB0373F333777333337330DDEFFFFFEDD03337F33333333337F330DEF8F8FFFE
        D033373F333333333733330FFF8F8FFF03333373FF33333F733333300FF8F800
        3333333773FFFF77333333333000003333333333377777333333}
      Layout = blGlyphTop
      NumGlyphs = 2
      Spacing = 2
    end
    object btn_pendencia: TBitBtn
      Left = 61
      Top = 0
      Width = 75
      Height = 39
      Cursor = crHandPoint
      Caption = 'Pend'#234'ncia'
      TabOrder = 1
      OnClick = btn_pendenciaClick
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
      Spacing = 2
    end
    object bbHtml: TBitBtn
      Left = 135
      Top = 0
      Width = 56
      Height = 39
      Cursor = crHandPoint
      Hint = 'Click aqui para Gerar'#13#10'um arquivo HTML'
      Caption = 'HTML'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      OnClick = bbHtmlClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
        5555555555FFFFF555555555544C4C5555555555F777775FF5555554C444C444
        5555555775FF55775F55554C4334444445555575577F55557FF554C4C334C4C4
        335557F5577FF55577F554CCC3334444335557555777F555775FCCCCC333CCC4
        C4457F55F777F555557F4CC33333CCC444C57F577777F5F5557FC4333333C3C4
        CCC57F777777F7FF557F4CC33333333C4C457F577777777F557FCCC33CC4333C
        C4C575F7755F777FF5755CCCCC3333334C5557F5FF777777F7F554C333333333
        CC55575777777777F755553333CC3C33C555557777557577755555533CC4C4CC
        5555555775FFFF77555555555C4CCC5555555555577777555555}
      Layout = blGlyphTop
      NumGlyphs = 2
    end
    object bbWord: TBitBtn
      Left = 190
      Top = 0
      Width = 64
      Height = 39
      Cursor = crHandPoint
      Hint = 'Click aqui para Gerar'#13#10'um Documento Word'
      Caption = 'Word'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      OnClick = bbWordClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
        5555555555FFFFF555555555544C4C5555555555F777775FF5555554C444C444
        5555555775FF55775F55554C4334444445555575577F55557FF554C4C334C4C4
        335557F5577FF55577F554CCC3334444335557555777F555775FCCCCC333CCC4
        C4457F55F777F555557F4CC33333CCC444C57F577777F5F5557FC4333333C3C4
        CCC57F777777F7FF557F4CC33333333C4C457F577777777F557FCCC33CC4333C
        C4C575F7755F777FF5755CCCCC3333334C5557F5FF777777F7F554C333333333
        CC55575777777777F755553333CC3C33C555557777557577755555533CC4C4CC
        5555555775FFFF77555555555C4CCC5555555555577777555555}
      Layout = blGlyphTop
      NumGlyphs = 2
    end
    object bbDuplicar: TBitBtn
      Left = 253
      Top = 0
      Width = 69
      Height = 39
      Cursor = crHandPoint
      Hint = 'Click aqui para Criar Uma nova'#13#10'Licita'#231#227'o Igual a Esta'
      Caption = 'Duplicar'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 4
      OnClick = bbDuplicarClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF003333330B7FFF
        FFB0333333777F3333773333330B7FFFFFB0333333777F3333773333330B7FFF
        FFB0333333777F3333773333330B7FFFFFB03FFFFF777FFFFF77000000000077
        007077777777777777770FFFFFFFF00077B07F33333337FFFF770FFFFFFFF000
        7BB07F3FF3FFF77FF7770F00F000F00090077F77377737777F770FFFFFFFF039
        99337F3FFFF3F7F777FF0F0000F0F09999937F7777373777777F0FFFFFFFF999
        99997F3FF3FFF77777770F00F000003999337F773777773777F30FFFF0FF0339
        99337F3FF7F3733777F30F08F0F0337999337F7737F73F7777330FFFF0039999
        93337FFFF7737777733300000033333333337777773333333333}
      Layout = blGlyphTop
      NumGlyphs = 2
    end
    object qtde_env: TCheckBox
      Left = 710
      Top = 1
      Width = 180
      Height = 17
      TabStop = False
      Caption = 'Imprime Qtde Ja Entregue'
      TabOrder = 5
    end
    object cb_orcamento: TCheckBox
      Left = 710
      Top = 17
      Width = 180
      Height = 17
      TabStop = False
      Caption = 'Imprimir Formato Or'#231'amento'
      TabOrder = 6
    end
    object bbCustos: TBitBtn
      Left = 321
      Top = 0
      Width = 65
      Height = 39
      Cursor = crHandPoint
      Hint = 'Custos da Licita'#231#227'o'
      Caption = 'Custos'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 7
      OnClick = bbCustosClick
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
      Layout = blGlyphTop
      NumGlyphs = 2
    end
    object bbPersonalizado: TBitBtn
      Left = 385
      Top = 15
      Width = 188
      Height = 24
      Cursor = crHandPoint
      Hint = 'Click aqui para Gerar'#13#10'um Documento Personalizado'
      Caption = 'Personalizado'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 8
      Visible = False
      OnClick = bbPersonalizadoClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
        5555555555FFFFF555555555544C4C5555555555F777775FF5555554C444C444
        5555555775FF55775F55554C4334444445555575577F55557FF554C4C334C4C4
        335557F5577FF55577F554CCC3334444335557555777F555775FCCCCC333CCC4
        C4457F55F777F555557F4CC33333CCC444C57F577777F5F5557FC4333333C3C4
        CCC57F777777F7FF557F4CC33333333C4C457F577777777F557FCCC33CC4333C
        C4C575F7755F777FF5755CCCCC3333334C5557F5FF777777F7F554C333333333
        CC55575777777777F755553333CC3C33C555557777557577755555533CC4C4CC
        5555555775FFFF77555555555C4CCC5555555555577777555555}
      NumGlyphs = 2
    end
    object CB_RELATORIO: TComboBox
      Left = 448
      Top = -2
      Width = 128
      Height = 21
      ItemHeight = 13
      TabOrder = 9
      Visible = False
    end
  end
  object RLDraftFilter1: TRLDraftFilter
    Left = 616
  end
  object RLHTMLFilter1: TRLHTMLFilter
    DocumentStyle = dsCSS2
    DisplayName = 'P'#225'gina da Web'
    Left = 616
    Top = 40
  end
  object RLPDFFilter1: TRLPDFFilter
    DocumentInfo.Creator = 'FortesReport v3.23 \251 Copyright '#169' 1999-2004 Fortes Inform'#225'tica'
    ViewerOptions = []
    FontEncoding = feNoEncoding
    DisplayName = 'Documento PDF'
    Left = 656
    Top = 80
  end
  object RLXLSFilter1: TRLXLSFilter
    DisplayName = 'Planilha Excel'
    Left = 712
    Top = 80
  end
  object RLRichFilter1: TRLRichFilter
    DisplayName = 'Formato Texto(Word)'
    Left = 684
    Top = 81
  end
  object Qr_Lic02: TQuery
    CachedUpdates = True
    AfterInsert = Qr_Lic02AfterInsert
    BeforeEdit = Qr_Lic02BeforeEdit
    BeforePost = Qr_Lic02BeforePost
    AfterPost = Qr_Lic02AfterPost
    BeforeCancel = Qr_Lic02BeforeCancel
    BeforeDelete = Qr_Lic02BeforeDelete
    AfterDelete = c
    OnCalcFields = Qr_Lic02CalcFields
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select * from CADLC2 where LC2_CODEMP is null')
    UpdateObject = U_Lic02
    Left = 604
    Top = 299
    object Qr_Lic02LC2_CODEMP: TFloatField
      DisplayLabel = 'Empresa'
      FieldName = 'LC2_CODEMP'
      Origin = 'SG_ASSOC.CADLC2.LC2_CODEMP'
    end
    object Qr_Lic02LC2_CHAVE: TFloatField
      DisplayLabel = 'Chave'
      FieldName = 'LC2_CHAVE'
      Origin = 'SG_ASSOC.CADLC2.LC2_CHAVE'
    end
    object Qr_Lic02LC2_ITEM: TFloatField
      DisplayLabel = #205'tem'
      FieldName = 'LC2_ITEM'
      Origin = 'SG_ASSOC.CADLC2.LC2_ITEM'
    end
    object Qr_Lic02LC2_UND: TStringField
      DisplayLabel = 'Und'
      FieldName = 'LC2_UND'
      Origin = 'SG_ASSOC.CADLC2.LC2_UND'
      Size = 3
    end
    object Qr_Lic02LC2_CODPRO: TFloatField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'LC2_CODPRO'
      Origin = 'SG_ASSOC.CADLC2.LC2_CODPRO'
    end
    object Qr_Lic02LC2_QTD: TFloatField
      DisplayLabel = 'Quant'
      FieldName = 'LC2_QTD'
      Origin = 'SG_ASSOC.CADLC2.LC2_QTD'
    end
    object Qr_Lic02LC2_NOM01: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'LC2_NOM01'
      Origin = 'SG_ASSOC.CADLC2.LC2_NOM01'
      Size = 50
    end
    object Qr_Lic02LC2_RMS: TStringField
      DisplayLabel = 'Reg.M.S.'
      FieldName = 'LC2_RMS'
      Origin = 'SG_ASSOC.CADLC2.LC2_RMS'
      Size = 15
    end
    object Qr_Lic02LC2_PCOAV: TFloatField
      DisplayLabel = 'P'#231'o Unit'#225'rio'
      FieldName = 'LC2_PCOAV'
      Origin = 'SG_ASSOC.CADLC2.LC2_PCOAV'
    end
    object Qr_Lic02LC2_PCOPZ: TFloatField
      DisplayLabel = 'P'#231'o.Unit.Prazo'
      FieldName = 'LC2_PCOPZ'
      Origin = 'SG_ASSOC.CADLC2.LC2_PCOPZ'
    end
    object Qr_Lic02LC2_LOTSEQ: TFloatField
      FieldName = 'LC2_LOTSEQ'
      Origin = 'SG_ASSOC.CADLC2.LC2_LOTSEQ'
    end
    object Qr_Lic02LC2_LOTEPREGAO: TStringField
      DisplayLabel = 'Lote'
      FieldName = 'LC2_LOTEPREGAO'
      Origin = 'SG_ASSOC.CADLC2.LC2_LOTEPREGAO'
      Size = 10
    end
    object Qr_Lic02LC2_QTDENV: TFloatField
      FieldName = 'LC2_QTDENV'
      Origin = 'SG_ASSOC.CADLC2.LC2_QTDENV'
    end
    object Qr_Lic02total_bruto: TFloatField
      DisplayLabel = 'Valor Total'
      FieldKind = fkCalculated
      FieldName = 'total_bruto'
      Calculated = True
    end
    object Qr_Lic02LC2_GANHOU: TStringField
      FieldName = 'LC2_GANHOU'
      Origin = 'SG_ASSOC.CADLC2.LC2_GANHOU'
      Size = 1
    end
    object Qr_Lic02total_bruto_prazo: TFloatField
      DisplayLabel = 'Total a Prazo'
      FieldKind = fkCalculated
      FieldName = 'total_bruto_prazo'
      Calculated = True
    end
    object Qr_Lic02lc2_nompro: TStringField
      FieldKind = fkCalculated
      FieldName = 'lc2_nompro'
      Size = 600
      Calculated = True
    end
    object Qr_Lic02lc2_nompro_ori: TStringField
      FieldKind = fkCalculated
      FieldName = 'lc2_nompro_ori'
      Size = 600
      Calculated = True
    end
    object Qr_Lic02LC2_MARCA: TStringField
      FieldName = 'LC2_MARCA'
      Origin = 'SG_ASSOC.CADLC2.LC2_MARCA'
      Size = 15
    end
    object Qr_Lic02LC2_DESCCOMP: TMemoField
      FieldName = 'LC2_DESCCOMP'
      Origin = 'SG_ASSOC.CADLC2.LC2_DESCCOMP'
      BlobType = ftMemo
      Size = 1
    end
  end
  object Src_Lic02: TDataSource
    DataSet = Qr_Lic02
    OnDataChange = Src_Lic02DataChange
    Left = 657
    Top = 331
  end
  object U_Lic02: TUpdateSQL
    ModifySQL.Strings = (
      'update CADLC2'
      'set'
      '  LC2_CODEMP = :LC2_CODEMP,'
      '  LC2_CHAVE = :LC2_CHAVE,'
      '  LC2_ITEM = :LC2_ITEM,'
      '  LC2_CODPRO = :LC2_CODPRO,'
      '  LC2_QTD = :LC2_QTD,'
      '  LC2_UND = :LC2_UND,'
      '  LC2_NOM01 = :LC2_NOM01,'
      '  LC2_MARCA = :LC2_MARCA,'
      '  LC2_RMS = :LC2_RMS,'
      '  LC2_PCOAV = :LC2_PCOAV,'
      '  LC2_PCOPZ = :LC2_PCOPZ,'
      '  LC2_LOTSEQ = :LC2_LOTSEQ,'
      '  LC2_LOTEPREGAO = :LC2_LOTEPREGAO,'
      '  LC2_QTDENV = :LC2_QTDENV,'
      '  LC2_GANHOU = :LC2_GANHOU,'
      '  LC2_DESCCOMP = :LC2_DESCCOMP'
      'where'
      '  LC2_CODEMP = :OLD_LC2_CODEMP and'
      '  LC2_CHAVE = :OLD_LC2_CHAVE and'
      '  LC2_ITEM = :OLD_LC2_ITEM and'
      '  LC2_CODPRO = :OLD_LC2_CODPRO and'
      '  LC2_LOTEPREGAO = :OLD_LC2_LOTEPREGAO')
    InsertSQL.Strings = (
      'insert into CADLC2'
      
        '  (LC2_CODEMP, LC2_CHAVE, LC2_ITEM, LC2_CODPRO, LC2_QTD, LC2_UND' +
        ', '
      'LC2_NOM01, '
      '   LC2_MARCA, LC2_RMS, LC2_PCOAV, LC2_PCOPZ, LC2_LOTSEQ, '
      'LC2_LOTEPREGAO, '
      '   LC2_QTDENV, LC2_GANHOU, LC2_DESCCOMP)'
      'values'
      '  (:LC2_CODEMP, :LC2_CHAVE, :LC2_ITEM, :LC2_CODPRO, :LC2_QTD, '
      ':LC2_UND, '
      '   :LC2_NOM01, :LC2_MARCA, :LC2_RMS, :LC2_PCOAV, :LC2_PCOPZ, '
      ':LC2_LOTSEQ, '
      '   :LC2_LOTEPREGAO, :LC2_QTDENV, :LC2_GANHOU, :LC2_DESCCOMP)')
    DeleteSQL.Strings = (
      'delete from CADLC2'
      'where'
      '  LC2_CODEMP = :OLD_LC2_CODEMP and'
      '  LC2_CHAVE = :OLD_LC2_CHAVE and'
      '  LC2_ITEM = :OLD_LC2_ITEM and'
      '  LC2_CODPRO = :OLD_LC2_CODPRO and'
      '  LC2_LOTEPREGAO = :OLD_LC2_LOTEPREGAO')
    Left = 700
    Top = 195
  end
  object pop_excluir: TPopupMenu
    Left = 751
    Top = 204
    object ExluirItem1: TMenuItem
      Caption = 'Exluir Item'
      OnClick = ExluirItem1Click
    end
  end
  object WordDoc: TWordDocument
    AutoConnect = False
    ConnectKind = ckRunningOrNew
    Left = 536
    Top = 8
  end
  object WordApp: TWordApplication
    AutoConnect = False
    ConnectKind = ckRunningOrNew
    AutoQuit = False
    Left = 488
    Top = 65528
  end
  object Opd1: TOpenDialog
    Filter = 
      'Todos Arquivos Doc e Docx|*.DOC;*.DOCX*.XML|Arquivos .DOCx (word' +
      ' 2007)|*.DOCX|Arquivos .DOC (word)|*.DOC|Arquivos .DOC (XML dowo' +
      'rd)|*.XML'
    Left = 452
    Top = 83
  end
  object SaveDialog1: TSaveDialog
    Left = 836
    Top = 189
  end
  object tb_ped02_pre: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 53
    Top = 456
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
      Size = 15
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
    object tb_ped02_preP2PERCDESC_AUT: TFloatField
      FieldName = 'P2PERCDESC_AUT'
    end
    object tb_ped02_preP2PERCDESC_AUT_CODUSR: TFloatField
      FieldName = 'P2PERCDESC_AUT_CODUSR'
    end
    object tb_ped02_preP2PERCDESC_AUT_DATHOR: TDateTimeField
      FieldName = 'P2PERCDESC_AUT_DATHOR'
    end
  end
  object Tb_LC1: TQuery
    CachedUpdates = True
    AfterInsert = Tb_LC1AfterInsert
    OnCalcFields = Tb_LC1CalcFields
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select * from CADLC1 where LC1_CODEMP is null')
    UpdateMode = upWhereKeyOnly
    UpdateObject = U_LC1
    Left = 379
    Top = 175
    object Tb_LC1LC1_CODEMP: TFloatField
      DisplayLabel = 'C'#243'digo Empresa'
      FieldName = 'LC1_CODEMP'
      Origin = 'SG_ASSOC.CADLC1.LC1_CODEMP'
    end
    object Tb_LC1LC1_CHAVE: TFloatField
      DisplayLabel = 'Chave'
      FieldName = 'LC1_CHAVE'
      Origin = 'SG_ASSOC.CADLC1.LC1_CHAVE'
    end
    object Tb_LC1LC1_DTEMIS: TDateTimeField
      DisplayLabel = 'Dt.Emissao'
      FieldName = 'LC1_DTEMIS'
      Origin = 'SG_ASSOC.CADLC1.LC1_DTEMIS'
      DisplayFormat = 'dd/mm/yyyy'
      EditMask = '!99/99/9999;1; '
    end
    object Tb_LC1LC1_CODCLI: TFloatField
      DisplayLabel = 'C'#243'digo Cliente'
      FieldName = 'LC1_CODCLI'
      Origin = 'SG_ASSOC.CADLC1.LC1_CODCLI'
    end
    object Tb_LC1LC1_AOSCUI: TStringField
      DisplayLabel = 'Aos Cuidados de'
      FieldName = 'LC1_AOSCUI'
      Origin = 'SG_ASSOC.CADLC1.LC1_AOSCUI'
      Size = 40
    end
    object Tb_LC1LC1_FONCUI: TStringField
      DisplayLabel = 'Telefone'
      FieldName = 'LC1_FONCUI'
      Origin = 'SG_ASSOC.CADLC1.LC1_FONCUI'
    end
    object Tb_LC1LC1_CARCON: TStringField
      DisplayLabel = 'Carta Convite'
      FieldName = 'LC1_CARCON'
      Origin = 'SG_ASSOC.CADLC1.LC1_CARCON'
      Size = 30
    end
    object Tb_LC1LC1_DATCON: TDateTimeField
      DisplayLabel = 'Data Convite'
      FieldName = 'LC1_DATCON'
      Origin = 'SG_ASSOC.CADLC1.LC1_DATCON'
      DisplayFormat = 'dd/mm/yyyy'
      EditMask = '!99/99/9999;1; '
    end
    object Tb_LC1LC1_CONDPAG: TStringField
      DisplayLabel = 'Condicao de Pagamentos'
      FieldName = 'LC1_CONDPAG'
      Origin = 'SG_ASSOC.CADLC1.LC1_CONDPAG'
      Size = 53
    end
    object Tb_LC1LC1_OBS1: TStringField
      DisplayLabel = 'Observacoes linha 1'
      FieldName = 'LC1_OBS1'
      Origin = 'SG_ASSOC.CADLC1.LC1_OBS1'
      Size = 53
    end
    object Tb_LC1LC1_OBS2: TStringField
      DisplayLabel = 'observacoes linha 2'
      FieldName = 'LC1_OBS2'
      Origin = 'SG_ASSOC.CADLC1.LC1_OBS2'
      Size = 53
    end
    object Tb_LC1LC1_PRZENT1: TStringField
      DisplayLabel = 'prazo de entrega linha 1'
      FieldName = 'LC1_PRZENT1'
      Origin = 'SG_ASSOC.CADLC1.LC1_PRZENT1'
      Size = 53
    end
    object Tb_LC1LC1_PRZENT2: TStringField
      DisplayLabel = 'prazo de entrega linha 2'
      FieldName = 'LC1_PRZENT2'
      Origin = 'SG_ASSOC.CADLC1.LC1_PRZENT2'
      Size = 53
    end
    object Tb_LC1LC1_PRZENT3: TStringField
      DisplayLabel = 'prazo de entrega linha 3'
      FieldName = 'LC1_PRZENT3'
      Origin = 'SG_ASSOC.CADLC1.LC1_PRZENT3'
      Size = 53
    end
    object Tb_LC1LC1_DEC01: TStringField
      DisplayLabel = 'declaracao linha 1'
      FieldName = 'LC1_DEC01'
      Origin = 'SG_ASSOC.CADLC1.LC1_DEC01'
      Size = 74
    end
    object Tb_LC1LC1_DEC02: TStringField
      DisplayLabel = 'declaracao linha 2'
      FieldName = 'LC1_DEC02'
      Origin = 'SG_ASSOC.CADLC1.LC1_DEC02'
      Size = 74
    end
    object Tb_LC1LC1_DEC03: TStringField
      DisplayLabel = 'declaracao linha 3'
      FieldName = 'LC1_DEC03'
      Origin = 'SG_ASSOC.CADLC1.LC1_DEC03'
      Size = 74
    end
    object Tb_LC1LC1_DEC04: TStringField
      DisplayLabel = 'declaracao linha 4'
      FieldName = 'LC1_DEC04'
      Origin = 'SG_ASSOC.CADLC1.LC1_DEC04'
      Size = 74
    end
    object Tb_LC1LC1_DEC05: TStringField
      DisplayLabel = 'declaracao linha 5'
      FieldName = 'LC1_DEC05'
      Origin = 'SG_ASSOC.CADLC1.LC1_DEC05'
      Size = 74
    end
    object Tb_LC1LC1_DEC06: TStringField
      DisplayLabel = 'declaracao linha 6'
      FieldName = 'LC1_DEC06'
      Origin = 'SG_ASSOC.CADLC1.LC1_DEC06'
      Size = 74
    end
    object Tb_LC1LC1_DEC07: TStringField
      DisplayLabel = 'declaracao linha 7'
      FieldName = 'LC1_DEC07'
      Origin = 'SG_ASSOC.CADLC1.LC1_DEC07'
      Size = 74
    end
    object Tb_LC1LC1_DEC08: TStringField
      DisplayLabel = 'declaracao linha 8'
      FieldName = 'LC1_DEC08'
      Origin = 'SG_ASSOC.CADLC1.LC1_DEC08'
      Size = 74
    end
    object Tb_LC1LC1_DEC09: TStringField
      DisplayLabel = 'declaracao linha 9'
      FieldName = 'LC1_DEC09'
      Origin = 'SG_ASSOC.CADLC1.LC1_DEC09'
      Size = 74
    end
    object Tb_LC1LC1_DEC10: TStringField
      DisplayLabel = 'declaracao linha 10'
      FieldName = 'LC1_DEC10'
      Origin = 'SG_ASSOC.CADLC1.LC1_DEC10'
      Size = 74
    end
    object Tb_LC1LC1_VALPRO: TFloatField
      FieldName = 'LC1_VALPRO'
      Origin = 'SG_ASSOC.CADLC1.LC1_VALPRO'
    end
    object Tb_LC1LC1_DIGRMS: TFloatField
      FieldName = 'LC1_DIGRMS'
      Origin = 'SG_ASSOC.CADLC1.LC1_DIGRMS'
    end
    object Tb_LC1LC1_PCOAVI: TFloatField
      FieldName = 'LC1_PCOAVI'
      Origin = 'SG_ASSOC.CADLC1.LC1_PCOAVI'
    end
    object Tb_LC1LC1_PCOPRZ: TFloatField
      FieldName = 'LC1_PCOPRZ'
      Origin = 'SG_ASSOC.CADLC1.LC1_PCOPRZ'
    end
    object Tb_LC1LC1_EXTTAV: TFloatField
      FieldName = 'LC1_EXTTAV'
      Origin = 'SG_ASSOC.CADLC1.LC1_EXTTAV'
    end
    object Tb_LC1LC1_EXTUAV: TFloatField
      FieldName = 'LC1_EXTUAV'
      Origin = 'SG_ASSOC.CADLC1.LC1_EXTUAV'
    end
    object Tb_LC1LC1_EXTPAV: TFloatField
      FieldName = 'LC1_EXTPAV'
      Origin = 'SG_ASSOC.CADLC1.LC1_EXTPAV'
    end
    object Tb_LC1LC1_EXTTAP: TFloatField
      FieldName = 'LC1_EXTTAP'
      Origin = 'SG_ASSOC.CADLC1.LC1_EXTTAP'
    end
    object Tb_LC1LC1_EXTUAP: TFloatField
      FieldName = 'LC1_EXTUAP'
      Origin = 'SG_ASSOC.CADLC1.LC1_EXTUAP'
    end
    object Tb_LC1LC1_IMPCAB: TFloatField
      FieldName = 'LC1_IMPCAB'
      Origin = 'SG_ASSOC.CADLC1.LC1_IMPCAB'
    end
    object Tb_LC1LC1_EXTPAP: TFloatField
      FieldName = 'LC1_EXTPAP'
      Origin = 'SG_ASSOC.CADLC1.LC1_EXTPAP'
    end
    object Tb_LC1LC1_CODVEN: TFloatField
      FieldName = 'LC1_CODVEN'
      Origin = 'SG_ASSOC.CADLC1.LC1_CODVEN'
    end
    object Tb_LC1nomven: TStringField
      FieldKind = fkCalculated
      FieldName = 'nomven'
      Size = 40
      Calculated = True
    end
    object Tb_LC1LC1_BORDAGRADE: TFloatField
      FieldName = 'LC1_BORDAGRADE'
      Origin = 'SG_ASSOC.CADLC1.LC1_BORDAGRADE'
    end
    object Tb_LC1lc1_qtdenv: TFloatField
      FieldKind = fkCalculated
      FieldName = 'lc1_qtdenv'
      Calculated = True
    end
    object Tb_LC1LC1_SEPLOTEPREGAO: TFloatField
      FieldName = 'LC1_SEPLOTEPREGAO'
      Origin = 'SG_ASSOC.CADLC1.LC1_SEPLOTEPREGAO'
    end
    object Tb_LC1LC1_PROPL01: TStringField
      FieldName = 'LC1_PROPL01'
      Origin = 'SG_ASSOC.CADLC1.LC1_PROPL01'
      Size = 53
    end
    object Tb_LC1LC1_PROPL02: TStringField
      FieldName = 'LC1_PROPL02'
      Origin = 'SG_ASSOC.CADLC1.LC1_PROPL02'
      Size = 53
    end
    object Tb_LC1LC1_NOMCLI: TStringField
      DisplayLabel = 'Nome do Cliente'
      FieldName = 'LC1_NOMCLI'
      Origin = 'SG_ASSOC.CADLC1.LC1_NOMCLI'
      Size = 50
    end
    object Tb_LC1LC1_NOMLOC: TStringField
      FieldName = 'LC1_NOMLOC'
      Origin = 'SG_ASSOC.CADLC1.LC1_NOMLOC'
      Size = 30
    end
    object Tb_LC1LC1_UF: TStringField
      FieldName = 'LC1_UF'
      Origin = 'SG_ASSOC.CADLC1.LC1_UF'
      Size = 2
    end
    object Tb_LC1LC1_CEP: TStringField
      FieldName = 'LC1_CEP'
      Origin = 'SG_ASSOC.CADLC1.LC1_CEP'
      Size = 9
    end
    object Tb_LC1LC1_CNPJ: TFloatField
      FieldName = 'LC1_CNPJ'
      Origin = 'SG_ASSOC.CADLC1.LC1_CNPJ'
    end
    object Tb_LC1LC1_IE: TStringField
      FieldName = 'LC1_IE'
      Origin = 'SG_ASSOC.CADLC1.LC1_IE'
      Size = 30
    end
    object Tb_LC1LC1_FONE: TStringField
      FieldName = 'LC1_FONE'
      Origin = 'SG_ASSOC.CADLC1.LC1_FONE'
    end
    object Tb_LC1LC1_ENDER: TStringField
      FieldName = 'LC1_ENDER'
      Origin = 'SG_ASSOC.CADLC1.LC1_ENDER'
      Size = 40
    end
    object Tb_LC1LC1_BAIRRO: TStringField
      FieldName = 'LC1_BAIRRO'
      Origin = 'SG_ASSOC.CADLC1.LC1_BAIRRO'
      Size = 30
    end
    object Tb_LC1LC1_LOTSEQ: TFloatField
      FieldName = 'LC1_LOTSEQ'
      Origin = 'SG_ASSOC.CADLC1.LC1_LOTSEQ'
    end
    object Tb_LC1LC1_DATHOR_INC: TDateTimeField
      FieldName = 'LC1_DATHOR_INC'
      Origin = 'SG_ASSOC.CADLC1.LC1_DATHOR_INC'
    end
    object Tb_LC1LC1_CODUSR_INC: TFloatField
      FieldName = 'LC1_CODUSR_INC'
      Origin = 'SG_ASSOC.CADLC1.LC1_CODUSR_INC'
    end
    object Tb_LC1LC1_CODUSR_ALT: TFloatField
      FieldName = 'LC1_CODUSR_ALT'
      Origin = 'SG_ASSOC.CADLC1.LC1_CODUSR_ALT'
    end
    object Tb_LC1LC1_DATHOR_ALT: TDateTimeField
      FieldName = 'LC1_DATHOR_ALT'
      Origin = 'SG_ASSOC.CADLC1.LC1_DATHOR_ALT'
    end
    object Tb_LC1LC1_TPPCO: TFloatField
      FieldName = 'LC1_TPPCO'
      Origin = 'SG_ASSOC.CADLC1.LC1_TPPCO'
    end
    object Tb_LC1LC1_EMAIL: TStringField
      FieldName = 'LC1_EMAIL'
      Origin = 'SG_ASSOC.CADLC1.LC1_EMAIL'
      Size = 50
    end
    object Tb_LC1LC1_STATUS: TFloatField
      FieldName = 'LC1_STATUS'
      Origin = 'SG_ASSOC.CADLC1.LC1_STATUS'
    end
    object Tb_LC1LC1_CASASDEC: TFloatField
      FieldName = 'LC1_CASASDEC'
      Origin = 'SG_ASSOC.CADLC1.LC1_CASASDEC'
    end
    object Tb_LC1LC1_MODELO_REL: TStringField
      FieldName = 'LC1_MODELO_REL'
      Origin = 'SG_ASSOC.CADLC1.LC1_MODELO_REL'
      Size = 100
    end
    object Tb_LC1LC1_DECLARACAO: TMemoField
      FieldName = 'LC1_DECLARACAO'
      Origin = 'SG_ASSOC.CADLC1.LC1_DECLARACAO'
      BlobType = ftMemo
      Size = 1
    end
    object Tb_LC1LC1_OBJETO: TStringField
      FieldName = 'LC1_OBJETO'
      Origin = 'SG_ASSOC.CADLC1.LC1_OBJETO'
      Size = 100
    end
    object Tb_LC1LC1_VALPRO_TEXTO: TStringField
      FieldName = 'LC1_VALPRO_TEXTO'
      Origin = 'SG_ASSOC.CADLC1.LC1_VALPRO_TEXTO'
      Size = 100
    end
    object Tb_LC1IDLC1: TStringField
      FieldName = 'IDLC1'
      Size = 18
    end
    object Tb_LC1carta_convite_n_pregao: TStringField
      FieldKind = fkCalculated
      FieldName = 'carta_convite_n_pregao'
      Size = 80
      Calculated = True
    end
    object Tb_LC1LC1_PROPOSTA_NUMERO: TStringField
      FieldName = 'LC1_PROPOSTA_NUMERO'
      Origin = 'SG_ASSOC.CADLC1.LC1_PROPOSTA_NUMERO'
      Size = 30
    end
    object Tb_LC1LC1_DADOS_ASSINATURA_CONTRATO: TMemoField
      FieldName = 'LC1_DADOS_ASSINATURA_CONTRATO'
      Origin = 'SG_ASSOC.CADLC1.LC1_DADOS_ASSINATURA_CONTRATO'
      BlobType = ftMemo
    end
    object Tb_LC1LC1_AQUISICAO_EQUIP: TMemoField
      FieldName = 'LC1_AQUISICAO_EQUIP'
      Origin = 'SG_ASSOC.CADLC1.LC1_AQUISICAO_EQUIP'
      BlobType = ftMemo
    end
  end
  object U_LC1: TUpdateSQL
    ModifySQL.Strings = (
      'update CADLC1'
      'set'
      '  LC1_CODEMP = :LC1_CODEMP,'
      '  LC1_CHAVE = :LC1_CHAVE,'
      '  LC1_DTEMIS = :LC1_DTEMIS,'
      '  LC1_CODCLI = :LC1_CODCLI,'
      '  LC1_AOSCUI = :LC1_AOSCUI,'
      '  LC1_FONCUI = :LC1_FONCUI,'
      '  LC1_CARCON = :LC1_CARCON,'
      '  LC1_DATCON = :LC1_DATCON,'
      '  LC1_VALPRO = :LC1_VALPRO,'
      '  LC1_CONDPAG = :LC1_CONDPAG,'
      '  LC1_OBJETO = :LC1_OBJETO,'
      '  LC1_DIGRMS = :LC1_DIGRMS,'
      '  LC1_PCOAVI = :LC1_PCOAVI,'
      '  LC1_PCOPRZ = :LC1_PCOPRZ,'
      '  LC1_EXTTAV = :LC1_EXTTAV,'
      '  LC1_EXTUAV = :LC1_EXTUAV,'
      '  LC1_EXTPAV = :LC1_EXTPAV,'
      '  LC1_EXTTAP = :LC1_EXTTAP,'
      '  LC1_EXTPAP = :LC1_EXTPAP,'
      '  LC1_EXTUAP = :LC1_EXTUAP,'
      '  LC1_OBS1 = :LC1_OBS1,'
      '  LC1_OBS2 = :LC1_OBS2,'
      '  LC1_IMPCAB = :LC1_IMPCAB,'
      '  LC1_PRZENT1 = :LC1_PRZENT1,'
      '  LC1_PRZENT2 = :LC1_PRZENT2,'
      '  LC1_PRZENT3 = :LC1_PRZENT3,'
      '  LC1_DEC01 = :LC1_DEC01,'
      '  LC1_DEC02 = :LC1_DEC02,'
      '  LC1_DEC03 = :LC1_DEC03,'
      '  LC1_DEC04 = :LC1_DEC04,'
      '  LC1_DEC05 = :LC1_DEC05,'
      '  LC1_DEC06 = :LC1_DEC06,'
      '  LC1_DEC07 = :LC1_DEC07,'
      '  LC1_DEC08 = :LC1_DEC08,'
      '  LC1_DEC09 = :LC1_DEC09,'
      '  LC1_DEC10 = :LC1_DEC10,'
      '  LC1_HORCON = :LC1_HORCON,'
      '  LC1_CODVEN = :LC1_CODVEN,'
      '  LC1_LOTSEQ = :LC1_LOTSEQ,'
      '  LC1_BORDAGRADE = :LC1_BORDAGRADE,'
      '  LC1_SEPLOTEPREGAO = :LC1_SEPLOTEPREGAO,'
      '  LC1_PROPL01 = :LC1_PROPL01,'
      '  LC1_PROPL02 = :LC1_PROPL02,'
      '  LC1_NOMCLI = :LC1_NOMCLI,'
      '  LC1_NOMLOC = :LC1_NOMLOC,'
      '  LC1_UF = :LC1_UF,'
      '  LC1_CEP = :LC1_CEP,'
      '  LC1_CNPJ = :LC1_CNPJ,'
      '  LC1_IE = :LC1_IE,'
      '  LC1_FONE = :LC1_FONE,'
      '  LC1_ENDER = :LC1_ENDER,'
      '  LC1_BAIRRO = :LC1_BAIRRO,'
      '  LC1_DATHOR_INC = :LC1_DATHOR_INC,'
      '  LC1_CODUSR_INC = :LC1_CODUSR_INC,'
      '  LC1_CODUSR_ALT = :LC1_CODUSR_ALT,'
      '  LC1_DATHOR_ALT = :LC1_DATHOR_ALT,'
      '  LC1_EMAIL = :LC1_EMAIL,'
      '  LC1_TPPCO = :LC1_TPPCO,'
      '  LC1_STATUS = :LC1_STATUS,'
      '  LC1_CASASDEC = :LC1_CASASDEC,'
      '  LC1_MODELO_REL = :LC1_MODELO_REL,'
      '  LC1_DECLARACAO = :LC1_DECLARACAO,'
      '  LC1_VALPRO_TEXTO = :LC1_VALPRO_TEXTO'
      '  ,LC1_PROPOSTA_NUMERO = :LC1_PROPOSTA_NUMERO'
      'where'
      '  LC1_CODEMP = :OLD_LC1_CODEMP and'
      '  LC1_CHAVE = :OLD_LC1_CHAVE and'
      '  LC1_DTEMIS = :OLD_LC1_DTEMIS')
    InsertSQL.Strings = (
      'insert into CADLC1'
      '  (LC1_CODEMP, LC1_CHAVE, LC1_DTEMIS, LC1_CODCLI, LC1_AOSCUI,'
      'LC1_FONCUI, '
      '   LC1_CARCON, LC1_DATCON, LC1_VALPRO, LC1_CONDPAG, LC1_OBJETO, '
      'LC1_DIGRMS, '
      '   LC1_PCOAVI, LC1_PCOPRZ, LC1_EXTTAV, LC1_EXTUAV, LC1_EXTPAV, '
      'LC1_EXTTAP, '
      '   LC1_EXTPAP, LC1_EXTUAP, LC1_OBS1, LC1_OBS2, LC1_IMPCAB, '
      'LC1_PRZENT1, '
      '   LC1_PRZENT2, LC1_PRZENT3, LC1_DEC01, LC1_DEC02, LC1_DEC03, '
      'LC1_DEC04, '
      
        '   LC1_DEC05, LC1_DEC06, LC1_DEC07, LC1_DEC08, LC1_DEC09, LC1_DE' +
        'C10, '
      'LC1_HORCON,'
      '   LC1_CODVEN, LC1_LOTSEQ, LC1_BORDAGRADE, LC1_SEPLOTEPREGAO,'
      'LC1_PROPL01,'
      
        '   LC1_PROPL02, LC1_NOMCLI, LC1_NOMLOC, LC1_UF, LC1_CEP, LC1_CNP' +
        'J,'
      'LC1_IE,'
      
        '   LC1_FONE, LC1_ENDER, LC1_BAIRRO, LC1_DATHOR_INC, LC1_CODUSR_I' +
        'NC,'
      'LC1_CODUSR_ALT,'
      
        '   LC1_DATHOR_ALT, LC1_EMAIL, LC1_TPPCO, LC1_STATUS, LC1_CASASDE' +
        'C,'
      'LC1_MODELO_REL,'
      '   LC1_DECLARACAO, LC1_VALPRO_TEXTO'
      ',LC1_PROPOSTA_NUMERO'
      '   )'
      'values'
      
        '  (:LC1_CODEMP, :LC1_CHAVE, :LC1_DTEMIS, :LC1_CODCLI, :LC1_AOSCU' +
        'I,'
      ':LC1_FONCUI, '
      
        '   :LC1_CARCON, :LC1_DATCON, :LC1_VALPRO, :LC1_CONDPAG, :LC1_OBJ' +
        'ETO, '
      ':LC1_DIGRMS, '
      
        '   :LC1_PCOAVI, :LC1_PCOPRZ, :LC1_EXTTAV, :LC1_EXTUAV, :LC1_EXTP' +
        'AV, '
      ':LC1_EXTTAP, '
      '   :LC1_EXTPAP, :LC1_EXTUAP, :LC1_OBS1, :LC1_OBS2, :LC1_IMPCAB, '
      ':LC1_PRZENT1, '
      
        '   :LC1_PRZENT2, :LC1_PRZENT3, :LC1_DEC01, :LC1_DEC02, :LC1_DEC0' +
        '3, '
      ':LC1_DEC04, '
      '   :LC1_DEC05, :LC1_DEC06, :LC1_DEC07, :LC1_DEC08, :LC1_DEC09, '
      ':LC1_DEC10, '
      '   :LC1_HORCON, :LC1_CODVEN, :LC1_LOTSEQ, :LC1_BORDAGRADE, '
      ':LC1_SEPLOTEPREGAO, '
      
        '   :LC1_PROPL01, :LC1_PROPL02, :LC1_NOMCLI, :LC1_NOMLOC, :LC1_UF' +
        ', '
      ':LC1_CEP, '
      '   :LC1_CNPJ, :LC1_IE, :LC1_FONE, :LC1_ENDER, :LC1_BAIRRO, '
      ':LC1_DATHOR_INC, '
      
        '   :LC1_CODUSR_INC, :LC1_CODUSR_ALT, :LC1_DATHOR_ALT, :LC1_EMAIL' +
        ', '
      ':LC1_TPPCO, '
      
        '   :LC1_STATUS, :LC1_CASASDEC, :LC1_MODELO_REL, :LC1_DECLARACAO,' +
        ' '
      ':LC1_VALPRO_TEXTO'
      ',:LC1_PROPOSTA_NUMERO)')
    DeleteSQL.Strings = (
      'delete from CADLC1'
      'where'
      '  LC1_CODEMP = :OLD_LC1_CODEMP and'
      '  LC1_CHAVE = :OLD_LC1_CHAVE and'
      '  LC1_DTEMIS = :OLD_LC1_DTEMIS')
    Left = 407
    Top = 175
  end
  object DataSource1: TDataSource
    DataSet = Tb_LC1
    OnDataChange = DataSource1DataChange
    Left = 436
    Top = 175
  end
  object Tb_LC2: TQuery
    CachedUpdates = True
    BeforePost = Tb_LC2BeforePost
    AfterPost = Tb_LC2AfterPost
    AfterDelete = c
    OnCalcFields = Tb_LC2CalcFields
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select * from CADLC2 where LC2_CODEMP is null')
    UpdateMode = upWhereKeyOnly
    UpdateObject = U_LC2
    Left = 165
    Top = 65532
    object Tb_LC2LC2_CODEMP: TFloatField
      FieldName = 'LC2_CODEMP'
      Origin = 'SG_ASSOC.CADLC2.LC2_CODEMP'
    end
    object Tb_LC2LC2_CODPRO: TFloatField
      FieldName = 'LC2_CODPRO'
      Origin = 'SG_ASSOC.CADLC2.LC2_CODPRO'
    end
    object Tb_LC2LC2_QTD: TFloatField
      FieldName = 'LC2_QTD'
      Origin = 'SG_ASSOC.CADLC2.LC2_QTD'
    end
    object Tb_LC2LC2_UND: TStringField
      FieldName = 'LC2_UND'
      Origin = 'SG_ASSOC.CADLC2.LC2_UND'
      Size = 3
    end
    object Tb_LC2LC2_NOM01: TStringField
      FieldName = 'LC2_NOM01'
      Origin = 'SG_ASSOC.CADLC2.LC2_NOM01'
      Size = 50
    end
    object Tb_LC2LC2_NOM02: TStringField
      FieldName = 'LC2_NOM02'
      Origin = 'SG_ASSOC.CADLC2.LC2_NOM02'
      Size = 50
    end
    object Tb_LC2LC2_NOM03: TStringField
      FieldName = 'LC2_NOM03'
      Origin = 'SG_ASSOC.CADLC2.LC2_NOM03'
      Size = 50
    end
    object Tb_LC2LC2_NOM04: TStringField
      FieldName = 'LC2_NOM04'
      Origin = 'SG_ASSOC.CADLC2.LC2_NOM04'
      Size = 50
    end
    object Tb_LC2LC2_NOM05: TStringField
      FieldName = 'LC2_NOM05'
      Origin = 'SG_ASSOC.CADLC2.LC2_NOM05'
      Size = 50
    end
    object Tb_LC2LC2_NOM06: TStringField
      FieldName = 'LC2_NOM06'
      Origin = 'SG_ASSOC.CADLC2.LC2_NOM06'
      Size = 50
    end
    object Tb_LC2LC2_NOM07: TStringField
      FieldName = 'LC2_NOM07'
      Origin = 'SG_ASSOC.CADLC2.LC2_NOM07'
      Size = 50
    end
    object Tb_LC2LC2_NOM08: TStringField
      FieldName = 'LC2_NOM08'
      Origin = 'SG_ASSOC.CADLC2.LC2_NOM08'
      Size = 50
    end
    object Tb_LC2LC2_NOM09: TStringField
      FieldName = 'LC2_NOM09'
      Origin = 'SG_ASSOC.CADLC2.LC2_NOM09'
      Size = 50
    end
    object Tb_LC2LC2_NOM10: TStringField
      FieldName = 'LC2_NOM10'
      Origin = 'SG_ASSOC.CADLC2.LC2_NOM10'
      Size = 50
    end
    object Tb_LC2LC2_MARCA: TStringField
      FieldName = 'LC2_MARCA'
      Origin = 'SG_ASSOC.CADLC2.LC2_MARCA'
      Size = 15
    end
    object Tb_LC2LC2_RMS: TStringField
      FieldName = 'LC2_RMS'
      Origin = 'SG_ASSOC.CADLC2.LC2_RMS'
      Size = 15
    end
    object Tb_LC2LC2_PCOAV: TFloatField
      FieldName = 'LC2_PCOAV'
      Origin = 'SG_ASSOC.CADLC2.LC2_PCOAV'
    end
    object Tb_LC2LC2_PCOPZ: TFloatField
      FieldName = 'LC2_PCOPZ'
      Origin = 'SG_ASSOC.CADLC2.LC2_PCOPZ'
    end
    object Tb_LC2LC2_CHAVE: TFloatField
      FieldName = 'LC2_CHAVE'
      Origin = 'SG_ASSOC.CADLC2.LC2_CHAVE'
    end
    object Tb_LC2totav: TFloatField
      FieldKind = fkCalculated
      FieldName = 'totav'
      Calculated = True
    end
    object Tb_LC2totpz: TFloatField
      FieldKind = fkCalculated
      FieldName = 'totpz'
      Calculated = True
    end
    object Tb_LC2LC2_ITEM: TFloatField
      FieldName = 'LC2_ITEM'
      Origin = 'SG_ASSOC.CADLC2.LC2_ITEM'
    end
    object Tb_LC2LC2_LOTEPREGAO: TStringField
      FieldName = 'LC2_LOTEPREGAO'
      Origin = 'SG_ASSOC.CADLC2.LC2_LOTEPREGAO'
      Size = 10
    end
    object Tb_LC2LC2_LOTSEQ: TFloatField
      FieldName = 'LC2_LOTSEQ'
      Origin = 'SG_ASSOC.CADLC2.LC2_LOTSEQ'
    end
    object Tb_LC2LC2_QTDENV: TFloatField
      FieldName = 'LC2_QTDENV'
      Origin = 'SG_ASSOC.CADLC2.LC2_QTDENV'
    end
    object Tb_LC2LC2_GANHOU: TStringField
      FieldName = 'LC2_GANHOU'
      Origin = 'SG_ASSOC.CADLC2.LC2_GANHOU'
      Size = 1
    end
    object Tb_LC2LC2_DESCCOMP: TMemoField
      FieldName = 'LC2_DESCCOMP'
      Origin = 'SG_ASSOC.CADLC2.LC2_DESCCOMP'
      BlobType = ftMemo
      Size = 1
    end
  end
  object U_LC2: TUpdateSQL
    ModifySQL.Strings = (
      'update CADLC2'
      'set'
      '  LC2_CODEMP = :LC2_CODEMP,'
      '  LC2_CHAVE = :LC2_CHAVE,'
      '  LC2_ITEM = :LC2_ITEM,'
      '  LC2_CODPRO = :LC2_CODPRO,'
      '  LC2_QTD = :LC2_QTD,'
      '  LC2_UND = :LC2_UND,'
      '  LC2_NOM01 = :LC2_NOM01,'
      '  LC2_NOM02 = :LC2_NOM02,'
      '  LC2_NOM03 = :LC2_NOM03,'
      '  LC2_NOM04 = :LC2_NOM04,'
      '  LC2_NOM05 = :LC2_NOM05,'
      '  LC2_NOM06 = :LC2_NOM06,'
      '  LC2_NOM07 = :LC2_NOM07,'
      '  LC2_NOM08 = :LC2_NOM08,'
      '  LC2_NOM09 = :LC2_NOM09,'
      '  LC2_NOM10 = :LC2_NOM10,'
      '  LC2_MARCA = :LC2_MARCA,'
      '  LC2_RMS = :LC2_RMS,'
      '  LC2_PCOAV = :LC2_PCOAV,'
      '  LC2_PCOPZ = :LC2_PCOPZ,'
      '  LC2_LOTSEQ = :LC2_LOTSEQ,'
      '  LC2_LOTEPREGAO = :LC2_LOTEPREGAO,'
      '  LC2_QTDENV = :LC2_QTDENV,'
      '  LC2_GANHOU = :LC2_GANHOU,'
      '  LC2_DESCCOMP = :LC2_DESCCOMP'
      'where'
      '  LC2_CODEMP = :OLD_LC2_CODEMP and'
      '  LC2_CHAVE = :OLD_LC2_CHAVE and'
      '  LC2_ITEM = :OLD_LC2_ITEM and'
      '  LC2_CODPRO = :OLD_LC2_CODPRO and'
      '  LC2_QTD = :OLD_LC2_QTD and'
      '  LC2_LOTEPREGAO = :OLD_LC2_LOTEPREGAO')
    InsertSQL.Strings = (
      'insert into CADLC2'
      
        '  (LC2_CODEMP, LC2_CHAVE, LC2_ITEM, LC2_CODPRO, LC2_QTD, LC2_UND' +
        ', LC2_NOM01, '
      
        '   LC2_NOM02, LC2_NOM03, LC2_NOM04, LC2_NOM05, LC2_NOM06, LC2_NO' +
        'M07, LC2_NOM08, '
      
        '   LC2_NOM09, LC2_NOM10, LC2_MARCA, LC2_RMS, LC2_PCOAV, LC2_PCOP' +
        'Z, LC2_LOTSEQ, '
      '   LC2_LOTEPREGAO, LC2_QTDENV, LC2_GANHOU, LC2_DESCCOMP)'
      'values'
      
        '  (:LC2_CODEMP, :LC2_CHAVE, :LC2_ITEM, :LC2_CODPRO, :LC2_QTD, :L' +
        'C2_UND, '
      
        '   :LC2_NOM01, :LC2_NOM02, :LC2_NOM03, :LC2_NOM04, :LC2_NOM05, :' +
        'LC2_NOM06, '
      
        '   :LC2_NOM07, :LC2_NOM08, :LC2_NOM09, :LC2_NOM10, :LC2_MARCA, :' +
        'LC2_RMS, '
      
        '   :LC2_PCOAV, :LC2_PCOPZ, :LC2_LOTSEQ, :LC2_LOTEPREGAO, :LC2_QT' +
        'DENV, :LC2_GANHOU, '
      '   :LC2_DESCCOMP)')
    DeleteSQL.Strings = (
      'delete from CADLC2'
      'where'
      '  LC2_CODEMP = :OLD_LC2_CODEMP and'
      '  LC2_CHAVE = :OLD_LC2_CHAVE and'
      '  LC2_ITEM = :OLD_LC2_ITEM and'
      '  LC2_CODPRO = :OLD_LC2_CODPRO and'
      '  LC2_QTD = :OLD_LC2_QTD and'
      '  LC2_LOTEPREGAO = :OLD_LC2_LOTEPREGAO')
    Left = 209
    Top = 68
  end
  object Src_LC2: TDataSource
    DataSet = Tb_LC2
    Left = 253
    Top = 65532
  end
  object Tb_dw_cfg: TQuery
    CachedUpdates = True
    AfterInsert = Tb_LC1AfterInsert
    OnCalcFields = Tb_LC1CalcFields
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      
        'select DW_NOMREL from caddw_cfg where DW_CATEGORIA='#39'LICITACAO'#39' G' +
        'ROUP BY DW_NOMREL')
    UpdateMode = upWhereKeyOnly
    Left = 723
    Top = 191
    object Tb_dw_cfgDW_NOMREL: TStringField
      DisplayLabel = 'Nome do Relatorio'
      FieldName = 'DW_NOMREL'
      Origin = 'SG_ASSOC.CADDW_CFG.DW_NOMREL'
      Size = 60
    end
  end
  object src_dw_cfg: TDataSource
    DataSet = Tb_dw_cfg
    OnDataChange = DataSource1DataChange
    Left = 796
    Top = 207
  end
  object mem_legenda: TRxMemoryData
    FieldDefs = <>
    Left = 212
    Top = 461
    object mem_legendatag: TStringField
      FieldName = 'tag'
      Size = 200
    end
    object mem_legendanome_campo: TStringField
      FieldName = 'nome_campo'
      Size = 200
    end
    object mem_legendadesc_campo: TStringField
      FieldName = 'desc_campo'
      Size = 200
    end
    object mem_legendaformato: TStringField
      FieldName = 'formato'
      Size = 200
    end
  end
  object cds_aliquotas: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 229
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
  object Src_LC_imagem: TDataSource
    DataSet = Tb_LC_imagem
    Left = 484
    Top = 192
  end
  object Tb_LC_imagem: TADOQuery
    Connection = DM1_ADO.ADOConnection1
    Parameters = <
      item
        Name = 'ROWID'
        DataType = ftString
        Size = -1
        Value = ''
      end>
    SQL.Strings = (
      'Select * from CADLIC_IMAGEM'
      ' where  LI_ROWID=:ROWID'
      ' order by LI_SEQ '
      '')
    Left = 448
    Top = 183
    object Tb_LC_imagemLI_ROWID: TStringField
      FieldName = 'LI_ROWID'
      Size = 50
    end
    object Tb_LC_imagemLI_SEQ: TFloatField
      FieldName = 'LI_SEQ'
    end
    object Tb_LC_imagemLI_OBS: TStringField
      DisplayLabel = 'Nome da Imagem'
      FieldName = 'LI_OBS'
      Size = 150
    end
    object Tb_LC_imagemLI_IMAGEM: TBlobField
      FieldName = 'LI_IMAGEM'
    end
    object Tb_LC_imagemLI_NOMEORI: TStringField
      FieldName = 'LI_NOMEORI'
      Size = 254
    end
  end
  object src_aliquotas: TDataSource
    DataSet = cds_aliquotas
    Left = 345
    Top = 171
  end
end
