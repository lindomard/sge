inherited Frm_Bco: TFrm_Bco
  Left = 102
  Top = 177
  Width = 1085
  Height = 531
  Caption = 'Manuten'#231#227'o no Cadastro de Bancos'
  FormStyle = fsNormal
  OldCreateOrder = True
  Visible = False
  OnCloseQuery = FormCloseQuery
  PixelsPerInch = 96
  TextHeight = 13
  inherited MANUT: TGroupBox [0]
    Top = 382
    Width = 792
    Align = alNone
    ParentFont = False
    inherited INCLUIR: TBitBtn
      Width = 130
    end
    inherited ALTERAR: TBitBtn
      Left = 135
      Width = 130
    end
    inherited EXCLUIR: TBitBtn
      Left = 265
      Width = 130
    end
    inherited GRAVAR: TBitBtn
      Left = 395
      Width = 130
      OnClick = GRAVARClick
    end
    inherited CANCELAR: TBitBtn
      Left = 525
      Width = 130
    end
  end
  inherited GroupBox2: TGroupBox [1]
    Left = 15
    Top = 371
    Width = 744
    Align = alNone
    ParentFont = False
    inherited DBNavigator1: TDBNavigator
      Top = 12
      Width = 520
    end
    inherited SAIR: TBitBtn
      Left = 527
      Top = 12
      Width = 130
      Height = 37
    end
  end
  inherited Panel1: TPanel [2]
    Top = 30
    Width = 1077
    Height = 35
    ParentFont = False
    inherited lbl_emp: TLabel
      Left = 1032
      Height = 33
    end
    inherited Pesquisapor: TLabel
      Top = 15
    end
    inherited BBnAtu: TBitBtn
      Left = 440
      Top = 9
      Height = 22
      OnClick = BBnAtuClick
    end
    inherited CAMPO: TComboBox
      Top = 9
    end
    inherited Edit1: TMaskEdit
      Top = 9
      Width = 228
    end
  end
  inherited PC1: TPageControl [3]
    Top = 65
    Width = 1077
    Height = 435
    ParentFont = False
    TabStop = True
    inherited tsCad: TTabSheet
      object Label1: TLabel
        Left = 124
        Top = 12
        Width = 44
        Height = 13
        Caption = 'C'#243'digo:'
        FocusControl = edt_codbco
      end
      object Label3: TLabel
        Left = 40
        Top = 35
        Width = 132
        Height = 13
        Caption = 'Nome do Banco/Caixa:'
        FocusControl = edt_nome
      end
      object Label5: TLabel
        Left = 340
        Top = 56
        Width = 33
        Height = 13
        Caption = 'Fone:'
        FocusControl = DBEdit5
      end
      object Label4: TLabel
        Left = 21
        Top = 56
        Width = 148
        Height = 13
        Caption = 'Nome Pessoa de Contato:'
        FocusControl = DBEdit4
      end
      object Label6: TLabel
        Left = 338
        Top = 78
        Width = 37
        Height = 13
        Caption = 'Saldo:'
        FocusControl = DBEdit6
      end
      object Label67: TLabel
        Left = 77
        Top = 100
        Width = 92
        Height = 13
        Caption = 'Tarifa Banc'#225'ria:'
        FocusControl = DBE_Tarifa
      end
      object Label69: TLabel
        Left = 6
        Top = 124
        Width = 231
        Height = 13
        Caption = 'N'#250'mero do '#218'ltimo Lote de Lan'#231'amentos:'
      end
      object Label16: TLabel
        Left = 68
        Top = 78
        Width = 100
        Height = 13
        Caption = 'Limite de Cr'#233'dito:'
        FocusControl = DBE_Limite
      end
      object edt_codbco: TDBEdit
        Left = 175
        Top = 10
        Width = 64
        Height = 19
        Color = 14089466
        Ctl3D = False
        DataField = 'BCCODBCO'
        DataSource = DM1.Src_Bco
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 0
        OnExit = edt_codbcoExit
      end
      object GroupBox1: TGroupBox
        Left = 755
        Top = -1
        Width = 297
        Height = 150
        Caption = 'Logotipo do Banco:'
        TabOrder = 8
        object Image1: TImage
          Left = 2
          Top = 15
          Width = 293
          Height = 99
          Align = alTop
          Stretch = True
        end
        object sbnAdquirir: TSpeedButton
          Left = 7
          Top = 117
          Width = 88
          Height = 25
          Caption = '&Adquirir'
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
          OnClick = sbnAdquirirClick
        end
        object SBn_Excluir: TSpeedButton
          Left = 102
          Top = 116
          Width = 88
          Height = 25
          Caption = 'Excluir'
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
          OnClick = SBn_ExcluirClick
        end
      end
      object edt_nome: TDBEdit
        Left = 175
        Top = 32
        Width = 330
        Height = 19
        Color = 14089466
        Ctl3D = False
        DataField = 'BCBANCO'
        DataSource = DM1.Src_Bco
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 1
      end
      object DBEdit5: TDBEdit
        Left = 383
        Top = 54
        Width = 124
        Height = 19
        Color = 14089466
        Ctl3D = False
        DataField = 'BCFONE'
        DataSource = DM1.Src_Bco
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 3
        OnExit = DBEdit5Exit
      end
      object DBEdit4: TDBEdit
        Left = 175
        Top = 54
        Width = 154
        Height = 19
        Color = 14089466
        Ctl3D = False
        DataField = 'BCCONT'
        DataSource = DM1.Src_Bco
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 2
      end
      object DBEdit6: TDBEdit
        Left = 383
        Top = 76
        Width = 124
        Height = 19
        Color = 16765673
        Ctl3D = False
        DataField = 'BCSALDO'
        DataSource = DM1.Src_Bco
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 5
        OnKeyPress = DBE_TarifaKeyPress
      end
      object DBE_Tarifa: TDBEdit
        Left = 175
        Top = 98
        Width = 154
        Height = 19
        Color = 14089466
        Ctl3D = False
        DataField = 'BCTARIFA'
        DataSource = DM1.Src_Bco
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 6
        OnKeyPress = DBE_TarifaKeyPress
      end
      object DBEdit73: TDBEdit
        Left = 270
        Top = 119
        Width = 58
        Height = 19
        Color = 14089466
        Ctl3D = False
        DataField = 'BCLOTMOV'
        DataSource = DM1.Src_Bco
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 7
        OnKeyPress = DBE_TarifaKeyPress
      end
      object GroupBox6: TGroupBox
        Left = 0
        Top = 155
        Width = 1069
        Height = 252
        Align = alBottom
        Caption = 
          'Campos de Preenchimento Obrigat'#243'rios para Emiss'#227'o de Boletos/Las' +
          'er e p/Remessa'
        TabOrder = 9
        object Label14: TLabel
          Left = 374
          Top = 16
          Width = 105
          Height = 13
          Caption = 'N'#250'mero do banco:'
          FocusControl = edt_codbco
        end
        object Label19: TLabel
          Left = 644
          Top = 16
          Width = 38
          Height = 13
          Caption = 'Digito:'
          FocusControl = edt_codbco
        end
        object Label20: TLabel
          Left = 6
          Top = 117
          Width = 121
          Height = 13
          Caption = 'Local de Pagamento:'
        end
        object Label12: TLabel
          Left = 2
          Top = 98
          Width = 281
          Height = 13
          Caption = 'Conv/Cod.Cliente no Banco(pre-fixo) nosso num):'
        end
        object Label70: TLabel
          Left = 477
          Top = 98
          Width = 38
          Height = 13
          Caption = 'Digito:'
          Visible = False
        end
        object Label13: TLabel
          Left = 28
          Top = 39
          Width = 91
          Height = 13
          Caption = 'Conta/Cedente:'
          FocusControl = DBEdit16
        end
        object Label18: TLabel
          Left = 210
          Top = 39
          Width = 24
          Height = 13
          Caption = 'Dig:'
        end
        object Label7: TLabel
          Left = 30
          Top = 58
          Width = 94
          Height = 13
          Caption = 'C'#243'digo Agencia:'
        end
        object Label71: TLabel
          Left = 289
          Top = 58
          Width = 38
          Height = 13
          Caption = 'Digito:'
        end
        object Label8: TLabel
          Left = 373
          Top = 58
          Width = 105
          Height = 13
          Caption = 'Nome da Ag'#234'ncia:'
        end
        object Label21: TLabel
          Left = 49
          Top = 16
          Width = 75
          Height = 13
          Caption = 'Esp'#233'cie doc:'
        end
        object Label22: TLabel
          Left = 285
          Top = 16
          Width = 41
          Height = 13
          Caption = 'Aceite:'
        end
        object Label10: TLabel
          Left = 14
          Top = 80
          Width = 110
          Height = 13
          Caption = 'C'#243'digo da Carteira:'
        end
        object Label11: TLabel
          Left = 560
          Top = 99
          Width = 88
          Height = 13
          Hint = 'N'#250'mero do Proximo Boleto Banc'#225'rio:'
          Caption = 'Proximo boleto:'
          ParentShowHint = False
          ShowHint = True
        end
        object Label9: TLabel
          Left = 9
          Top = 153
          Width = 176
          Height = 13
          Caption = 'Instru'#231#245'es no Boleto Bancario:'
        end
        object Label68: TLabel
          Left = 561
          Top = 118
          Width = 150
          Height = 34
          Alignment = taCenter
          Caption = 'Nome da Tabula'#231#227'o da Boleta Pr'#233'-Impressa:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -15
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          ParentFont = False
          WordWrap = True
        end
        object DBText1: TDBText
          Left = 564
          Top = 162
          Width = 60
          Height = 17
          Alignment = taCenter
          AutoSize = True
          DataField = 'nometab'
          DataSource = DM1.Src_Bco
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -15
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          ParentFont = False
          WordWrap = True
        end
        object Label2: TLabel
          Left = 381
          Top = 37
          Width = 97
          Height = 13
          Caption = 'Nome do T'#237'tular:'
        end
        object Label15: TLabel
          Left = 363
          Top = 81
          Width = 157
          Height = 13
          Caption = 'C'#243'd.Varia'#231#227'o/Sub-Carteira:'
        end
        object lbl_razcta: TLabel
          Left = 254
          Top = 39
          Width = 78
          Height = 13
          Caption = 'Razao Conta:'
        end
        object Label33: TLabel
          Left = 758
          Top = 13
          Width = 129
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'C'#243'digo Carteira(C006):'
        end
        object Label34: TLabel
          Left = 758
          Top = 61
          Width = 129
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Layout Padr'#227'o:'
        end
        object DBEdit17: TDBEdit
          Left = 483
          Top = 14
          Width = 125
          Height = 19
          Color = 14089466
          Ctl3D = False
          DataField = 'BCNUMBCO'
          DataSource = DM1.Src_Bco
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 2
        end
        object DBEdit22: TDBEdit
          Left = 684
          Top = 14
          Width = 29
          Height = 19
          Color = 14089466
          Ctl3D = False
          DataField = 'BCDIGNCO'
          DataSource = DM1.Src_Bco
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 3
        end
        object DBEdit23: TDBEdit
          Left = 129
          Top = 113
          Width = 422
          Height = 19
          Color = 14089466
          Ctl3D = False
          DataField = 'BCB_LOCP'
          DataSource = DM1.Src_Bco
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 16
        end
        object DBEdit15: TDBEdit
          Left = 285
          Top = 95
          Width = 120
          Height = 19
          Color = 14089466
          Ctl3D = False
          DataField = 'BCNUMCON'
          DataSource = DM1.Src_Bco
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 13
        end
        object DBEdit21: TDBEdit
          Left = 523
          Top = 95
          Width = 28
          Height = 19
          Color = 14089466
          Ctl3D = False
          DataField = 'BCDIGCON'
          DataSource = DM1.Src_Bco
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 14
          Visible = False
        end
        object DBEdit16: TDBEdit
          Left = 129
          Top = 35
          Width = 79
          Height = 19
          Color = 14089466
          Ctl3D = False
          DataField = 'BCCODCED'
          DataSource = DM1.Src_Bco
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 4
        end
        object db_digced: TDBEdit
          Left = 234
          Top = 35
          Width = 20
          Height = 19
          Color = 14089466
          Ctl3D = False
          DataField = 'BCDIGCED'
          DataSource = DM1.Src_Bco
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 5
        end
        object DBEdit7: TDBEdit
          Left = 129
          Top = 56
          Width = 125
          Height = 19
          Color = 14089466
          Ctl3D = False
          DataField = 'BCCODAGE'
          DataSource = DM1.Src_Bco
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 8
          OnExit = DBEdit7Exit
        end
        object DBEdit19: TDBEdit
          Left = 332
          Top = 56
          Width = 29
          Height = 19
          Color = 14089466
          Ctl3D = False
          DataField = 'BCDIGAGE'
          DataSource = DM1.Src_Bco
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 9
        end
        object DBEdit8: TDBEdit
          Left = 483
          Top = 56
          Width = 167
          Height = 19
          Color = 14089466
          Ctl3D = False
          DataField = 'BCNOMAGE'
          DataSource = DM1.Src_Bco
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 10
        end
        object DBEdit24: TDBEdit
          Left = 129
          Top = 14
          Width = 65
          Height = 19
          Color = 14089466
          Ctl3D = False
          DataField = 'BCB_ESPD'
          DataSource = DM1.Src_Bco
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 0
        end
        object DBEdit25: TDBEdit
          Left = 331
          Top = 14
          Width = 29
          Height = 19
          Color = 14089466
          Ctl3D = False
          DataField = 'BCB_ACEITE'
          DataSource = DM1.Src_Bco
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 1
        end
        object DBEdit13: TDBEdit
          Left = 129
          Top = 77
          Width = 43
          Height = 19
          Color = 14089466
          Ctl3D = False
          DataField = 'BCCODCAR'
          DataSource = DM1.Src_Bco
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 11
        end
        object db_proxnumbol: TDBEdit
          Left = 653
          Top = 95
          Width = 55
          Height = 19
          Color = 14089466
          Ctl3D = False
          DataField = 'BCNUMBOL'
          DataSource = DM1.Src_Bco
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 15
        end
        object db_inst01: TDBEdit
          Left = 198
          Top = 149
          Width = 353
          Height = 19
          Color = 14089466
          Ctl3D = False
          DataField = 'BCINST01'
          DataSource = DM1.Src_Bco
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 18
        end
        object db_inst02: TDBEdit
          Left = 198
          Top = 167
          Width = 353
          Height = 19
          Color = 14089466
          Ctl3D = False
          DataField = 'BCINST02'
          DataSource = DM1.Src_Bco
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 19
        end
        object db_inst03: TDBEdit
          Left = 198
          Top = 185
          Width = 353
          Height = 19
          Color = 14089466
          Ctl3D = False
          DataField = 'BCINST03'
          DataSource = DM1.Src_Bco
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 20
        end
        object db_inst04: TDBEdit
          Left = 198
          Top = 203
          Width = 353
          Height = 19
          Color = 14089466
          Ctl3D = False
          DataField = 'BCINST04'
          DataSource = DM1.Src_Bco
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 21
        end
        object DBEdit2: TDBEdit
          Left = 483
          Top = 35
          Width = 265
          Height = 19
          Color = 14089466
          Ctl3D = False
          DataField = 'BCNOMTIT'
          DataSource = DM1.Src_Bco
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 7
        end
        object DBEdit18: TDBEdit
          Left = 523
          Top = 77
          Width = 43
          Height = 19
          Color = 14089466
          Ctl3D = False
          DataField = 'BCCODVAR'
          DataSource = DM1.Src_Bco
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 12
        end
        object DBEdit26: TDBEdit
          Left = 171
          Top = 77
          Width = 188
          Height = 19
          Color = 16765673
          Ctl3D = False
          DataField = 'nomcar'
          DataSource = DM1.Src_Bco
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 23
        end
        object dbrazcta: TDBEdit
          Left = 331
          Top = 35
          Width = 49
          Height = 19
          Color = 14089466
          Ctl3D = False
          DataField = 'BCRAZAOCTA'
          DataSource = DM1.Src_Bco
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 6
        end
        object dbcb_pvrep: TDBCheckBox
          Left = 8
          Top = 229
          Width = 498
          Height = 13
          Caption = 
            'Imprimir junto as instru'#231#245'es c'#243'd.Plano de Vendas e c'#243'd.Represent' +
            'ante'
          DataField = 'BCIMPPVREP'
          DataSource = DM1.Src_Bco
          TabOrder = 22
          ValueChecked = '1'
          ValueUnchecked = '0'
        end
        object bbProxima: TBitBtn
          Left = 739
          Top = 180
          Width = 38
          Height = 47
          Cursor = crHandPoint
          Caption = 'Cont...'
          TabOrder = 24
          OnClick = bbProximaClick
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000130B0000130B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
            333333333333333333FF33333333333330003FF3FFFFF3333777003000003333
            300077F777773F333777E00BFBFB033333337773333F7F33333FE0BFBF000333
            330077F3337773F33377E0FBFBFBF033330077F3333FF7FFF377E0BFBF000000
            333377F3337777773F3FE0FBFBFBFBFB039977F33FFFFFFF7377E0BF00000000
            339977FF777777773377000BFB03333333337773FF733333333F333000333333
            3300333777333333337733333333333333003333333333333377333333333333
            333333333333333333FF33333333333330003333333333333777333333333333
            3000333333333333377733333333333333333333333333333333}
          Layout = blGlyphTop
          NumGlyphs = 2
        end
        object DBE_BCB_LOCP02: TDBEdit
          Left = 129
          Top = 131
          Width = 422
          Height = 19
          Color = 14089466
          Ctl3D = False
          DataField = 'BCB_LOCP02'
          DataSource = DM1.Src_Bco
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 17
        end
        object DBCB_BCCODCAR_C006: TRxDBComboBox
          Left = 887
          Top = 8
          Width = 171
          Height = 21
          Style = csDropDownList
          Ctl3D = True
          DataField = 'BCCODCAR_C006'
          DataSource = DM1.Src_Bco
          EnableValues = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ItemHeight = 13
          Items.Strings = (
            '1 = Cobran'#231'a Simples'
            '2 = Cobran'#231'a Vinculada'
            '3 = Cobran'#231'a Caucionada'
            '4 = Cobran'#231'a Descontada'
            '5 = Cobran'#231'a Vendor')
          ParentCtl3D = False
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 25
          Values.Strings = (
            '0'
            '1'
            '2'
            '3'
            '4'
            '5'
            '')
        end
        object DBCB_BCLAYOUT_PADRAO: TRxDBComboBox
          Left = 886
          Top = 53
          Width = 171
          Height = 21
          Style = csDropDownList
          Ctl3D = True
          DataField = 'BCLAYOUT_PADRAO'
          DataSource = DM1.Src_Bco
          EnableValues = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ItemHeight = 13
          Items.Strings = (
            'CNAB400'
            'CNAB240')
          ParentCtl3D = False
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 26
          Values.Strings = (
            '0'
            '1'
            ''
            ''
            ''
            '')
        end
        object GroupBox11: TGroupBox
          Left = 816
          Top = 112
          Width = 185
          Height = 105
          Caption = 'Dados do Emitentte:'
          TabOrder = 27
          object Label35: TLabel
            Left = 5
            Top = 20
            Width = 98
            Height = 13
            Caption = 'Tipo Documento:'
          end
          object lbl_BCDOCEMIBOL: TLabel
            Left = 6
            Top = 43
            Width = 36
            Height = 13
            Caption = 'CNPJ:'
          end
          object RxDBCB_BCDOCEMIBOL: TRxDBComboBox
            Left = 117
            Top = 16
            Width = 62
            Height = 21
            Style = csDropDownList
            Ctl3D = True
            DataField = 'BCDOCEMIBOL'
            DataSource = DM1.Src_Bco
            EnableValues = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ItemHeight = 13
            Items.Strings = (
              'CNPJ'
              'CPF')
            ParentCtl3D = False
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 0
            Values.Strings = (
              '0'
              '1')
            OnClick = RxDBCB_BCDOCEMIBOLClick
          end
          object edt_cnpj: TMaskEdit
            Left = 44
            Top = 39
            Width = 137
            Height = 19
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 1
            OnExit = edt_cnpjExit
          end
        end
      end
      object DBE_Limite: TDBEdit
        Left = 175
        Top = 76
        Width = 154
        Height = 19
        Color = 14089466
        Ctl3D = False
        DataField = 'BCLIMITE'
        DataSource = DM1.Src_Bco
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 4
      end
      object GroupBox10: TGroupBox
        Left = 519
        Top = 5
        Width = 232
        Height = 41
        Caption = 'Situa'#231#227'o:'
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 10
        object RxDBCB_CST_ICMS_EST_REV: TRxDBComboBox
          Left = 6
          Top = 15
          Width = 219
          Height = 21
          Style = csDropDownList
          Ctl3D = True
          DataField = 'BCSITCAD'
          DataSource = DM1.Src_Bco
          EnableValues = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ItemHeight = 13
          Items.Strings = (
            '0 - Normal'
            '8 - Bloqueio temporario'
            '9 - Bloqueio Permanente'
            '')
          ParentCtl3D = False
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
          Values.Strings = (
            '0'
            '8'
            '9')
        end
      end
    end
    object TabSheet2: TTabSheet [1]
      Caption = '&Cheques'
      Enabled = False
      ImageIndex = 3
      object GroupBox4: TGroupBox
        Left = 0
        Top = 0
        Width = 1069
        Height = 170
        Align = alTop
        Caption = 'Tabula'#231#227'o para impress'#245'es de cheques'
        TabOrder = 0
        object Label49: TLabel
          Left = 258
          Top = 12
          Width = 187
          Height = 13
          Caption = 'Quantidade de Linhas/Tamanho:'
        end
        object Label50: TLabel
          Left = 164
          Top = 37
          Width = 32
          Height = 13
          Caption = 'Linha'
        end
        object Label51: TLabel
          Left = 207
          Top = 37
          Width = 40
          Height = 13
          Caption = 'Coluna'
        end
        object Bevel22: TBevel
          Left = 0
          Top = 32
          Width = 782
          Height = 2
        end
        object Bevel23: TBevel
          Left = 1
          Top = 53
          Width = 774
          Height = 2
        end
        object Bevel24: TBevel
          Left = 160
          Top = 33
          Width = 2
          Height = 136
        end
        object Bevel25: TBevel
          Left = 204
          Top = 34
          Width = 2
          Height = 114
        end
        object Bevel26: TBevel
          Left = 249
          Top = 6
          Width = 2
          Height = 161
        end
        object Label52: TLabel
          Left = 2
          Top = 36
          Width = 32
          Height = 13
          Caption = 'Emite'
        end
        object Label53: TLabel
          Left = 356
          Top = 37
          Width = 43
          Height = 13
          Caption = 'Campo:'
        end
        object Bevel27: TBevel
          Left = 492
          Top = 33
          Width = 2
          Height = 113
        end
        object Label54: TLabel
          Left = 494
          Top = 38
          Width = 32
          Height = 13
          Caption = 'Linha'
        end
        object Bevel28: TBevel
          Left = 536
          Top = 34
          Width = 2
          Height = 112
        end
        object Label55: TLabel
          Left = 538
          Top = 38
          Width = 40
          Height = 13
          Caption = 'Coluna'
        end
        object Bevel29: TBevel
          Left = 308
          Top = 34
          Width = 2
          Height = 134
        end
        object Bevel30: TBevel
          Left = 318
          Top = 34
          Width = 2
          Height = 134
        end
        object Bevel31: TBevel
          Left = 1
          Top = 74
          Width = 782
          Height = 2
        end
        object Bevel32: TBevel
          Left = -7
          Top = 97
          Width = 790
          Height = 2
        end
        object Bevel33: TBevel
          Left = -7
          Top = 122
          Width = 789
          Height = 2
        end
        object Bevel34: TBevel
          Left = -7
          Top = 145
          Width = 792
          Height = 2
        end
        object Label56: TLabel
          Left = 39
          Top = 58
          Width = 95
          Height = 13
          Caption = 'Valor do Cheque'
        end
        object Bevel35: TBevel
          Left = 34
          Top = 35
          Width = 2
          Height = 137
        end
        object Label57: TLabel
          Left = 39
          Top = 78
          Width = 88
          Height = 13
          Caption = 'Extenso linha 2'
        end
        object Label58: TLabel
          Left = 39
          Top = 104
          Width = 85
          Height = 13
          Caption = 'Cidade/Estado'
        end
        object Label59: TLabel
          Left = 39
          Top = 127
          Width = 73
          Height = 13
          Caption = 'M'#234's emiss'#227'o'
        end
        object Bevel36: TBevel
          Left = 353
          Top = 33
          Width = 2
          Height = 114
        end
        object Label60: TLabel
          Left = 356
          Top = 56
          Width = 92
          Height = 13
          Caption = 'Extenso Linha 1'
        end
        object Label61: TLabel
          Left = 320
          Top = 37
          Width = 32
          Height = 13
          Caption = 'Emite'
        end
        object Label62: TLabel
          Left = 356
          Top = 80
          Width = 46
          Height = 13
          Caption = 'Nominal'
        end
        object Label63: TLabel
          Left = 356
          Top = 102
          Width = 88
          Height = 13
          Caption = 'Dia de Emiss'#227'o'
        end
        object Label64: TLabel
          Left = 356
          Top = 127
          Width = 91
          Height = 13
          Caption = 'Ano de Emiss'#227'o'
        end
        object Bevel39: TBevel
          Left = 801
          Top = 34
          Width = 2
          Height = 116
        end
        object Bevel41: TBevel
          Left = 585
          Top = 33
          Width = 2
          Height = 112
        end
        object Bevel42: TBevel
          Left = 782
          Top = 31
          Width = 2
          Height = 114
        end
        object Label73: TLabel
          Left = 38
          Top = 150
          Width = 58
          Height = 13
          Caption = 'Bom para '
        end
        object Label74: TLabel
          Left = 40
          Top = 36
          Width = 43
          Height = 13
          Caption = 'Campo:'
        end
        object Label65: TLabel
          Left = 252
          Top = 38
          Width = 53
          Height = 13
          Caption = 'Tamanho'
        end
        object Label66: TLabel
          Left = 586
          Top = 37
          Width = 53
          Height = 13
          Caption = 'Tamanho'
        end
        object Bevel37: TBevel
          Left = 639
          Top = 32
          Width = 2
          Height = 113
        end
        object Label25: TLabel
          Left = 647
          Top = 37
          Width = 46
          Height = 13
          Caption = 'Formato'
        end
        object DBCheckBox15: TDBCheckBox
          Left = 10
          Top = 13
          Width = 234
          Height = 17
          Caption = 'Imprimir em oito linhas por polegadas'
          DataField = 'BCCH_QTDLP'
          DataSource = DM1.Src_Bco
          TabOrder = 0
          ValueChecked = '0'
          ValueUnchecked = '1'
        end
        object DBEdit53: TDBEdit
          Left = 450
          Top = 10
          Width = 65
          Height = 19
          Ctl3D = False
          DataField = 'BCCH_QTDLC'
          DataSource = DM1.Src_Bco
          ParentCtl3D = False
          TabOrder = 1
        end
        object DBCheckBox16: TDBCheckBox
          Left = 10
          Top = 55
          Width = 14
          Height = 17
          Caption = 'Local de Pagamento'
          DataField = 'BCCH_IV'
          DataSource = DM1.Src_Bco
          TabOrder = 2
          ValueChecked = '0'
          ValueUnchecked = '1'
        end
        object DBEdit54: TDBEdit
          Left = 164
          Top = 55
          Width = 40
          Height = 19
          Ctl3D = False
          DataField = 'BCCH_VL'
          DataSource = DM1.Src_Bco
          ParentCtl3D = False
          TabOrder = 3
        end
        object DBEdit55: TDBEdit
          Left = 207
          Top = 55
          Width = 40
          Height = 19
          Ctl3D = False
          DataField = 'BCCH_VC'
          DataSource = DM1.Src_Bco
          ParentCtl3D = False
          TabOrder = 4
        end
        object DBCheckBox17: TDBCheckBox
          Left = 331
          Top = 55
          Width = 14
          Height = 17
          Caption = 'Imprimir data de Vencimento'
          DataField = 'BCCH_IEXL1'
          DataSource = DM1.Src_Bco
          TabOrder = 5
          ValueChecked = '0'
          ValueUnchecked = '1'
        end
        object DBEdit56: TDBEdit
          Left = 494
          Top = 55
          Width = 40
          Height = 19
          Ctl3D = False
          DataField = 'BCCH_EXL1L'
          DataSource = DM1.Src_Bco
          ParentCtl3D = False
          TabOrder = 6
        end
        object DBEdit57: TDBEdit
          Left = 538
          Top = 55
          Width = 40
          Height = 19
          Ctl3D = False
          DataField = 'BCCH_EXL1C'
          DataSource = DM1.Src_Bco
          ParentCtl3D = False
          TabOrder = 7
        end
        object DBCheckBox18: TDBCheckBox
          Left = 10
          Top = 77
          Width = 16
          Height = 17
          Caption = 'Data de Emiss'#227'o'
          DataField = 'BCCH_IEXL2'
          DataSource = DM1.Src_Bco
          TabOrder = 9
          ValueChecked = '0'
          ValueUnchecked = '1'
        end
        object DBEdit58: TDBEdit
          Left = 164
          Top = 78
          Width = 40
          Height = 19
          Ctl3D = False
          DataField = 'BCCH_EXL2L'
          DataSource = DM1.Src_Bco
          ParentCtl3D = False
          TabOrder = 10
        end
        object DBEdit59: TDBEdit
          Left = 207
          Top = 78
          Width = 40
          Height = 19
          Ctl3D = False
          DataField = 'BCCH_EXL2C'
          DataSource = DM1.Src_Bco
          ParentCtl3D = False
          TabOrder = 11
        end
        object DBCheckBox19: TDBCheckBox
          Left = 331
          Top = 78
          Width = 16
          Height = 17
          Caption = 'Imprimir N'#250'mero do documento'
          DataField = 'BCCH_INOM'
          DataSource = DM1.Src_Bco
          TabOrder = 13
          ValueChecked = '0'
          ValueUnchecked = '1'
        end
        object DBEdit60: TDBEdit
          Left = 494
          Top = 78
          Width = 40
          Height = 19
          Ctl3D = False
          DataField = 'BCCH_NOML'
          DataSource = DM1.Src_Bco
          ParentCtl3D = False
          TabOrder = 14
        end
        object DBEdit61: TDBEdit
          Left = 538
          Top = 78
          Width = 40
          Height = 19
          Ctl3D = False
          DataField = 'BCCH_NOMC'
          DataSource = DM1.Src_Bco
          ParentCtl3D = False
          TabOrder = 15
        end
        object DBCheckBox20: TDBCheckBox
          Left = 10
          Top = 126
          Width = 16
          Height = 17
          Caption = 'Imprimir Valor Documento'
          DataField = 'BCCH_IMES'
          DataSource = DM1.Src_Bco
          TabOrder = 23
          ValueChecked = '0'
          ValueUnchecked = '1'
        end
        object DBEdit62: TDBEdit
          Left = 164
          Top = 126
          Width = 40
          Height = 19
          Ctl3D = False
          DataField = 'BCCH_MESL'
          DataSource = DM1.Src_Bco
          ParentCtl3D = False
          TabOrder = 24
        end
        object DBEdit63: TDBEdit
          Left = 207
          Top = 126
          Width = 40
          Height = 19
          Ctl3D = False
          DataField = 'BCCH_MESC'
          DataSource = DM1.Src_Bco
          ParentCtl3D = False
          TabOrder = 25
        end
        object DBCheckBox21: TDBCheckBox
          Left = 331
          Top = 124
          Width = 15
          Height = 17
          Caption = 'Imprimir Texto Instru'#231#245'es'
          DataField = 'BCCH_IANO'
          DataSource = DM1.Src_Bco
          TabOrder = 26
          ValueChecked = '0'
          ValueUnchecked = '1'
        end
        object DBEdit64: TDBEdit
          Left = 494
          Top = 126
          Width = 40
          Height = 19
          Ctl3D = False
          DataField = 'BCCH_ANOL'
          DataSource = DM1.Src_Bco
          ParentCtl3D = False
          TabOrder = 27
        end
        object DBEdit65: TDBEdit
          Left = 538
          Top = 126
          Width = 40
          Height = 19
          Ctl3D = False
          DataField = 'BCCH_ANOC'
          DataSource = DM1.Src_Bco
          ParentCtl3D = False
          TabOrder = 28
        end
        object DBEdit66: TDBEdit
          Left = 538
          Top = 102
          Width = 40
          Height = 19
          Ctl3D = False
          DataField = 'BCCH_DIAC'
          DataSource = DM1.Src_Bco
          ParentCtl3D = False
          TabOrder = 22
        end
        object DBEdit67: TDBEdit
          Left = 494
          Top = 102
          Width = 40
          Height = 19
          Ctl3D = False
          DataField = 'BCCH_DIAL'
          DataSource = DM1.Src_Bco
          ParentCtl3D = False
          TabOrder = 21
        end
        object DBCheckBox22: TDBCheckBox
          Left = 331
          Top = 101
          Width = 18
          Height = 17
          Caption = 'Imprimir Esp'#233'cie Moeda'
          DataField = 'BCCH_IDIA'
          DataSource = DM1.Src_Bco
          TabOrder = 20
          ValueChecked = '0'
          ValueUnchecked = '1'
        end
        object DBEdit68: TDBEdit
          Left = 207
          Top = 102
          Width = 40
          Height = 19
          Ctl3D = False
          DataField = 'BCCH_CIDC'
          DataSource = DM1.Src_Bco
          ParentCtl3D = False
          TabOrder = 19
        end
        object DBEdit69: TDBEdit
          Left = 164
          Top = 102
          Width = 40
          Height = 19
          Ctl3D = False
          DataField = 'BCCH_CIDL'
          DataSource = DM1.Src_Bco
          ParentCtl3D = False
          TabOrder = 18
        end
        object DBCheckBox23: TDBCheckBox
          Left = 10
          Top = 101
          Width = 15
          Height = 17
          Caption = 'Imprimir data Processamento'
          DataField = 'BCCH_ICID'
          DataSource = DM1.Src_Bco
          TabOrder = 17
          ValueChecked = '0'
          ValueUnchecked = '1'
        end
        object DBCheckBox28: TDBCheckBox
          Left = 10
          Top = 149
          Width = 16
          Height = 17
          Caption = 'Imprimir Valor Documento'
          DataField = 'BCCH_IBOMP'
          DataSource = DM1.Src_Bco
          TabOrder = 30
          ValueChecked = '0'
          ValueUnchecked = '1'
        end
        object DBEdit78: TDBEdit
          Left = 164
          Top = 149
          Width = 40
          Height = 19
          Ctl3D = False
          DataField = 'BCCH_BOMPL'
          DataSource = DM1.Src_Bco
          ParentCtl3D = False
          TabOrder = 31
        end
        object DBEdit79: TDBEdit
          Left = 207
          Top = 149
          Width = 40
          Height = 19
          Ctl3D = False
          DataField = 'BCCH_BOMPC'
          DataSource = DM1.Src_Bco
          ParentCtl3D = False
          TabOrder = 32
        end
        object DBEdit70: TDBEdit
          Left = 587
          Top = 55
          Width = 50
          Height = 19
          Ctl3D = False
          DataField = 'BCCH_EXL1T'
          DataSource = DM1.Src_Bco
          ParentCtl3D = False
          TabOrder = 8
        end
        object DBEdit71: TDBEdit
          Left = 253
          Top = 78
          Width = 52
          Height = 19
          Ctl3D = False
          DataField = 'BCCH_EXL2T'
          DataSource = DM1.Src_Bco
          ParentCtl3D = False
          TabOrder = 12
        end
        object DBEdit9: TDBEdit
          Left = 588
          Top = 77
          Width = 49
          Height = 19
          Ctl3D = False
          DataField = 'BCCH_NOMTAM'
          DataSource = DM1.Src_Bco
          ParentCtl3D = False
          TabOrder = 16
        end
        object DBEdit1: TDBEdit
          Left = 644
          Top = 125
          Width = 52
          Height = 19
          Ctl3D = False
          DataField = 'BCCH_FORM'
          DataSource = DM1.Src_Bco
          ParentCtl3D = False
          TabOrder = 29
        end
      end
    end
    object tsFluxoCaixa: TTabSheet [2]
      Caption = 'Sobre Movimento no Fluxo de Caixa'
      Enabled = False
      ImageIndex = 2
      object DBCheckBox1: TDBCheckBox
        Left = 0
        Top = 175
        Width = 585
        Height = 17
        Caption = 'Replicar Movimento ao Lancar Este Banco/Caixa'
        DataField = 'BCREPLICARCX'
        DataSource = DM1.Src_Bco
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        ValueChecked = '1'
        ValueUnchecked = '0'
      end
      object rg_replica: TGroupBox
        Left = 0
        Top = 196
        Width = 767
        Height = 130
        Caption = 'Configuracoes da Replicacao:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        OnEnter = rg_replicaEnter
        object Label41: TLabel
          Left = 67
          Top = 78
          Width = 96
          Height = 13
          Caption = 'Centro de Custo:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label42: TLabel
          Left = 81
          Top = 58
          Width = 84
          Height = 13
          Caption = 'Departamento:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label43: TLabel
          Left = 99
          Top = 97
          Width = 62
          Height = 13
          Caption = 'Descri'#231#227'o:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lbl_obs2: TLabel
          Left = 605
          Top = 16
          Width = 74
          Height = 47
          Alignment = taCenter
          AutoSize = False
          Caption = '[SHIFT+TAB] Para Campo Anterior'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 16711808
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          Visible = False
          WordWrap = True
        end
        object Label17: TLabel
          Left = 134
          Top = 35
          Width = 30
          Height = 13
          Caption = 'Tipo:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label23: TLabel
          Left = 222
          Top = 36
          Width = 44
          Height = 13
          Caption = 'Codigo:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label24: TLabel
          Left = 123
          Top = 21
          Width = 41
          Height = 13
          Caption = 'Banco:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object DBE_REP_CodDep: TDBEdit
          Left = 169
          Top = 54
          Width = 54
          Height = 19
          Ctl3D = False
          DataField = 'BCREP_CODDEP'
          DataSource = DM1.Src_Bco
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 5
          OnExit = DBE_REP_CodDepExit
          OnKeyDown = DBE_REP_CodDepKeyDown
        end
        object DBE_REP_CodCCu: TDBEdit
          Left = 169
          Top = 72
          Width = 54
          Height = 19
          Ctl3D = False
          DataField = 'BCREP_CODCCU'
          DataSource = DM1.Src_Bco
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 7
          OnExit = DBE_REP_CodCCuExit
          OnKeyDown = DBE_REP_CodCCuKeyDown
        end
        object DBE_REP_DescMv: TDBEdit
          Left = 169
          Top = 90
          Width = 421
          Height = 19
          Ctl3D = False
          DataField = 'BCREP_DESCMV'
          DataSource = DM1.Src_Bco
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 10
        end
        object DBCB_REP_NOMDEP: TDBComboBox
          Left = 222
          Top = 53
          Width = 369
          Height = 21
          AutoDropDown = True
          BevelKind = bkSoft
          Color = 13565951
          Ctl3D = True
          DataField = 'BCREP_NOMDEP'
          DataSource = DM1.Src_Bco
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ItemHeight = 13
          ParentCtl3D = False
          ParentFont = False
          Sorted = True
          TabOrder = 6
          OnEnter = DBCB_REP_NOMDEPEnter
          OnExit = DBCB_REP_NOMDEPExit
          OnKeyDown = DBCB_REP_NOMDEPKeyDown
        end
        object DBCB_REP_NOMCCU: TDBComboBox
          Left = 222
          Top = 71
          Width = 338
          Height = 21
          AutoDropDown = True
          BevelKind = bkSoft
          Color = 13565951
          Ctl3D = True
          DataField = 'BCREP_NOMCCU'
          DataSource = DM1.Src_Bco
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ItemHeight = 13
          ParentCtl3D = False
          ParentFont = False
          Sorted = True
          TabOrder = 8
          OnEnter = DBCB_REP_NOMCCUEnter
          OnExit = DBCB_REP_NOMCCUExit
          OnKeyDown = DBCB_REP_NOMCCUKeyDown
        end
        object FNATDCC: TDBEdit
          Left = 559
          Top = 73
          Width = 31
          Height = 19
          Color = 16760799
          Ctl3D = False
          DataField = 'BCREP_NATDC'
          DataSource = DM1.Src_Bco
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 9
        end
        object DBE_REP_CODIGO: TDBEdit
          Left = 269
          Top = 35
          Width = 54
          Height = 19
          Ctl3D = False
          DataField = 'BCREP_CODIGO'
          DataSource = DM1.Src_Bco
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 3
          OnEnter = DBE_REP_CODIGOEnter
          OnExit = DBE_REP_CODIGOExit
          OnKeyPress = DBE_REP_CODIGOKeyPress
        end
        object DBEdit35: TDBEdit
          Left = 322
          Top = 35
          Width = 268
          Height = 19
          Ctl3D = False
          DataField = 'BCREP_NOMESAC'
          DataSource = DM1.Src_Bco
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 4
        end
        object TIPO: TDBComboBox
          Left = 169
          Top = 34
          Width = 41
          Height = 21
          BevelKind = bkSoft
          Ctl3D = True
          DataField = 'BCREP_TIPO'
          DataSource = DM1.Src_Bco
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ItemHeight = 13
          Items.Strings = (
            'CL'
            'FR'
            'TR'
            'VD'
            'US')
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 2
          OnEnter = TIPOEnter
          OnExit = TIPOExit
        end
        object DBE_REP_CODBCO: TDBEdit
          Left = 169
          Top = 17
          Width = 54
          Height = 19
          Ctl3D = False
          DataField = 'BCREP_CODBCO'
          DataSource = DM1.Src_Bco
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 0
          OnExit = DBE_REP_CODBCOExit
        end
        object DBCB_REP_NOMBCO: TDBComboBox
          Left = 222
          Top = 16
          Width = 369
          Height = 21
          AutoDropDown = True
          BevelKind = bkSoft
          Color = 13565951
          Ctl3D = True
          DataField = 'BCREP_NOMBCO'
          DataSource = DM1.Src_Bco
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ItemHeight = 13
          ParentCtl3D = False
          ParentFont = False
          Sorted = True
          TabOrder = 1
          OnEnter = DBCB_REP_NOMBCOEnter
          OnExit = DBCB_REP_NOMBCOExit
        end
      end
    end
    inherited tsTab: TTabSheet
      inherited DBGrid1: TDBGrid
        Width = 1061
        Height = 400
        OnDblClick = DBGrid1DblClick
        Columns = <
          item
            Expanded = False
            FieldName = 'BCCODBCO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'BCCODCED'
            Width = 177
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'BCBANCO'
            Width = 185
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'BCCONT'
            Width = 125
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'BCFONE'
            Width = 123
            Visible = True
          end>
      end
    end
    object tsInfoBanco: TTabSheet
      Caption = 'Informa'#231#245'es para o Banco'
      ImageIndex = 4
      object GroupBox3: TGroupBox
        Left = 0
        Top = 0
        Width = 1069
        Height = 407
        Align = alClient
        Caption = 'Declara'#231#227'o de Faturamento:'
        TabOrder = 0
        object DBGrid_bco_fatur: TDBGrid
          Left = 2
          Top = 45
          Width = 1065
          Height = 319
          Align = alClient
          DataSource = src_bco_fatur
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = [fsBold]
          OnDrawColumnCell = DBGrid_bco_faturDrawColumnCell
          OnKeyPress = DBGrid_bco_faturKeyPress
          Columns = <
            item
              Expanded = False
              FieldName = 'BCF_MES'
              Title.Alignment = taCenter
              Width = 35
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'BCF_ANO'
              Title.Alignment = taCenter
              Width = 40
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'BCF_NAUF_VENDA_AVISTA'
              Title.Alignment = taCenter
              Width = 59
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'BCF_NAUF_VENDA_CHPRE'
              Title.Alignment = taCenter
              Width = 75
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'BCF_NAUF_VENDA_CHPRE_PM'
              Title.Alignment = taCenter
              Width = 75
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'BCF_NAUF_VENDA_CARTAO'
              Title.Alignment = taCenter
              Width = 75
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'BCF_NAUF_VENDA_DUPBOL'
              Title.Alignment = taCenter
              Width = 62
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'BCF_NAUF_VENDA_DUPBOL_PM'
              Title.Alignment = taCenter
              Width = 76
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'BCF_FORAUF_VENDA_AVISTA'
              Title.Alignment = taCenter
              Width = 75
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'BCF_FORAUF_VENDA_CHPRE'
              Title.Alignment = taCenter
              Width = 76
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'BCF_FORAUF_VENDA_CHPRE_PM'
              Title.Alignment = taCenter
              Width = 61
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'BCF_FORAUF_VENDA_CARTAO'
              Title.Alignment = taCenter
              Width = 75
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'BCF_FORAUF_VENDA_DUPBOL'
              Title.Alignment = taCenter
              Width = 81
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'BCF_FORAUF_VENDA_DUPBOL_PM'
              Title.Alignment = taCenter
              Width = 69
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'total'
              Title.Alignment = taCenter
              Visible = True
            end>
        end
        object Panel2: TPanel
          Left = 2
          Top = 364
          Width = 1065
          Height = 41
          Align = alBottom
          TabOrder = 1
          object bbfatur_excluir: TBitBtn
            Left = 4
            Top = 10
            Width = 129
            Height = 25
            Cursor = crHandPoint
            Hint = 'Exclus'#227'o do registro atual'
            Caption = 'Excluir Registro'
            ParentShowHint = False
            ShowHint = True
            TabOrder = 0
            OnClick = bbfatur_excluirClick
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
          object bbInserir_auto: TBitBtn
            Left = 132
            Top = 10
            Width = 129
            Height = 25
            Cursor = crHandPoint
            Hint = 'Exclus'#227'o do registro atual'
            Caption = 'Inserir Movimento'
            ParentShowHint = False
            ShowHint = True
            TabOrder = 1
            OnClick = bbInserir_autoClick
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
          object gb_inserir_automaticamente: TGroupBox
            Left = 395
            Top = 1
            Width = 652
            Height = 37
            Caption = 'Informe o Periodo:'
            TabOrder = 2
            Visible = False
            object Label29: TLabel
              Left = 3
              Top = 18
              Width = 70
              Height = 13
              Caption = 'Data Inicial:'
            end
            object Label30: TLabel
              Left = 187
              Top = 18
              Width = 63
              Height = 13
              Caption = 'Data Final:'
            end
            object lbl_perc_acres: TLabel
              Left = 370
              Top = 15
              Width = 94
              Height = 13
              Caption = '% de Acrescimo:'
            end
            object edt_datini: TDateEdit
              Left = 77
              Top = 14
              Width = 106
              Height = 21
              Ctl3D = False
              NumGlyphs = 2
              ParentCtl3D = False
              TabOrder = 0
            end
            object edt_datfin: TDateEdit
              Left = 261
              Top = 11
              Width = 106
              Height = 21
              Ctl3D = False
              NumGlyphs = 2
              ParentCtl3D = False
              TabOrder = 1
            end
            object bbInserirAgora: TBitBtn
              Left = 530
              Top = 10
              Width = 115
              Height = 25
              Cursor = crHandPoint
              Hint = 'Exclus'#227'o do registro atual'
              Caption = 'Inseir Agora'
              ParentShowHint = False
              ShowHint = True
              TabOrder = 2
              OnClick = bbInserirAgoraClick
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
            object edt_percacres: TEdit
              Left = 463
              Top = 13
              Width = 63
              Height = 19
              Ctl3D = False
              ParentCtl3D = False
              TabOrder = 3
              OnExit = edt_percacresExit
            end
          end
          object bbAjustarValores: TBitBtn
            Left = 260
            Top = 10
            Width = 129
            Height = 25
            Cursor = crHandPoint
            Caption = 'Ajustar Valores'
            ParentShowHint = False
            ShowHint = True
            TabOrder = 3
            OnClick = bbAjustarValoresClick
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
        object Panel3: TPanel
          Left = 2
          Top = 15
          Width = 1065
          Height = 30
          Align = alTop
          TabOrder = 2
          object lbl_periodo: TStaticText
            Left = 2
            Top = 2
            Width = 91
            Height = 29
            Alignment = taCenter
            AutoSize = False
            BorderStyle = sbsSingle
            Caption = 'Periodo'
            Color = 14548957
            ParentColor = False
            TabOrder = 0
            Transparent = False
          end
          object lbl_dentrouf: TStaticText
            Left = 92
            Top = 2
            Width = 455
            Height = 29
            Alignment = taCenter
            AutoSize = False
            BorderStyle = sbsSingle
            Caption = 'Recebimento Dentro do Estado'
            Color = 14548957
            ParentColor = False
            TabOrder = 1
            Transparent = False
          end
          object lbl_forauf: TStaticText
            Left = 546
            Top = 2
            Width = 478
            Height = 29
            Alignment = taCenter
            AutoSize = False
            BorderStyle = sbsSingle
            Caption = 'Fora do Estado'
            Color = 16056319
            ParentColor = False
            TabOrder = 2
            Transparent = False
          end
        end
      end
    end
    object TabSheet1: TTabSheet
      Caption = 'Formularios Bancarios'
      ImageIndex = 5
      object GroupBox5: TGroupBox
        Left = 751
        Top = 0
        Width = 318
        Height = 407
        Align = alRight
        Caption = 'Documentos Enviardos ao Banco'
        TabOrder = 0
        object DBGrid_documentos: TDBGrid
          Left = 2
          Top = 15
          Width = 314
          Height = 181
          Align = alClient
          DataSource = Src_Bco_Documentos
          ReadOnly = True
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = [fsBold]
          OnDblClick = DBGrid_documentosDblClick
          Columns = <
            item
              Alignment = taLeftJustify
              Expanded = False
              FieldName = 'BCD_SEQ'
              Title.Alignment = taCenter
              Width = 38
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'BCD_CATEGORIA'
              PickList.Strings = (
                'DOCUMENTOS PRE-PRENCHIDO'
                'PLANILHA FATURAMENTO'
                'OUTROS'
                'IMAGEM')
              Title.Alignment = taCenter
              Width = 102
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'BCD_OBS'
              Title.Alignment = taCenter
              Width = 120
              Visible = True
            end>
        end
        object Panel5: TPanel
          Left = 2
          Top = 196
          Width = 314
          Height = 209
          Align = alBottom
          TabOrder = 1
          object sbn_doc_nova: TSpeedButton
            Left = 3
            Top = 187
            Width = 75
            Height = 20
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
            NumGlyphs = 2
            OnClick = sbn_doc_novaClick
          end
          object sbn_doc_alterar: TSpeedButton
            Left = 77
            Top = 187
            Width = 75
            Height = 20
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
            NumGlyphs = 2
            OnClick = sbn_doc_alterarClick
          end
          object sbn_doc_excluir: TSpeedButton
            Left = 226
            Top = 187
            Width = 75
            Height = 20
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
            NumGlyphs = 2
            OnClick = sbn_doc_excluirClick
          end
          object sbn_doc_gravar: TSpeedButton
            Left = 152
            Top = 187
            Width = 75
            Height = 20
            Caption = 'gravar'
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
            OnClick = sbn_doc_gravarClick
          end
          object sbn_visualizar_Atualizado: TSpeedButton
            Left = 3
            Top = 121
            Width = 158
            Height = 20
            Caption = 'Visualizar Atualizado'
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
            OnClick = sbn_visualizar_AtualizadoClick
          end
          object sbn_visualizar_original: TSpeedButton
            Left = 155
            Top = 121
            Width = 158
            Height = 20
            Caption = 'Visualizar Original'
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
          object GroupBox7: TGroupBox
            Left = 1
            Top = 1
            Width = 312
            Height = 116
            Align = alTop
            Caption = 'Dados Alterveis:'
            TabOrder = 0
            object Label26: TLabel
              Left = 1
              Top = 16
              Width = 85
              Height = 13
              Alignment = taRightJustify
              AutoSize = False
              Caption = 'Categoria:'
            end
            object Label27: TLabel
              Left = 1
              Top = 39
              Width = 85
              Height = 13
              Alignment = taRightJustify
              AutoSize = False
              Caption = 'Observa'#231#227'o:'
            end
            object Label28: TLabel
              Left = 1
              Top = 69
              Width = 85
              Height = 13
              Alignment = taRightJustify
              AutoSize = False
              Caption = 'Nome Original:'
            end
            object sbn_doc_buscar: TSpeedButton
              Left = 107
              Top = 92
              Width = 158
              Height = 20
              Caption = 'Buscar Imagem'
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
              OnClick = sbn_doc_buscarClick
            end
            object DBcb_BCD_CATEGORIA: TDBComboBox
              Left = 86
              Top = 16
              Width = 216
              Height = 21
              Ctl3D = False
              DataField = 'BCD_CATEGORIA'
              DataSource = Src_Bco_Documentos
              ItemHeight = 13
              Items.Strings = (
                'DOCUMENTOS PRE-PRENCHIDO'
                'PLANILHA FATURAMENTO'
                'OUTROS'
                'IMAGEM')
              ParentCtl3D = False
              TabOrder = 0
            end
            object DB_BCD_OBS: TDBMemo
              Left = 87
              Top = 37
              Width = 214
              Height = 32
              Ctl3D = False
              DataField = 'BCD_OBS'
              DataSource = Src_Bco_Documentos
              ParentCtl3D = False
              TabOrder = 1
            end
            object DBE_BCD_NOMEDOC_ORIGINAL: TDBEdit
              Left = 87
              Top = 68
              Width = 214
              Height = 19
              Ctl3D = False
              DataField = 'BCD_NOMEDOC_ORIGINAL'
              DataSource = Src_Bco_Documentos
              ParentCtl3D = False
              TabOrder = 2
            end
          end
          object GroupBox9: TGroupBox
            Left = 1
            Top = 144
            Width = 442
            Height = 37
            Caption = 'Informe o Periodo:'
            TabOrder = 1
            object Label31: TLabel
              Left = 3
              Top = 18
              Width = 70
              Height = 13
              Caption = 'Data Inicial:'
            end
            object Label32: TLabel
              Left = 179
              Top = 18
              Width = 32
              Height = 13
              Caption = 'Final:'
            end
            object edt_doc_datini: TDateEdit
              Left = 77
              Top = 13
              Width = 95
              Height = 21
              Ctl3D = False
              NumGlyphs = 2
              ParentCtl3D = False
              TabOrder = 0
            end
            object edt_doc_datfin: TDateEdit
              Left = 216
              Top = 12
              Width = 95
              Height = 21
              Ctl3D = False
              NumGlyphs = 2
              ParentCtl3D = False
              TabOrder = 1
            end
          end
        end
      end
      object GroupBox8: TGroupBox
        Left = 0
        Top = 0
        Width = 649
        Height = 407
        Align = alLeft
        Caption = 'Legenda:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        object memo_legenda: TMemo
          Left = 2
          Top = 15
          Width = 645
          Height = 390
          Align = alClient
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Lines.Strings = (
            '{EMP_RAZSOC}                 - Raz'#227'o Social da Empresa'
            '{EMP_CNPJ}                   - cnpj da empresa'
            '{EMP_IE}                     - Inscri'#231#227'o Estadual da Empresa'
            '{EMP_EMAIL}                  - E-Mail da Empresa'
            
              '{MESEXTENSO_ANONUMERO_01}    - Mes por extenso e ano por numero ' +
              '01'
            
              '{MESEXTENSO_ANONUMERO_02}    - Mes por extenso e ano por numero ' +
              '02'
            
              '{MESEXTENSO_ANONUMERO_03}    - Mes por extenso e ano por numero ' +
              '03'
            
              '{MESEXTENSO_ANONUMERO_04}    - Mes por extenso e ano por numero ' +
              '04'
            
              '{MESEXTENSO_ANONUMERO_05}    - Mes por extenso e ano por numero ' +
              '05'
            
              '{MESEXTENSO_ANONUMERO_06}    - Mes por extenso e ano por numero ' +
              '06'
            
              '{MESEXTENSO_ANONUMERO_07}    - Mes por extenso e ano por numero ' +
              '07'
            
              '{MESEXTENSO_ANONUMERO_08}    - Mes por extenso e ano por numero ' +
              '08'
            
              '{MESEXTENSO_ANONUMERO_09}    - Mes por extenso e ano por numero ' +
              '09'
            
              '{MESEXTENSO_ANONUMERO_10}    - Mes por extenso e ano por numero ' +
              '10'
            
              '{MESEXTENSO_ANONUMERO_11}    - Mes por extenso e ano por numero ' +
              '11'
            
              '{MESEXTENSO_ANONUMERO_12}    - Mes por extenso e ano por numero ' +
              '12'
            
              '{MESNUMERO_ANONUMERO_01}     - Mes por numero e ano por numero 0' +
              '1'
            
              '{MESNUMERO_ANONUMERO_02}     - Mes por numero e ano por numero 0' +
              '2'
            
              '{MESNUMERO_ANONUMERO_03}     - Mes por numero e ano por numero 0' +
              '3'
            
              '{MESNUMERO_ANONUMERO_04}     - Mes por numero e ano por numero 0' +
              '4'
            
              '{MESNUMERO_ANONUMERO_05}     - Mes por numero e ano por numero 0' +
              '5'
            
              '{MESNUMERO_ANONUMERO_06}     - Mes por numero e ano por numero 0' +
              '6'
            
              '{MESNUMERO_ANONUMERO_07}     - Mes por numero e ano por numero 0' +
              '7'
            
              '{MESNUMERO_ANONUMERO_08}     - Mes por numero e ano por numero 0' +
              '8'
            
              '{MESNUMERO_ANONUMERO_09}     - Mes por numero e ano por numero 0' +
              '9'
            
              '{MESNUMERO_ANONUMERO_10}     - Mes por numero e ano por numero 1' +
              '0'
            
              '{MESNUMERO_ANONUMERO_11}     - Mes por numero e ano por numero 1' +
              '1'
            
              '{MESNUMERO_ANONUMERO_12}     - Mes por numero e ano por numero 1' +
              '2'
            
              '{VENDA_NAUF_AVISTA01}        - Valor da Venda a vista dentro do ' +
              'estado Mes01'
            
              '{VENDA_NAUF_AVISTA02}        - Valor da Venda a vista dentro do ' +
              'estado Mes02'
            
              '{VENDA_NAUF_AVISTA03}        - Valor da Venda a vista dentro do ' +
              'estado Mes03'
            
              '{VENDA_NAUF_AVISTA04}        - Valor da Venda a vista dentro do ' +
              'estado Mes04'
            
              '{VENDA_NAUF_AVISTA05}        - Valor da Venda a vista dentro do ' +
              'estado Mes05'
            
              '{VENDA_NAUF_AVISTA06}        - Valor da Venda a vista dentro do ' +
              'estado Mes06'
            
              '{VENDA_NAUF_AVISTA07}        - Valor da Venda a vista dentro do ' +
              'estado Mes07'
            
              '{VENDA_NAUF_AVISTA08}        - Valor da Venda a vista dentro do ' +
              'estado Mes08'
            
              '{VENDA_NAUF_AVISTA09}        - Valor da Venda a vista dentro do ' +
              'estado Mes09'
            
              '{VENDA_NAUF_AVISTA10}        - Valor da Venda a vista dentro do ' +
              'estado Mes10'
            
              '{VENDA_NAUF_AVISTA11}        - Valor da Venda a vista dentro do ' +
              'estado Mes11'
            
              '{VENDA_NAUF_AVISTA12}        - Valor da Venda a vista dentro do ' +
              'estado Mes12'
            
              '{VENDA_NAUF_TOTPRZ01}        - Valor da Venda a prazo dentro do ' +
              'estado Mes01'
            
              '{VENDA_NAUF_TOTPRZ02}        - Valor da Venda a prazo dentro do ' +
              'estado Mes02'
            
              '{VENDA_NAUF_TOTPRZ03}        - Valor da Venda a prazo dentro do ' +
              'estado Mes03'
            
              '{VENDA_NAUF_TOTPRZ04}        - Valor da Venda a prazo dentro do ' +
              'estado Mes04'
            
              '{VENDA_NAUF_TOTPRZ05}        - Valor da Venda a prazo dentro do ' +
              'estado Mes05'
            
              '{VENDA_NAUF_TOTPRZ06}        - Valor da Venda a prazo dentro do ' +
              'estado Mes06'
            
              '{VENDA_NAUF_TOTPRZ07}        - Valor da Venda a prazo dentro do ' +
              'estado Mes07'
            
              '{VENDA_NAUF_TOTPRZ08}        - Valor da Venda a prazo dentro do ' +
              'estado Mes08'
            
              '{VENDA_NAUF_TOTPRZ09}        - Valor da Venda a prazo dentro do ' +
              'estado Mes09'
            
              '{VENDA_NAUF_TOTPRZ10}        - Valor da Venda a prazo dentro do ' +
              'estado Mes10'
            
              '{VENDA_NAUF_TOTPRZ11}        - Valor da Venda a prazo dentro do ' +
              'estado Mes11'
            
              '{VENDA_NAUF_TOTPRZ12}        - Valor da Venda a prazo dentro do ' +
              'estado Mes12'
            
              '{VENDA_FORAUF_AVISTA01}      - Valor da Venda a vista fora do es' +
              'tado Mes01'
            
              '{VENDA_FORAUF_AVISTA02}      - Valor da Venda a vista fora do es' +
              'tado Mes02'
            
              '{VENDA_FORAUF_AVISTA03}      - Valor da Venda a vista fora do es' +
              'tado Mes03'
            
              '{VENDA_FORAUF_AVISTA04}      - Valor da Venda a vista fora do es' +
              'tado Mes04'
            
              '{VENDA_FORAUF_AVISTA05}      - Valor da Venda a vista fora do es' +
              'tado Mes05'
            
              '{VENDA_FORAUF_AVISTA06}      - Valor da Venda a vista fora do es' +
              'tado Mes06'
            
              '{VENDA_FORAUF_AVISTA07}      - Valor da Venda a vista fora do es' +
              'tado Mes07'
            
              '{VENDA_FORAUF_AVISTA08}      - Valor da Venda a vista fora do es' +
              'tado Mes08'
            
              '{VENDA_FORAUF_AVISTA09}      - Valor da Venda a vista fora do es' +
              'tado Mes09'
            
              '{VENDA_FORAUF_AVISTA10}      - Valor da Venda a vista fora do es' +
              'tado Mes10'
            
              '{VENDA_FORAUF_AVISTA11}      - Valor da Venda a vista fora do es' +
              'tado Mes11'
            
              '{VENDA_FORAUF_AVISTA12}      - Valor da Venda a vista fora do es' +
              'tado Mes12'
            
              '{VENDA_FORAUF_TOTPRZ01}      - Valor da Venda a prazo fora do es' +
              'tado Mes01'
            
              '{VENDA_FORAUF_TOTPRZ02}      - Valor da Venda a prazo fora do es' +
              'tado Mes02'
            
              '{VENDA_FORAUF_TOTPRZ03}      - Valor da Venda a prazo fora do es' +
              'tado Mes03'
            
              '{VENDA_FORAUF_TOTPRZ04}      - Valor da Venda a prazo fora do es' +
              'tado Mes04'
            
              '{VENDA_FORAUF_TOTPRZ05}      - Valor da Venda a prazo fora do es' +
              'tado Mes05'
            
              '{VENDA_FORAUF_TOTPRZ06}      - Valor da Venda a prazo fora do es' +
              'tado Mes06'
            
              '{VENDA_FORAUF_TOTPRZ07}      - Valor da Venda a prazo fora do es' +
              'tado Mes07'
            
              '{VENDA_FORAUF_TOTPRZ08}      - Valor da Venda a prazo fora do es' +
              'tado Mes08'
            
              '{VENDA_FORAUF_TOTPRZ09}      - Valor da Venda a prazo fora do es' +
              'tado Mes09'
            
              '{VENDA_FORAUF_TOTPRZ10}      - Valor da Venda a prazo fora do es' +
              'tado Mes10'
            
              '{VENDA_FORAUF_TOTPRZ11}      - Valor da Venda a prazo fora do es' +
              'tado Mes11'
            
              '{VENDA_FORAUF_TOTPRZ12}      - Valor da Venda a prazo fora do es' +
              'tado Mes12'
            
              '{VENDA_NAUF_CHPRE01}         - Valor da Venda cheques pre datado' +
              ' dentro do estado Mes01'
            
              '{VENDA_NAUF_CHPRE02}         - Valor da Venda cheques pre datado' +
              ' dentro do estado Mes02'
            
              '{VENDA_NAUF_CHPRE03}         - Valor da Venda cheques pre datado' +
              ' dentro do estado Mes03'
            
              '{VENDA_NAUF_CHPRE04}         - Valor da Venda cheques pre datado' +
              ' dentro do estado Mes04'
            
              '{VENDA_NAUF_CHPRE05}         - Valor da Venda cheques pre datado' +
              ' dentro do estado Mes05'
            
              '{VENDA_NAUF_CHPRE06}         - Valor da Venda cheques pre datado' +
              ' dentro do estado Mes06'
            
              '{VENDA_NAUF_CHPRE07}         - Valor da Venda cheques pre datado' +
              ' dentro do estado Mes07'
            
              '{VENDA_NAUF_CHPRE08}         - Valor da Venda cheques pre datado' +
              ' dentro do estado Mes08'
            
              '{VENDA_NAUF_CHPRE09}         - Valor da Venda cheques pre datado' +
              ' dentro do estado Mes09'
            
              '{VENDA_NAUF_CHPRE10}         - Valor da Venda cheques pre datado' +
              ' dentro do estado Mes10'
            
              '{VENDA_NAUF_CHPRE11}         - Valor da Venda cheques pre datado' +
              ' dentro do estado Mes11'
            
              '{VENDA_NAUF_CHPRE12}         - Valor da Venda cheques pre datado' +
              ' dentro do estado Mes12'
            
              '{VENDA_FORAUF_CHPRE01}        - Valor da Venda cheques pre datad' +
              'o fora do estado Mes01'
            
              '{VENDA_FORAUF_CHPRE02}        - Valor da Venda cheques pre datad' +
              'o fora do estado Mes02'
            
              '{VENDA_FORAUF_CHPRE03}        - Valor da Venda cheques pre datad' +
              'o fora do estado Mes03'
            
              '{VENDA_FORAUF_CHPRE04}        - Valor da Venda cheques pre datad' +
              'o fora do estado Mes04'
            
              '{VENDA_FORAUF_CHPRE05}        - Valor da Venda cheques pre datad' +
              'o fora do estado Mes05'
            
              '{VENDA_FORAUF_CHPRE06}        - Valor da Venda cheques pre datad' +
              'o fora do estado Mes06'
            
              '{VENDA_FORAUF_CHPRE07}        - Valor da Venda cheques pre datad' +
              'o fora do estado Mes07'
            
              '{VENDA_FORAUF_CHPRE08}        - Valor da Venda cheques pre datad' +
              'o fora do estado Mes08'
            
              '{VENDA_FORAUF_CHPRE09}        - Valor da Venda cheques pre datad' +
              'o fora do estado Mes09'
            
              '{VENDA_FORAUF_CHPRE10}        - Valor da Venda cheques pre datad' +
              'o fora do estado Mes10'
            
              '{VENDA_FORAUF_CHPRE11}        - Valor da Venda cheques pre datad' +
              'o fora do estado Mes11'
            
              '{VENDA_FORAUF_CHPRE12}        - Valor da Venda cheques pre datad' +
              'o fora do estado Mes12'
            
              '{VENDA_NAUF_CARTAO01}        - Valor da Venda cartao dentro do e' +
              'stado Mes01'
            
              '{VENDA_NAUF_CARTAO02}        - Valor da Venda cartao dentro do e' +
              'stado Mes02'
            
              '{VENDA_NAUF_CARTAO03}        - Valor da Venda cartao dentro do e' +
              'stado Mes03'
            
              '{VENDA_NAUF_CARTAO04}        - Valor da Venda cartao dentro do e' +
              'stado Mes04'
            
              '{VENDA_NAUF_CARTAO05}        - Valor da Venda cartao dentro do e' +
              'stado Mes05'
            
              '{VENDA_NAUF_CARTAO06}        - Valor da Venda cartao dentro do e' +
              'stado Mes06'
            
              '{VENDA_NAUF_CARTAO07}        - Valor da Venda cartao dentro do e' +
              'stado Mes07'
            
              '{VENDA_NAUF_CARTAO08}        - Valor da Venda cartao dentro do e' +
              'stado Mes08'
            
              '{VENDA_NAUF_CARTAO09}        - Valor da Venda cartao dentro do e' +
              'stado Mes09'
            
              '{VENDA_NAUF_CARTAO10}        - Valor da Venda cartao dentro do e' +
              'stado Mes10'
            
              '{VENDA_NAUF_CARTAO11}        - Valor da Venda cartao dentro do e' +
              'stado Mes11'
            
              '{VENDA_NAUF_CARTAO12}        - Valor da Venda cartao dentro do e' +
              'stado Mes12'
            
              '{VENDA_FORAUF_CARTAO01}      - Valor da Venda cartao fora do est' +
              'ado Mes01'
            
              '{VENDA_FORAUF_CARTAO02}      - Valor da Venda cartao fora do est' +
              'ado Mes02'
            
              '{VENDA_FORAUF_CARTAO03}      - Valor da Venda cartao fora do est' +
              'ado Mes03'
            
              '{VENDA_FORAUF_CARTAO04}      - Valor da Venda cartao fora do est' +
              'ado Mes04'
            
              '{VENDA_FORAUF_CARTAO05}      - Valor da Venda cartao fora do est' +
              'ado Mes05'
            
              '{VENDA_FORAUF_CARTAO06}      - Valor da Venda cartao fora do est' +
              'ado Mes06'
            
              '{VENDA_FORAUF_CARTAO07}      - Valor da Venda cartao fora do est' +
              'ado Mes07'
            
              '{VENDA_FORAUF_CARTAO08}      - Valor da Venda cartao fora do est' +
              'ado Mes08'
            
              '{VENDA_FORAUF_CARTAO09}      - Valor da Venda cartao fora do est' +
              'ado Mes09'
            
              '{VENDA_FORAUF_CARTAO10}      - Valor da Venda cartao fora do est' +
              'ado Mes10'
            
              '{VENDA_FORAUF_CARTAO11}      - Valor da Venda cartao fora do est' +
              'ado Mes11'
            
              '{VENDA_FORAUF_CARTAO12}      - Valor da Venda cartao fora do est' +
              'ado Mes12'
            
              '{VENDA_FORAUF_BOLETO01}      - Valor da Venda BOLETO fora do est' +
              'ado Mes01'
            
              '{VENDA_FORAUF_BOLETO02}      - Valor da Venda BOLETO fora do est' +
              'ado Mes02'
            
              '{VENDA_FORAUF_BOLETO03}      - Valor da Venda BOLETO fora do est' +
              'ado Mes03'
            
              '{VENDA_FORAUF_BOLETO04}      - Valor da Venda BOLETO fora do est' +
              'ado Mes04'
            
              '{VENDA_FORAUF_BOLETO05}      - Valor da Venda BOLETO fora do est' +
              'ado Mes05'
            
              '{VENDA_FORAUF_BOLETO06}      - Valor da Venda BOLETO fora do est' +
              'ado Mes06'
            
              '{VENDA_FORAUF_BOLETO07}      - Valor da Venda BOLETO fora do est' +
              'ado Mes07'
            
              '{VENDA_FORAUF_BOLETO08}      - Valor da Venda BOLETO fora do est' +
              'ado Mes08'
            
              '{VENDA_FORAUF_BOLETO09}      - Valor da Venda BOLETO fora do est' +
              'ado Mes09'
            
              '{VENDA_FORAUF_BOLETO10}      - Valor da Venda BOLETO fora do est' +
              'ado Mes10'
            
              '{VENDA_FORAUF_BOLETO11}      - Valor da Venda BOLETO fora do est' +
              'ado Mes11'
            
              '{VENDA_FORAUF_BOLETO12}      - Valor da Venda BOLETO fora do est' +
              'ado Mes12'
            '{PERCCHQPRE}                 - Percentual em cheques pre-datados'
            
              '{PERCCHQDUPTIT}              - Percentual em Duplicatas e Titulo' +
              's'
            '{PERCCARCRED}                - Percentual em Cart'#227'o de Credito'
            '{PRAZOMEDIOVDAPRAZO}         - Prazo M'#233'dio das Vendas a Prazo'
            '')
          ParentFont = False
          ReadOnly = True
          ScrollBars = ssBoth
          TabOrder = 0
        end
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'TabSheet3'
      ImageIndex = 6
      object Memo1: TMemo
        Left = 80
        Top = 48
        Width = 553
        Height = 217
        Lines.Strings = (
          'Memo1')
        TabOrder = 0
        OnDblClick = ALTERARClick
      end
    end
  end
  object ToolBar1: TToolBar
    Left = 0
    Top = 0
    Width = 1077
    Height = 30
    ButtonHeight = 25
    Caption = 'ToolBar1'
    TabOrder = 4
    object btn_incluir: TBitBtn
      Left = 0
      Top = 2
      Width = 85
      Height = 25
      Cursor = crHandPoint
      Hint = 'Inclus'#227'o de novos registros'
      Caption = '&Novo'
      ParentShowHint = False
      ShowHint = True
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
    object btn_alterar: TBitBtn
      Left = 85
      Top = 2
      Width = 85
      Height = 25
      Cursor = crHandPoint
      Hint = 'Permite alterar o registro atual'
      Caption = '&Alterar'
      ParentShowHint = False
      ShowHint = True
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
    object btn_excluir: TBitBtn
      Left = 170
      Top = 2
      Width = 85
      Height = 25
      Cursor = crHandPoint
      Hint = 'Exclus'#227'o do registro atual'
      Caption = '&Excluir'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
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
      NumGlyphs = 2
    end
    object btn_cancelar: TBitBtn
      Left = 255
      Top = 2
      Width = 85
      Height = 25
      Cursor = crHandPoint
      Hint = 'Cancela a opera'#231#227'o atual'
      Caption = 'Cance&lar'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 4
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
      NumGlyphs = 2
    end
    object btn_gravar: TBitBtn
      Left = 340
      Top = 2
      Width = 85
      Height = 25
      Cursor = crHandPoint
      Hint = 'Grava o registro atual'
      Caption = '&Gravar'
      Enabled = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
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
    object DBNavigator2: TDBNavigator
      Left = 425
      Top = 2
      Width = 284
      Height = 25
      Cursor = crHandPoint
      Hint = 'Navega entre os registros selecionados'
      DataSource = DM1.Src_Bco
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      Hints.Strings = (
        'Primeiro Registro'
        'Registro Anterior'
        'Proximo Registro'
        #218'ltimo Registro')
      ParentShowHint = False
      ShowHint = True
      TabOrder = 5
    end
    object btn_sair: TBitBtn
      Left = 709
      Top = 2
      Width = 92
      Height = 25
      Cursor = crHandPoint
      Hint = 'Fecha Esta Janela'
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
      NumGlyphs = 2
    end
  end
  object Opd1: TOpenPictureDialog
    DefaultExt = 'JPG'
    Filter = 'JPG Image File (*.JPG)|*.JPG'
    Left = 638
    Top = 208
  end
  object DataSource1: TDataSource
    DataSet = DM1.Tb_Bco
    OnDataChange = DataSource1DataChange
    Left = 600
    Top = 8
  end
  object src_bco_fatur: TDataSource
    DataSet = Tb_Bco_Fatur
    Left = 764
    Top = 25
  end
  object Tb_Bco_Fatur: TQuery
    CachedUpdates = True
    AfterInsert = Tb_Bco_FaturAfterInsert
    AfterEdit = Tb_Bco_FaturAfterEdit
    BeforePost = Tb_Bco_FaturBeforePost
    AfterPost = Tb_Bco_FaturAfterPost
    AfterCancel = Tb_Bco_FaturAfterCancel
    AfterDelete = c
    OnCalcFields = Tb_Bco_FaturCalcFields
    DatabaseName = 'SG_ASSOC'
    UpdateObject = U_Bco_Fatur
    Left = 588
    Top = 33
    object Tb_Bco_FaturBCF_CODEMP: TFloatField
      DisplayLabel = 'C'#243'd.Empresa'
      FieldName = 'BCF_CODEMP'
    end
    object Tb_Bco_FaturBCF_ANO: TFloatField
      DisplayLabel = 'Ano'
      FieldName = 'BCF_ANO'
    end
    object Tb_Bco_FaturBCF_MES: TFloatField
      DisplayLabel = 'M'#234's'
      FieldName = 'BCF_MES'
    end
    object Tb_Bco_FaturBCF_NAUF_VENDA_AVISTA: TFloatField
      DisplayLabel = 'A Vista'
      FieldName = 'BCF_NAUF_VENDA_AVISTA'
    end
    object Tb_Bco_FaturBCF_NAUF_VENDA_CHPRE: TFloatField
      DisplayLabel = 'Ch Pre'
      FieldName = 'BCF_NAUF_VENDA_CHPRE'
    end
    object Tb_Bco_FaturBCF_NAUF_VENDA_CHPRE_PM: TFloatField
      DisplayLabel = 'Pz Medio'
      FieldName = 'BCF_NAUF_VENDA_CHPRE_PM'
    end
    object Tb_Bco_FaturBCF_NAUF_VENDA_CARTAO: TFloatField
      DisplayLabel = 'Cartao'
      FieldName = 'BCF_NAUF_VENDA_CARTAO'
    end
    object Tb_Bco_FaturBCF_NAUF_VENDA_DUPBOL: TFloatField
      DisplayLabel = 'Dup/Bol'
      FieldName = 'BCF_NAUF_VENDA_DUPBOL'
    end
    object Tb_Bco_FaturBCF_NAUF_VENDA_DUPBOL_PM: TFloatField
      DisplayLabel = 'Pz Medio'
      FieldName = 'BCF_NAUF_VENDA_DUPBOL_PM'
    end
    object Tb_Bco_FaturBCF_FORAUF_VENDA_AVISTA: TFloatField
      DisplayLabel = 'a Vista'
      FieldName = 'BCF_FORAUF_VENDA_AVISTA'
    end
    object Tb_Bco_FaturBCF_FORAUF_VENDA_CHPRE_PM: TFloatField
      DisplayLabel = 'Pz Medio'
      FieldName = 'BCF_FORAUF_VENDA_CHPRE_PM'
    end
    object Tb_Bco_FaturBCF_FORAUF_VENDA_CHPRE: TFloatField
      DisplayLabel = 'Ch.Pre'
      FieldName = 'BCF_FORAUF_VENDA_CHPRE'
    end
    object Tb_Bco_FaturBCF_FORAUF_VENDA_CARTAO: TFloatField
      DisplayLabel = 'Cart'#227'o'
      FieldName = 'BCF_FORAUF_VENDA_CARTAO'
    end
    object Tb_Bco_FaturBCF_FORAUF_VENDA_DUPBOL: TFloatField
      DisplayLabel = 'Dup/Bol'
      FieldName = 'BCF_FORAUF_VENDA_DUPBOL'
    end
    object Tb_Bco_FaturBCF_FORAUF_VENDA_DUPBOL_PM: TFloatField
      DisplayLabel = 'Pz Medio'
      FieldName = 'BCF_FORAUF_VENDA_DUPBOL_PM'
    end
    object Tb_Bco_Faturtotal: TFloatField
      DisplayLabel = 'Total'
      FieldKind = fkCalculated
      FieldName = 'total'
      Calculated = True
    end
  end
  object U_Bco_Fatur: TUpdateSQL
    ModifySQL.Strings = (
      'Update CADBCO_FATUR set'
      ' BCF_NAUF_VENDA_AVISTA =:BCF_NAUF_VENDA_AVISTA'
      ',BCF_NAUF_VENDA_CHPRE =:BCF_NAUF_VENDA_CHPRE'
      ',BCF_NAUF_VENDA_CHPRE_PM=:BCF_NAUF_VENDA_CHPRE_PM'
      ',BCF_NAUF_VENDA_CARTAO=:BCF_NAUF_VENDA_CARTAO'
      ',BCF_NAUF_VENDA_DUPBOL=:BCF_NAUF_VENDA_DUPBOL'
      ',BCF_NAUF_VENDA_DUPBOL_PM=:BCF_NAUF_VENDA_DUPBOL_PM'
      ',BCF_FORAUF_VENDA_AVISTA=:BCF_FORAUF_VENDA_AVISTA'
      ',BCF_FORAUF_VENDA_CHPRE=:BCF_FORAUF_VENDA_CHPRE'
      ',BCF_FORAUF_VENDA_CHPRE_PM=:BCF_FORAUF_VENDA_CHPRE_PM'
      ',BCF_FORAUF_VENDA_CARTAO=:BCF_FORAUF_VENDA_CARTAO'
      ',BCF_FORAUF_VENDA_DUPBOL=:BCF_FORAUF_VENDA_DUPBOL'
      ',BCF_FORAUF_VENDA_DUPBOL_PM=:BCF_FORAUF_VENDA_DUPBOL_PM'
      'WHERE BCF_CODEMP=:BCF_CODEMP'
      ' and BCF_ANO=:BCF_ANO'
      'and BCF_MES=:BCF_MES'
      '')
    InsertSQL.Strings = (
      'insert into CADBCO_FATUR ('
      'BCF_CODEMP'
      ',BCF_ANO'
      ',BCF_MES'
      ',BCF_NAUF_VENDA_AVISTA'
      ',BCF_NAUF_VENDA_CHPRE'
      ',BCF_NAUF_VENDA_CHPRE_PM'
      ',BCF_NAUF_VENDA_CARTAO'
      ',BCF_NAUF_VENDA_DUPBOL'
      ',BCF_NAUF_VENDA_DUPBOL_PM'
      ',BCF_FORAUF_VENDA_AVISTA'
      ',BCF_FORAUF_VENDA_CHPRE'
      ',BCF_FORAUF_VENDA_CHPRE_PM'
      ',BCF_FORAUF_VENDA_CARTAO'
      ',BCF_FORAUF_VENDA_DUPBOL'
      ',BCF_FORAUF_VENDA_DUPBOL_PM'
      ') values ('
      ':BCF_CODEMP'
      ',:BCF_ANO'
      ',:BCF_MES'
      ',:BCF_NAUF_VENDA_AVISTA'
      ',:BCF_NAUF_VENDA_CHPRE'
      ',:BCF_NAUF_VENDA_CHPRE_PM'
      ',:BCF_NAUF_VENDA_CARTAO'
      ',:BCF_NAUF_VENDA_DUPBOL'
      ',:BCF_NAUF_VENDA_DUPBOL_PM'
      ',:BCF_FORAUF_VENDA_AVISTA'
      ',:BCF_FORAUF_VENDA_CHPRE'
      ',:BCF_FORAUF_VENDA_CHPRE_PM'
      ',:BCF_FORAUF_VENDA_CARTAO'
      ',:BCF_FORAUF_VENDA_DUPBOL'
      ',:BCF_FORAUF_VENDA_DUPBOL_PM'
      ')'
      '')
    DeleteSQL.Strings = (
      'delete from CADBCO_FATUR'
      'WHERE BCF_CODEMP=:OLD_BCF_CODEMP'
      ' and BCF_ANO=:OLD_BCF_ANO'
      ' and BCF_MES=:OLD_BCF_MES'
      '')
    Left = 724
    Top = 1
  end
  object Tb_Bco_Documentos: TADOQuery
    Connection = DM1_ADO.ADOConnection1
    AfterInsert = Tb_Bco_DocumentosAfterInsert
    AfterEdit = Tb_Bco_DocumentosAfterEdit
    AfterPost = Tb_Bco_DocumentosAfterPost
    AfterCancel = Tb_Bco_DocumentosAfterCancel
    AfterDelete = Tb_Bco_DocumentosAfterDelete
    ParamCheck = False
    Parameters = <>
    Left = 376
    Top = 167
    object Tb_Bco_DocumentosBCD_CODEMP: TFloatField
      FieldName = 'BCD_CODEMP'
    end
    object Tb_Bco_DocumentosBCD_CODBCO: TFloatField
      FieldName = 'BCD_CODBCO'
    end
    object Tb_Bco_DocumentosBCD_SEQ: TFloatField
      DisplayLabel = 'Ordem'
      FieldName = 'BCD_SEQ'
    end
    object Tb_Bco_DocumentosBCD_CATEGORIA: TStringField
      DisplayLabel = 'Categoria'
      FieldName = 'BCD_CATEGORIA'
      Size = 150
    end
    object Tb_Bco_DocumentosBCD_OBS: TStringField
      DisplayLabel = 'Observa'#231#227'o'
      FieldName = 'BCD_OBS'
      Size = 150
    end
    object Tb_Bco_DocumentosBCD_NOMEDOC_ORIGINAL: TStringField
      FieldName = 'BCD_NOMEDOC_ORIGINAL'
      Size = 150
    end
    object Tb_Bco_DocumentosBCD_DOCUMENTO: TBlobField
      FieldName = 'BCD_DOCUMENTO'
    end
  end
  object Src_Bco_Documentos: TDataSource
    DataSet = Tb_Bco_Documentos
    Left = 412
    Top = 168
  end
  object Src_Bco: TDataSource
    DataSet = DM1.Tb_Bco
    OnDataChange = Src_BcoDataChange
    Left = 384
    Top = 136
  end
  object Query1: TQuery
    Left = 380
    Top = 209
  end
end
