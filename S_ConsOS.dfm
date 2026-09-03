object Frm_ConsOS: TFrm_ConsOS
  Left = 321
  Top = 88
  Width = 771
  Height = 617
  Caption = 'Consultas de OS'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 763
    Height = 179
    Align = alTop
    Caption = 'Sele'#231#227'o de Registros'
    TabOrder = 0
    object Label2: TLabel
      Left = 181
      Top = 34
      Width = 54
      Height = 13
      Caption = 'Periodo de '
    end
    object Label3: TLabel
      Left = 337
      Top = 35
      Width = 6
      Height = 13
      Caption = #224
    end
    object Label1: TLabel
      Left = 145
      Top = 13
      Width = 89
      Height = 13
      Caption = 'C'#243'digo do Cliente.:'
    end
    object Label4: TLabel
      Left = 171
      Top = 54
      Width = 64
      Height = 13
      Caption = 'Chave Inicial:'
    end
    object Label5: TLabel
      Left = 311
      Top = 55
      Width = 59
      Height = 13
      Caption = 'Chave Final:'
    end
    object Label6: TLabel
      Left = 134
      Top = 75
      Width = 103
      Height = 13
      Caption = 'Vendedor/Atendente:'
    end
    object Label20: TLabel
      Left = 610
      Top = 6
      Width = 115
      Height = 13
      Alignment = taCenter
      AutoSize = False
      Caption = 'Status'
      Color = 16776176
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object Label21: TLabel
      Left = 130
      Top = 98
      Width = 103
      Height = 13
      Caption = 'Ordem Apresenta'#231#227'o:'
    end
    object MDT1: TMaskEdit
      Left = 244
      Top = 30
      Width = 66
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
      Left = 372
      Top = 30
      Width = 66
      Height = 19
      Ctl3D = False
      EditMask = '!99/99/9999;1; '
      MaxLength = 10
      ParentCtl3D = False
      TabOrder = 3
      Text = '  /  /    '
      OnExit = MDT2Exit
    end
    object NOMCLI: TEdit
      Left = 302
      Top = 7
      Width = 297
      Height = 21
      Enabled = False
      ParentColor = True
      TabOrder = 1
      Text = 'Todos...'
    end
    object CODCLI: TEdit
      Left = 244
      Top = 8
      Width = 55
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 0
      OnExit = CODCLIExit
      OnKeyPress = CODCLIKeyPress
    end
    object CHAVEI: TEdit
      Left = 244
      Top = 52
      Width = 55
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 4
      OnExit = CHAVEIExit
    end
    object CHAVEF: TEdit
      Left = 373
      Top = 52
      Width = 55
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 5
      OnExit = CHAVEFExit
    end
    object RG_OPER: TRadioGroup
      Left = 447
      Top = 28
      Width = 153
      Height = 42
      Caption = 'Tipo de OS'
      Columns = 2
      Ctl3D = False
      ItemIndex = 3
      Items.Strings = (
        'A Pagar'
        'Garantia'
        'Contrato'
        'Todos')
      ParentCtl3D = False
      TabOrder = 6
    end
    object bbAtualizar: TBitBtn
      Left = 243
      Top = 145
      Width = 201
      Height = 25
      Caption = 'Atualizar as Informa'#231#245'es'
      TabOrder = 12
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
    object CODVEN: TEdit
      Left = 244
      Top = 72
      Width = 55
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 7
      OnExit = CODVENExit
      OnKeyPress = CODVENKeyPress
    end
    object NOMVEN: TEdit
      Left = 301
      Top = 72
      Width = 297
      Height = 21
      Enabled = False
      ParentColor = True
      TabOrder = 8
      Text = 'Todos...'
    end
    object CLBStatus: TCheckListBox
      Left = 611
      Top = 20
      Width = 111
      Height = 83
      Color = 16776176
      Columns = 1
      ItemHeight = 13
      Items.Strings = (
        'Pendente'
        'Em Andamento'
        'Concluido'
        'Cancelada'
        'Todos')
      Style = lbOwnerDrawFixed
      TabOrder = 9
      OnClick = CLBStatusClick
    end
    object RG_ORDEM: TComboBox
      Left = 244
      Top = 95
      Width = 205
      Height = 21
      ItemHeight = 13
      ItemIndex = 1
      TabOrder = 10
      Text = 'Data OS Decrescente'
      Items.Strings = (
        'Data OS Crescente'
        'Data OS Decrescente')
    end
    object GroupBox3: TGroupBox
      Left = 456
      Top = 94
      Width = 273
      Height = 73
      Caption = 'Que Contenham Equipamentos:'
      TabOrder = 11
      object Label22: TLabel
        Left = 12
        Top = 15
        Width = 94
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'S'#233'rie:'
      end
      object Label23: TLabel
        Left = 9
        Top = 35
        Width = 94
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'N'#250'mero Patrimonial:'
      end
      object Label24: TLabel
        Left = 9
        Top = 53
        Width = 94
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'N'#250'mero RAT:'
      end
      object edt_serie: TEdit
        Left = 106
        Top = 12
        Width = 111
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 0
      end
      object edt_numpat: TEdit
        Left = 106
        Top = 30
        Width = 111
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 1
      end
      object edt_numrat: TEdit
        Left = 106
        Top = 48
        Width = 111
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 2
      end
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 179
    Width = 763
    Height = 166
    Align = alClient
    TabOrder = 1
    object DBNavigator1: TDBNavigator
      Left = 1
      Top = 140
      Width = 761
      Height = 25
      DataSource = Src_Os01
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      Align = alBottom
      TabOrder = 0
    end
    object DBGrid1: TDBGrid
      Left = 1
      Top = 1
      Width = 761
      Height = 139
      Align = alClient
      DataSource = Src_Os01
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnDblClick = DBGrid1DblClick
      Columns = <
        item
          Expanded = False
          FieldName = 'OS1CHAVE'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'OS1DATA'
          Width = 75
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'OS1TOTAL'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CRAZAO'
          Width = 217
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CCIDADE'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CUF'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'OS1DATAAUT'
          Width = 78
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'OS1NOMEAUT'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'OS1DATADEV'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'OS1DATAENT'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'OS1CODCLI'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'OS1CODVEN'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'OS1OPER'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CFONECOM'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'OS1NUMRAT'
          Visible = True
        end>
    end
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 345
    Width = 763
    Height = 200
    ActivePage = TabSheet3
    Align = alBottom
    TabOrder = 2
    OnChange = PageControl1Change
    object TabSheet1: TTabSheet
      Caption = 'Informa'#231#245'es da OS'
      object Label7: TLabel
        Left = 41
        Top = 6
        Width = 67
        Height = 13
        Caption = 'Chave da OS:'
      end
      object Label8: TLabel
        Left = 535
        Top = 5
        Width = 26
        Height = 13
        Caption = 'Data:'
      end
      object Label9: TLabel
        Left = 72
        Top = 27
        Width = 38
        Height = 13
        Caption = 'Cliente.:'
      end
      object Label10: TLabel
        Left = 61
        Top = 48
        Width = 49
        Height = 13
        Caption = 'Endere'#231'o:'
      end
      object Label11: TLabel
        Left = 74
        Top = 68
        Width = 36
        Height = 13
        Caption = 'Cidade:'
      end
      object Label12: TLabel
        Left = 456
        Top = 52
        Width = 30
        Height = 13
        Caption = 'Bairro:'
      end
      object Label13: TLabel
        Left = 459
        Top = 69
        Width = 27
        Height = 13
        Caption = 'CEP.:'
      end
      object Label14: TLabel
        Left = 481
        Top = 108
        Width = 85
        Height = 13
        Caption = 'Data Autoriza'#231#227'o:'
      end
      object Label15: TLabel
        Left = 8
        Top = 88
        Width = 103
        Height = 13
        Caption = 'Atendente/Vendedor:'
      end
      object Label16: TLabel
        Left = 2
        Top = 110
        Width = 110
        Height = 13
        Caption = 'Servi'#231'o Autorizado por:'
      end
      object Label17: TLabel
        Left = 12
        Top = 132
        Width = 99
        Height = 13
        Caption = 'Previs'#227'o da Entrega:'
      end
      object Label18: TLabel
        Left = 32
        Top = 153
        Width = 81
        Height = 13
        Caption = 'Data da Entrada:'
      end
      object Label19: TLabel
        Left = 372
        Top = 70
        Width = 17
        Height = 13
        Caption = 'UF:'
      end
      object DBEdit1: TDBEdit
        Left = 117
        Top = 3
        Width = 94
        Height = 19
        Ctl3D = False
        DataField = 'OS1CHAVE'
        DataSource = Src_Os01
        ParentCtl3D = False
        TabOrder = 0
      end
      object DBEdit2: TDBEdit
        Left = 565
        Top = 3
        Width = 94
        Height = 19
        Ctl3D = False
        DataField = 'OS1DATA'
        DataSource = Src_Os01
        ParentCtl3D = False
        TabOrder = 1
      end
      object DBEdit3: TDBEdit
        Left = 117
        Top = 24
        Width = 58
        Height = 19
        Ctl3D = False
        DataField = 'OS1CODCLI'
        DataSource = Src_Os01
        ParentCtl3D = False
        TabOrder = 2
      end
      object DBEdit4: TDBEdit
        Left = 176
        Top = 24
        Width = 273
        Height = 19
        Ctl3D = False
        DataField = 'CRAZAO'
        DataSource = Src_Os01
        ParentCtl3D = False
        TabOrder = 3
      end
      object DBEdit5: TDBEdit
        Left = 117
        Top = 45
        Width = 273
        Height = 19
        Ctl3D = False
        DataField = 'CLOG'
        DataSource = Src_Os01
        ParentCtl3D = False
        TabOrder = 4
      end
      object DBEdit6: TDBEdit
        Left = 503
        Top = 45
        Width = 199
        Height = 19
        Ctl3D = False
        DataField = 'CBAIRRO'
        DataSource = Src_Os01
        ParentCtl3D = False
        TabOrder = 5
      end
      object DBEdit7: TDBEdit
        Left = 117
        Top = 66
        Width = 239
        Height = 19
        Ctl3D = False
        DataField = 'CCIDADE'
        DataSource = Src_Os01
        ParentCtl3D = False
        TabOrder = 6
      end
      object DBEdit8: TDBEdit
        Left = 396
        Top = 66
        Width = 42
        Height = 19
        Ctl3D = False
        DataField = 'CUF'
        DataSource = Src_Os01
        ParentCtl3D = False
        TabOrder = 7
      end
      object DBEdit9: TDBEdit
        Left = 504
        Top = 66
        Width = 81
        Height = 19
        Ctl3D = False
        DataField = 'CCEP'
        DataSource = Src_Os01
        ParentCtl3D = False
        TabOrder = 8
      end
      object DBEdit10: TDBEdit
        Left = 117
        Top = 87
        Width = 58
        Height = 19
        Ctl3D = False
        DataField = 'OS1CODEMP'
        DataSource = Src_Os01
        ParentCtl3D = False
        TabOrder = 9
      end
      object DBEdit11: TDBEdit
        Left = 176
        Top = 87
        Width = 273
        Height = 19
        Ctl3D = False
        DataField = 'CRAZAO'
        DataSource = Src_Os01
        ParentCtl3D = False
        TabOrder = 10
      end
      object DBEdit12: TDBEdit
        Left = 118
        Top = 108
        Width = 273
        Height = 19
        Ctl3D = False
        DataField = 'OS1NOMEAUT'
        DataSource = Src_Os01
        ParentCtl3D = False
        TabOrder = 11
      end
      object DBEdit13: TDBEdit
        Left = 573
        Top = 107
        Width = 94
        Height = 19
        Ctl3D = False
        DataField = 'OS1DATAAUT'
        DataSource = Src_Os01
        ParentCtl3D = False
        TabOrder = 12
      end
      object DBEdit14: TDBEdit
        Left = 119
        Top = 129
        Width = 94
        Height = 19
        Ctl3D = False
        DataField = 'OS1DATADEV'
        DataSource = Src_Os01
        ParentCtl3D = False
        TabOrder = 13
      end
      object DBEdit15: TDBEdit
        Left = 118
        Top = 151
        Width = 94
        Height = 19
        Ctl3D = False
        DataField = 'OS1DATAENT'
        DataSource = Src_Os01
        ParentCtl3D = False
        TabOrder = 14
      end
      object RadioGroup1: TRadioGroup
        Left = 221
        Top = 128
        Width = 220
        Height = 42
        Caption = 'Opera'#231#227'o:'
        Columns = 3
        Ctl3D = False
        ItemIndex = 0
        Items.Strings = (
          'A Pagar'
          'Garantia'
          'Contrato')
        ParentCtl3D = False
        TabOrder = 15
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Defeito Reclamado'
      ImageIndex = 1
      object DBMemo1: TDBMemo
        Left = 0
        Top = 0
        Width = 755
        Height = 113
        DataField = 'OS1DEFREC'
        DataSource = Src_Os01
        TabOrder = 0
      end
      object GroupBox2: TGroupBox
        Left = 0
        Top = 113
        Width = 755
        Height = 59
        Align = alBottom
        Caption = 'Observa'#231#245'es:'
        TabOrder = 1
        object DBEdit16: TDBEdit
          Left = 6
          Top = 14
          Width = 370
          Height = 19
          Ctl3D = False
          DataField = 'OS1OBS01'
          DataSource = Src_Os01
          ParentCtl3D = False
          TabOrder = 0
        end
        object DBEdit17: TDBEdit
          Left = 6
          Top = 32
          Width = 370
          Height = 19
          Ctl3D = False
          DataField = 'OS1OBS02'
          DataSource = Src_Os01
          ParentCtl3D = False
          TabOrder = 1
        end
        object DBEdit18: TDBEdit
          Left = 379
          Top = 14
          Width = 370
          Height = 19
          Ctl3D = False
          DataField = 'OS1OBS03'
          DataSource = Src_Os01
          ParentCtl3D = False
          TabOrder = 2
        end
        object DBEdit19: TDBEdit
          Left = 379
          Top = 32
          Width = 370
          Height = 19
          Ctl3D = False
          DataField = 'OS1OBS04'
          DataSource = Src_Os01
          ParentCtl3D = False
          TabOrder = 3
        end
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'Equipamentos Entregues'
      ImageIndex = 2
      object DBGrid2: TDBGrid
        Left = 0
        Top = 0
        Width = 755
        Height = 172
        Align = alClient
        DataSource = Src_Os02
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'OS2CHAVE'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'OS2ITEM'
            Width = 31
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'OS2CODPRO'
            Width = 72
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PDNOME'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PDUND'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'OS2MODELO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'OS2MARCA'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'OS2SERIE'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'OS2NUMPAT'
            Visible = True
          end>
      end
    end
    object TabSheet4: TTabSheet
      Caption = 'Servi'#231'os a serem Executados'
      ImageIndex = 3
      object DBGrid3: TDBGrid
        Left = 0
        Top = 0
        Width = 747
        Height = 172
        Align = alClient
        DataSource = Src_Os05
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'OS5CHAVE'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'OS5ITEM'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'OS5CODPRO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PDNOME'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PDUND'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'OS5QTD'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'OS5PU'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'OS5DESC01'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'OS5TOTDES'
            Visible = True
          end>
      end
    end
    object TabSheet5: TTabSheet
      Caption = 'Pe'#231'as Utilizadas'
      ImageIndex = 4
      object DBGrid4: TDBGrid
        Left = 0
        Top = 0
        Width = 755
        Height = 172
        Align = alClient
        DataSource = Src_Os04
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'OS4CHAVE'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'OS4ITEM'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'OS4CODPRO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'OS4QTD'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PDNOME'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PDUND'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'OS4PU'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'OS4DESC01'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'OS4TOTDES'
            Visible = True
          end>
      end
    end
    object TabSheet6: TTabSheet
      Caption = 'Acess'#243'rios Acompanhados'
      ImageIndex = 5
      object DBGrid5: TDBGrid
        Left = 0
        Top = 0
        Width = 755
        Height = 172
        Align = alClient
        DataSource = Src_Os03
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'OS3CHAVE'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'OS3ITEM'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'OS3CODPRO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PDNOME'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PDUND'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'OS3QTD'
            Visible = True
          end>
      end
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 545
    Width = 763
    Height = 41
    Align = alBottom
    TabOrder = 3
    object bbSair: TBitBtn
      Left = 605
      Top = 6
      Width = 139
      Height = 33
      Caption = '&Sair do Programa'
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
  end
  object Src_Os01: TDataSource
    DataSet = Qr_Os01
    OnDataChange = Src_Os01DataChange
    Left = 56
    Top = 232
  end
  object Qr_Os01: TQuery
    OnCalcFields = Qr_Os01CalcFields
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select OS1CODEMP,'
      '       OS1LOTSEQ,'
      '       OS1CHAVE,'
      '       OS1DATA,'
      '       OS1DATAAUT,'
      '       OS1NOMEAUT,'
      '       OS1DATADEV,'
      '       OS1DATAENT,'
      '       OS1CODCLI,'
      '       OS1CODVEN,'
      '       OS1OPER,'
      '       OS1DEFREC,'
      '       OS1OBS01,'
      '       OS1OBS02,'
      '       OS1OBS03,'
      '       OS1OBS04,'
      '       OS1STATUS,'
      '       OS1LOTSEQ_CP,'
      '       OS1CHAVEPED,'
      '       OS1TOTAL,'
      '       OS1TOTSER,'
      '       OS1DESCSER,'
      '       OS1TOTPEC,'
      '       OS1DESCPEC,'
      '       OS1ESTREG,'
      '       OS1DATALT,'
      '       OS1CODUSR,'
      '       OS1NOMSOL,'
      '       OS1NUMRAT,'
      '       CRAZAO,CLOG,'
      '       CBAIRRO,CCIDADE,CUF,'
      '       CCEP, CFONECOM'
      '       from CADOS01,CADCLI where OS1CODEMP is null'
      '       and CCODEMP=OS1CODEMP'
      '       and CCODCLI=OS1CODCLI')
    Left = 88
    Top = 232
    object Qr_Os01OS1CODEMP: TFloatField
      DisplayLabel = 'Empresa'
      FieldName = 'OS1CODEMP'
      Origin = 'SG_ASSOC.CADOS01.OS1CODEMP'
    end
    object Qr_Os01OS1LOTSEQ: TFloatField
      DisplayLabel = 'Lote Seq'
      FieldName = 'OS1LOTSEQ'
      Origin = 'SG_ASSOC.CADOS01.OS1LOTSEQ'
    end
    object Qr_Os01OS1CHAVE: TFloatField
      DisplayLabel = 'Chave'
      FieldName = 'OS1CHAVE'
      Origin = 'SG_ASSOC.CADOS01.OS1CHAVE'
    end
    object Qr_Os01OS1DATA: TDateTimeField
      DisplayLabel = 'Data'
      FieldName = 'OS1DATA'
      Origin = 'SG_ASSOC.CADOS01.OS1DATA'
    end
    object Qr_Os01OS1DATAAUT: TDateTimeField
      DisplayLabel = 'Dt.Aut.'
      FieldName = 'OS1DATAAUT'
      Origin = 'SG_ASSOC.CADOS01.OS1DATAAUT'
    end
    object Qr_Os01OS1DATADEV: TDateTimeField
      DisplayLabel = 'Data Prev.Ent'
      FieldName = 'OS1DATADEV'
      Origin = 'SG_ASSOC.CADOS01.OS1DATADEV'
    end
    object Qr_Os01OS1DATAENT: TDateTimeField
      DisplayLabel = 'Data Entrega'
      FieldName = 'OS1DATAENT'
      Origin = 'SG_ASSOC.CADOS01.OS1DATAENT'
    end
    object Qr_Os01OS1CODCLI: TFloatField
      DisplayLabel = 'C'#243'd.Cliente'
      FieldName = 'OS1CODCLI'
      Origin = 'SG_ASSOC.CADOS01.OS1CODCLI'
    end
    object Qr_Os01OS1CODVEN: TFloatField
      DisplayLabel = 'C'#243'd.Vend.'
      FieldName = 'OS1CODVEN'
      Origin = 'SG_ASSOC.CADOS01.OS1CODVEN'
    end
    object Qr_Os01OS1OPER: TFloatField
      DisplayLabel = 'Oper'
      FieldName = 'OS1OPER'
      Origin = 'SG_ASSOC.CADOS01.OS1OPER'
    end
    object Qr_Os01OS1DEFREC: TBlobField
      DisplayLabel = 'Defeito Reclamado'
      FieldName = 'OS1DEFREC'
      Origin = 'SG_ASSOC.CADOS01.OS1DEFREC'
      Size = 1
    end
    object Qr_Os01OS1OBS01: TStringField
      DisplayLabel = 'Oberva'#231#245'es Linha 01'
      FieldName = 'OS1OBS01'
      Origin = 'SG_ASSOC.CADOS01.OS1OBS01'
      Size = 60
    end
    object Qr_Os01OS1OBS02: TStringField
      DisplayLabel = 'Observa'#231#245'es Linha 02'
      FieldName = 'OS1OBS02'
      Origin = 'SG_ASSOC.CADOS01.OS1OBS02'
      Size = 60
    end
    object Qr_Os01OS1OBS03: TStringField
      DisplayLabel = 'Observa'#231#245'es Linha 03'
      FieldName = 'OS1OBS03'
      Origin = 'SG_ASSOC.CADOS01.OS1OBS03'
      Size = 60
    end
    object Qr_Os01OS1OBS04: TStringField
      DisplayLabel = 'Observa'#231#245'es Linha 04'
      FieldName = 'OS1OBS04'
      Origin = 'SG_ASSOC.CADOS01.OS1OBS04'
      Size = 60
    end
    object Qr_Os01OS1STATUS: TFloatField
      DisplayLabel = 'Status'
      FieldName = 'OS1STATUS'
      Origin = 'SG_ASSOC.CADOS01.OS1STATUS'
    end
    object Qr_Os01OS1LOTSEQ_CP: TFloatField
      DisplayLabel = 'Lote Seq.Chave Ped'
      FieldName = 'OS1LOTSEQ_CP'
      Origin = 'SG_ASSOC.CADOS01.OS1LOTSEQ_CP'
    end
    object Qr_Os01OS1CHAVEPED: TFloatField
      DisplayLabel = 'Chave do Pedido'
      FieldName = 'OS1CHAVEPED'
      Origin = 'SG_ASSOC.CADOS01.OS1CHAVEPED'
    end
    object Qr_Os01CRAZAO: TStringField
      DisplayLabel = 'Raz'#227'o Social'
      FieldName = 'CRAZAO'
      Origin = 'SG_ASSOC.CADCLI.CRAZAO'
      Size = 40
    end
    object Qr_Os01CLOG: TStringField
      DisplayLabel = 'Endere'#231'o'
      FieldName = 'CLOG'
      Origin = 'SG_ASSOC.CADCLI.CLOG'
      Size = 40
    end
    object Qr_Os01CBAIRRO: TStringField
      DisplayLabel = 'Bairro'
      FieldName = 'CBAIRRO'
      Origin = 'SG_ASSOC.CADCLI.CBAIRRO'
      Size = 30
    end
    object Qr_Os01CCIDADE: TStringField
      DisplayLabel = 'Cidade'
      FieldName = 'CCIDADE'
      Origin = 'SG_ASSOC.CADCLI.CCIDADE'
      Size = 30
    end
    object Qr_Os01CUF: TStringField
      DisplayLabel = 'UF'
      FieldName = 'CUF'
      Origin = 'SG_ASSOC.CADCLI.CUF'
      Size = 2
    end
    object Qr_Os01CCEP: TStringField
      DisplayLabel = 'CEP'
      FieldName = 'CCEP'
      Origin = 'SG_ASSOC.CADCLI.CCEP'
      Size = 9
    end
    object Qr_Os01CFONECOM: TStringField
      DisplayLabel = 'Telefone'
      FieldName = 'CFONECOM'
      Origin = 'SG_ASSOC.CADCLI.CFONECOM'
      Size = 16
    end
    object Qr_Os01OS1TOTAL: TFloatField
      DisplayLabel = 'Total da OS'
      FieldName = 'OS1TOTAL'
      Origin = 'SG_ASSOC.CADOS01.OS1TOTAL'
    end
    object Qr_Os01nomven: TStringField
      FieldKind = fkCalculated
      FieldName = 'nomven'
      Size = 40
      Calculated = True
    end
    object Qr_Os01OS1NOMEAUT: TStringField
      DisplayLabel = 'Nome Autoriza'#231#227'o'
      FieldName = 'OS1NOMEAUT'
      Origin = 'SG_ASSOC.CADOS01.OS1NOMEAUT'
      Size = 40
    end
    object Qr_Os01OS1TOTSER: TFloatField
      FieldName = 'OS1TOTSER'
      Origin = 'SG_ASSOC.CADOS01.OS1TOTSER'
    end
    object Qr_Os01OS1DESCSER: TFloatField
      FieldName = 'OS1DESCSER'
      Origin = 'SG_ASSOC.CADOS01.OS1DESCSER'
    end
    object Qr_Os01OS1TOTPEC: TFloatField
      FieldName = 'OS1TOTPEC'
      Origin = 'SG_ASSOC.CADOS01.OS1TOTPEC'
    end
    object Qr_Os01OS1DESCPEC: TFloatField
      FieldName = 'OS1DESCPEC'
      Origin = 'SG_ASSOC.CADOS01.OS1DESCPEC'
    end
    object Qr_Os01OS1ESTREG: TFloatField
      FieldName = 'OS1ESTREG'
      Origin = 'SG_ASSOC.CADOS01.OS1ESTREG'
    end
    object Qr_Os01OS1DATALT: TDateTimeField
      FieldName = 'OS1DATALT'
      Origin = 'SG_ASSOC.CADOS01.OS1DATALT'
    end
    object Qr_Os01OS1CODUSR: TFloatField
      FieldName = 'OS1CODUSR'
      Origin = 'SG_ASSOC.CADOS01.OS1CODUSR'
    end
    object Qr_Os01OS1NOMSOL: TStringField
      FieldName = 'OS1NOMSOL'
      Origin = 'SG_ASSOC.CADOS01.OS1NOMSOL'
      Size = 40
    end
    object Qr_Os01OS1NUMRAT: TStringField
      DisplayLabel = 'Numero Rat'
      FieldName = 'OS1NUMRAT'
      Size = 40
    end
    object Qr_Os01OS1ID_NEW: TFloatField
      FieldName = 'OS1ID_NEW'
    end
  end
  object Qr_Os02: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select OS2CODEMP,'
      '       OS2LOTSEQ,'
      '       OS2CHAVE,'
      '       OS2ITEM,'
      '       OS2CODPRO,'
      '       OS2MODELO,'
      '       OS2MARCA,'
      '       OS2SERIE,'
      '       OS2NUMPAT,'
      '       OS2OBS01,'
      '       OS2OBS02,'
      '       PDNOME,PDUND from CADOS02,CADPRO'
      'where OS2CODEMP is null'
      'and PDCODEMP=OS2CODEMP'
      'and PDCODPRO=OS2CODPRO'
      '')
    Left = 156
    Top = 232
    object Qr_Os02OS2CODEMP: TFloatField
      DisplayLabel = 'Empresa'
      FieldName = 'OS2CODEMP'
      Origin = 'SG_ASSOC.CADOS02.OS2CODEMP'
    end
    object Qr_Os02OS2LOTSEQ: TFloatField
      DisplayLabel = 'Lote Sequencia'
      FieldName = 'OS2LOTSEQ'
      Origin = 'SG_ASSOC.CADOS02.OS2LOTSEQ'
    end
    object Qr_Os02OS2CHAVE: TFloatField
      DisplayLabel = 'Chave'
      FieldName = 'OS2CHAVE'
      Origin = 'SG_ASSOC.CADOS02.OS2CHAVE'
    end
    object Qr_Os02OS2ITEM: TFloatField
      DisplayLabel = #205'tem'
      FieldName = 'OS2ITEM'
      Origin = 'SG_ASSOC.CADOS02.OS2ITEM'
    end
    object Qr_Os02OS2CODPRO: TFloatField
      DisplayLabel = 'C'#243'd.Produto'
      FieldName = 'OS2CODPRO'
      Origin = 'SG_ASSOC.CADOS02.OS2CODPRO'
    end
    object Qr_Os02OS2MODELO: TStringField
      DisplayLabel = 'Modelo'
      FieldName = 'OS2MODELO'
      Origin = 'SG_ASSOC.CADOS02.OS2MODELO'
    end
    object Qr_Os02OS2MARCA: TStringField
      DisplayLabel = 'Marca'
      FieldName = 'OS2MARCA'
      Origin = 'SG_ASSOC.CADOS02.OS2MARCA'
    end
    object Qr_Os02OS2SERIE: TStringField
      DisplayLabel = 'S'#233'rie'
      FieldName = 'OS2SERIE'
      Origin = 'SG_ASSOC.CADOS02.OS2SERIE'
    end
    object Qr_Os02OS2NUMPAT: TStringField
      DisplayLabel = 'N'#250'mero Patrimonial'
      FieldName = 'OS2NUMPAT'
      Origin = 'SG_ASSOC.CADOS02.OS2NUMPAT'
    end
    object Qr_Os02PDNOME: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'PDNOME'
      Origin = 'SG_ASSOC.CADPRO.PDNOME'
      Size = 40
    end
    object Qr_Os02PDUND: TStringField
      DisplayLabel = 'Und'
      FieldName = 'PDUND'
      Origin = 'SG_ASSOC.CADPRO.PDUND'
      Size = 3
    end
    object Qr_Os02OS2OBS01: TStringField
      FieldName = 'OS2OBS01'
      Origin = 'SG_ASSOC.CADOS02.OS2OBS01'
      Size = 130
    end
    object Qr_Os02OS2OBS02: TStringField
      FieldName = 'OS2OBS02'
      Origin = 'SG_ASSOC.CADOS02.OS2OBS02'
      Size = 130
    end
    object Qr_Os02OS2ID_NEW: TFloatField
      FieldName = 'OS2ID_NEW'
    end
    object Qr_Os02OS2ID_OS1_NEW: TFloatField
      FieldName = 'OS2ID_OS1_NEW'
    end
  end
  object Src_Os02: TDataSource
    DataSet = Qr_Os02
    Left = 124
    Top = 232
  end
  object Src_Os05: TDataSource
    DataSet = Qr_Os05
    Left = 440
    Top = 208
  end
  object Qr_Os05: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select OS5CODEMP,'
      '       OS5LOTSEQ,'
      '       OS5CHAVE,'
      '       OS5ITEM,'
      '       OS5CODPRO,'
      '       OS5QTD,'
      '       OS5PU,'
      '       OS5DESC01,'
      '       OS5TOTDES,'
      '      PDNOME,PDUND from CADOS05,CADPRO'
      'where OS5CODEMP is null'
      'and PDCODEMP=OS5CODEMP'
      'and PDCODPRO=OS5CODPRO'
      '')
    Left = 472
    Top = 208
    object Qr_Os05OS5CODEMP: TFloatField
      DisplayLabel = 'Empresa'
      FieldName = 'OS5CODEMP'
      Origin = 'SG_ASSOC.CADOS05.OS5CODEMP'
    end
    object Qr_Os05OS5LOTSEQ: TFloatField
      DisplayLabel = 'Lote Seq.'
      FieldName = 'OS5LOTSEQ'
      Origin = 'SG_ASSOC.CADOS05.OS5LOTSEQ'
    end
    object Qr_Os05OS5CHAVE: TFloatField
      DisplayLabel = 'Chave'
      FieldName = 'OS5CHAVE'
      Origin = 'SG_ASSOC.CADOS05.OS5CHAVE'
    end
    object Qr_Os05OS5ITEM: TFloatField
      DisplayLabel = #205'tem'
      FieldName = 'OS5ITEM'
      Origin = 'SG_ASSOC.CADOS05.OS5ITEM'
    end
    object Qr_Os05OS5CODPRO: TFloatField
      DisplayLabel = 'C'#243'd.Produto'
      FieldName = 'OS5CODPRO'
      Origin = 'SG_ASSOC.CADOS05.OS5CODPRO'
    end
    object Qr_Os05OS5QTD: TFloatField
      DisplayLabel = 'Quantidade'
      FieldName = 'OS5QTD'
      Origin = 'SG_ASSOC.CADOS05.OS5QTD'
    end
    object Qr_Os05OS5PU: TFloatField
      DisplayLabel = 'P'#231'o.Unit'#225'rio'
      FieldName = 'OS5PU'
      Origin = 'SG_ASSOC.CADOS05.OS5PU'
    end
    object Qr_Os05OS5DESC01: TFloatField
      DisplayLabel = 'Desconto'
      FieldName = 'OS5DESC01'
      Origin = 'SG_ASSOC.CADOS05.OS5DESC01'
    end
    object Qr_Os05OS5TOTDES: TFloatField
      DisplayLabel = 'Total Desconto'
      FieldName = 'OS5TOTDES'
      Origin = 'SG_ASSOC.CADOS05.OS5TOTDES'
    end
    object Qr_Os05PDNOME: TStringField
      DisplayLabel = 'Descri'#231#227'o do Produto'
      FieldName = 'PDNOME'
      Origin = 'SG_ASSOC.CADPRO.PDNOME'
      Size = 40
    end
    object Qr_Os05PDUND: TStringField
      DisplayLabel = 'UND'
      FieldName = 'PDUND'
      Origin = 'SG_ASSOC.CADPRO.PDUND'
      Size = 3
    end
    object Qr_Os05OS5ID_NEW: TFloatField
      FieldName = 'OS5ID_NEW'
    end
    object Qr_Os05OS5ID_OS1_NEW: TFloatField
      FieldName = 'OS5ID_OS1_NEW'
    end
  end
  object Src_Os04: TDataSource
    DataSet = Qr_Os04
    Left = 516
    Top = 208
  end
  object Qr_Os04: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select OS4CODEMP,'
      '       OS4LOTSEQ,'
      '       OS4CHAVE,'
      '       OS4ITEM,'
      '       OS4CODPRO,'
      '       OS4QTD,'
      '       OS4PU,'
      '       OS4DESC01,'
      '       OS4TOTDES,'
      '      PDNOME,PDUND from CADOS04,CADPRO'
      'where OS4CODEMP is null'
      'and PDCODEMP=OS4CODEMP'
      'and PDCODPRO=OS4CODPRO')
    Left = 548
    Top = 208
    object Qr_Os04OS4CODEMP: TFloatField
      DisplayLabel = 'Empresa'
      FieldName = 'OS4CODEMP'
      Origin = 'SG_ASSOC.CADOS04.OS4CODEMP'
    end
    object Qr_Os04OS4LOTSEQ: TFloatField
      DisplayLabel = 'Lote Seq'
      FieldName = 'OS4LOTSEQ'
      Origin = 'SG_ASSOC.CADOS04.OS4LOTSEQ'
    end
    object Qr_Os04OS4CHAVE: TFloatField
      DisplayLabel = 'Chave'
      FieldName = 'OS4CHAVE'
      Origin = 'SG_ASSOC.CADOS04.OS4CHAVE'
    end
    object Qr_Os04OS4ITEM: TFloatField
      DisplayLabel = #205'tem'
      FieldName = 'OS4ITEM'
      Origin = 'SG_ASSOC.CADOS04.OS4ITEM'
    end
    object Qr_Os04OS4CODPRO: TFloatField
      DisplayLabel = 'C'#243'd.Produto'
      FieldName = 'OS4CODPRO'
      Origin = 'SG_ASSOC.CADOS04.OS4CODPRO'
    end
    object Qr_Os04OS4QTD: TFloatField
      DisplayLabel = 'Qtd.'
      FieldName = 'OS4QTD'
      Origin = 'SG_ASSOC.CADOS04.OS4QTD'
    end
    object Qr_Os04OS4PU: TFloatField
      DisplayLabel = 'P'#231'o.Unit'#225'rio'
      FieldName = 'OS4PU'
      Origin = 'SG_ASSOC.CADOS04.OS4PU'
    end
    object Qr_Os04OS4DESC01: TFloatField
      DisplayLabel = '%Desc.01'
      FieldName = 'OS4DESC01'
      Origin = 'SG_ASSOC.CADOS04.OS4DESC01'
    end
    object Qr_Os04OS4TOTDES: TFloatField
      DisplayLabel = 'Total Desconto'
      FieldName = 'OS4TOTDES'
      Origin = 'SG_ASSOC.CADOS04.OS4TOTDES'
    end
    object Qr_Os04PDNOME: TStringField
      DisplayLabel = 'Descri'#231#227'o do Produto'
      FieldName = 'PDNOME'
      Origin = 'SG_ASSOC.CADPRO.PDNOME'
      Size = 40
    end
    object Qr_Os04PDUND: TStringField
      DisplayLabel = 'UND'
      FieldName = 'PDUND'
      Origin = 'SG_ASSOC.CADPRO.PDUND'
      Size = 3
    end
    object Qr_Os04OS4ID_NEW: TFloatField
      FieldName = 'OS4ID_NEW'
    end
    object Qr_Os04OS4ID_OS1_NEW: TFloatField
      FieldName = 'OS4ID_OS1_NEW'
    end
  end
  object Src_Os03: TDataSource
    DataSet = Qr_Os03
    Left = 590
    Top = 208
  end
  object Qr_Os03: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select  OS3CODEMP,'
      '        OS3LOTSEQ,'
      '        OS3CHAVE,'
      '        OS3ITEM,'
      '        OS3CODPRO,'
      '        OS3QTD,'
      '      PDNOME,PDUND from CADOS03,CADPRO'
      'where OS3CODEMP is null'
      'and PDCODEMP=OS3CODEMP'
      'and PDCODPRO=OS3CODPRO')
    Left = 622
    Top = 208
    object Qr_Os03OS3CODEMP: TFloatField
      DisplayLabel = 'Empresa'
      FieldName = 'OS3CODEMP'
      Origin = 'SG_ASSOC.CADOS03.OS3CODEMP'
    end
    object Qr_Os03OS3LOTSEQ: TFloatField
      DisplayLabel = 'Lote Seq.'
      FieldName = 'OS3LOTSEQ'
      Origin = 'SG_ASSOC.CADOS03.OS3LOTSEQ'
    end
    object Qr_Os03OS3CHAVE: TFloatField
      DisplayLabel = 'Chave'
      FieldName = 'OS3CHAVE'
      Origin = 'SG_ASSOC.CADOS03.OS3CHAVE'
    end
    object Qr_Os03OS3ITEM: TFloatField
      DisplayLabel = #205'tem'
      FieldName = 'OS3ITEM'
      Origin = 'SG_ASSOC.CADOS03.OS3ITEM'
    end
    object Qr_Os03OS3CODPRO: TFloatField
      DisplayLabel = 'C'#243'd.Produto'
      FieldName = 'OS3CODPRO'
      Origin = 'SG_ASSOC.CADOS03.OS3CODPRO'
    end
    object Qr_Os03OS3QTD: TFloatField
      DisplayLabel = 'Qtd'
      FieldName = 'OS3QTD'
      Origin = 'SG_ASSOC.CADOS03.OS3QTD'
    end
    object Qr_Os03PDNOME: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'PDNOME'
      Origin = 'SG_ASSOC.CADPRO.PDNOME'
      Size = 40
    end
    object Qr_Os03PDUND: TStringField
      DisplayLabel = 'UND'
      FieldName = 'PDUND'
      Origin = 'SG_ASSOC.CADPRO.PDUND'
      Size = 3
    end
    object Qr_Os03OS3ID_NEW: TFloatField
      FieldName = 'OS3ID_NEW'
    end
    object Qr_Os03OS3ID_OS1_NEW: TFloatField
      FieldName = 'OS3ID_OS1_NEW'
    end
  end
end
