inherited Frm_Fun: TFrm_Fun
  Left = 83
  Top = 113
  Width = 806
  Height = 561
  Caption = 'Cadastro de Funcionarios'
  FormStyle = fsNormal
  OldCreateOrder = True
  Visible = False
  PixelsPerInch = 96
  TextHeight = 13
  object Bevel2: TBevel [0]
    Left = 0
    Top = 70
    Width = 798
    Height = 460
    Align = alClient
    Shape = bsFrame
    Style = bsRaised
  end
  object Bevel8: TBevel [1]
    Left = 0
    Top = 70
    Width = 798
    Height = 460
    Align = alClient
    Shape = bsFrame
    Style = bsRaised
  end
  inherited GroupBox2: TGroupBox [2]
    Top = 530
    Width = 798
    Height = 0
    Visible = False
    inherited DBNavigator1: TDBNavigator
      Left = 6
      Top = 14
      Width = 612
    end
    inherited SAIR: TBitBtn
      Left = 620
      Top = 14
      Width = 151
    end
  end
  inherited MANUT: TGroupBox [3]
    Top = 530
    Width = 798
    Height = 0
    Visible = False
    inherited INCLUIR: TBitBtn
      Left = 7
      Width = 151
    end
    inherited ALTERAR: TBitBtn
      Left = 160
      Width = 151
    end
    inherited EXCLUIR: TBitBtn
      Left = 315
      Width = 151
    end
    inherited GRAVAR: TBitBtn
      Left = 468
      Width = 140
    end
    inherited CANCELAR: TBitBtn
      Left = 620
      Width = 151
    end
  end
  inherited Panel1: TPanel [4]
    Top = 37
    Width = 798
    inherited lbl_emp: TLabel
      Left = 753
    end
    inherited BBnAtu: TBitBtn
      Left = 430
      Cursor = crHandPoint
      OnClick = BBnAtuClick
    end
    inherited CAMPO: TComboBox
      Items.Strings = (
        'Nome'
        'C'#243'digo'
        'CNPF')
    end
    inherited Edit1: TMaskEdit
      Width = 217
      OnChange = Edit1Change
    end
  end
  inherited PC1: TPageControl [5]
    Top = 70
    Width = 798
    Height = 460
    Cursor = crHandPoint
    ActivePage = TabSheet1
    Style = tsFlatButtons
    OnChange = PC1Change
    inherited tsCad: TTabSheet
      object Bevel5: TBevel
        Left = 0
        Top = 0
        Width = 790
        Height = 388
        Align = alClient
        Shape = bsFrame
        Style = bsRaised
      end
      object Label1: TLabel
        Left = 8
        Top = 11
        Width = 88
        Height = 13
        Caption = 'C'#243'digo............'
      end
      object Label2: TLabel
        Left = 8
        Top = 32
        Width = 89
        Height = 13
        Caption = 'Nome..............'
      end
      object Label3: TLabel
        Left = 8
        Top = 54
        Width = 87
        Height = 13
        Caption = 'Endere'#231'o........'
      end
      object lbl_bairro: TLabel
        Left = 8
        Top = 76
        Width = 90
        Height = 13
        Caption = 'Bairro..............'
      end
      object lbl_cidade: TLabel
        Left = 8
        Top = 98
        Width = 88
        Height = 13
        Caption = 'Cidade............'
      end
      object lbl_estado: TLabel
        Left = 433
        Top = 98
        Width = 48
        Height = 13
        Caption = 'Estado.:'
      end
      object lbl_cep: TLabel
        Left = 435
        Top = 54
        Width = 49
        Height = 13
        Caption = 'CEP......'
      end
      object Label4: TLabel
        Left = 8
        Top = 119
        Width = 90
        Height = 13
        Caption = 'Nacionalidade..'
      end
      object Label5: TLabel
        Left = 394
        Top = 119
        Width = 88
        Height = 13
        Caption = 'Data Migra'#231#227'o:'
      end
      object Label6: TLabel
        Left = 8
        Top = 141
        Width = 89
        Height = 13
        Caption = 'Naturalidade....'
      end
      object Label7: TLabel
        Left = 435
        Top = 141
        Width = 48
        Height = 13
        Caption = 'Estado.:'
      end
      object Label8: TLabel
        Left = 8
        Top = 164
        Width = 92
        Height = 13
        Caption = 'Dt.Nascimento..'
      end
      object Label18: TLabel
        Left = 213
        Top = 189
        Width = 63
        Height = 13
        Caption = 'Conjuge....'
      end
      object Label31: TLabel
        Left = 8
        Top = 211
        Width = 87
        Height = 13
        Caption = 'Telefone.........'
      end
      object Label32: TLabel
        Left = 213
        Top = 211
        Width = 64
        Height = 13
        Caption = 'Celular......'
      end
      object Label40: TLabel
        Left = 435
        Top = 32
        Width = 45
        Height = 13
        Caption = 'Sexo....'
      end
      object Label41: TLabel
        Left = 8
        Top = 189
        Width = 88
        Height = 13
        Caption = 'Estado Civil.....'
      end
      object Label42: TLabel
        Left = 523
        Top = 190
        Width = 90
        Height = 13
        Caption = 'Escolaridade....'
      end
      object GroupBox4: TGroupBox
        Left = 0
        Top = 388
        Width = 790
        Height = 41
        Align = alBottom
        Caption = 'Filia'#231#227'o.:'
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 20
        object Label26: TLabel
          Left = 8
          Top = 21
          Width = 43
          Height = 13
          Caption = 'Pai......'
        end
        object Label27: TLabel
          Left = 332
          Top = 21
          Width = 41
          Height = 13
          Caption = 'M'#227'e....'
        end
        object GroupBox7: TGroupBox
          Left = 1
          Top = 1
          Width = 788
          Height = 39
          Align = alBottom
          Caption = 'Filia'#231#227'o.:'
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 0
          object Label49: TLabel
            Left = 8
            Top = 21
            Width = 43
            Height = 13
            Caption = 'Pai......'
          end
          object Label50: TLabel
            Left = 332
            Top = 21
            Width = 41
            Height = 13
            Caption = 'M'#227'e....'
          end
          object dbe_nomepai: TDBEdit
            Left = 50
            Top = 16
            Width = 279
            Height = 19
            Ctl3D = False
            DataField = 'CFPAI'
            DataSource = Src_Fun
            ParentCtl3D = False
            TabOrder = 0
          end
          object dbe_nomemae: TDBEdit
            Left = 372
            Top = 16
            Width = 279
            Height = 19
            Ctl3D = False
            DataField = 'CFMAE'
            DataSource = Src_Fun
            ParentCtl3D = False
            TabOrder = 1
          end
        end
      end
      object dbe_codigo: TDBEdit
        Left = 97
        Top = 8
        Width = 91
        Height = 19
        Ctl3D = False
        DataField = 'CFCODFUN'
        DataSource = Src_Fun
        ParentCtl3D = False
        TabOrder = 0
      end
      object dbe_nome: TDBEdit
        Left = 97
        Top = 28
        Width = 328
        Height = 19
        Ctl3D = False
        DataField = 'CFNOMFUN'
        DataSource = Src_Fun
        ParentCtl3D = False
        TabOrder = 1
      end
      object dbe_ender: TDBEdit
        Left = 97
        Top = 48
        Width = 328
        Height = 19
        Ctl3D = False
        DataField = 'CFENDERECO'
        DataSource = Src_Fun
        ParentCtl3D = False
        TabOrder = 3
      end
      object dbe_cep: TDBEdit
        Left = 487
        Top = 48
        Width = 88
        Height = 19
        Ctl3D = False
        DataField = 'CFCEP'
        DataSource = Src_Fun
        ParentCtl3D = False
        TabOrder = 4
      end
      object dbe_nacionalidade: TDBEdit
        Left = 97
        Top = 114
        Width = 296
        Height = 19
        Ctl3D = False
        DataField = 'CFNACIONAL'
        DataSource = Src_Fun
        ParentCtl3D = False
        TabOrder = 10
      end
      object dbe_codbai: TDBEdit
        Left = 97
        Top = 71
        Width = 60
        Height = 19
        Ctl3D = False
        DataField = 'CFCODBAI'
        DataSource = Src_Fun
        ParentCtl3D = False
        TabOrder = 5
        OnExit = dbe_codbaiExit
        OnKeyPress = dbe_codbaiKeyPress
      end
      object dbe_codloc: TDBEdit
        Left = 97
        Top = 92
        Width = 60
        Height = 19
        Ctl3D = False
        DataField = 'CFCODLOC'
        DataSource = Src_Fun
        ParentCtl3D = False
        TabOrder = 7
        OnExit = dbe_codlocExit
        OnKeyPress = dbe_codlocKeyPress
      end
      object dbe_nombai: TDBEdit
        Left = 159
        Top = 71
        Width = 266
        Height = 19
        Ctl3D = False
        DataField = 'CFBAIRRO'
        DataSource = Src_Fun
        ParentCtl3D = False
        TabOrder = 6
      end
      object dbe_nomloc: TDBEdit
        Left = 159
        Top = 92
        Width = 266
        Height = 19
        Ctl3D = False
        DataField = 'CFNOMLOC'
        DataSource = Src_Fun
        ParentCtl3D = False
        TabOrder = 8
      end
      object dbe_uf: TDBEdit
        Left = 487
        Top = 92
        Width = 34
        Height = 19
        Ctl3D = False
        DataField = 'CFUF'
        DataSource = Src_Fun
        ParentCtl3D = False
        TabOrder = 9
      end
      object dbe_naturalidade: TDBEdit
        Left = 158
        Top = 135
        Width = 267
        Height = 19
        Ctl3D = False
        DataField = 'CFNATURAL'
        DataSource = Src_Fun
        ParentCtl3D = False
        TabOrder = 12
      end
      object dbe_ufnat: TDBEdit
        Left = 487
        Top = 136
        Width = 34
        Height = 19
        Ctl3D = False
        DataField = 'CFNAT_UF'
        DataSource = Src_Fun
        ParentCtl3D = False
        TabOrder = 13
      end
      object dbe_fone: TDBEdit
        Left = 98
        Top = 205
        Width = 110
        Height = 19
        Ctl3D = False
        DataField = 'CFFONE'
        DataSource = Src_Fun
        ParentCtl3D = False
        TabOrder = 18
      end
      object dbe_celular: TDBEdit
        Left = 279
        Top = 206
        Width = 110
        Height = 19
        Ctl3D = False
        DataField = 'CFCELULAR'
        DataSource = Src_Fun
        ParentCtl3D = False
        TabOrder = 19
      end
      object dbe_conjugue: TDBEdit
        Left = 279
        Top = 184
        Width = 242
        Height = 19
        Ctl3D = False
        DataField = 'CFCONJUGE'
        DataSource = Src_Fun
        ParentCtl3D = False
        TabOrder = 16
      end
      object dbe_datamigracao: TDBDateEdit
        Left = 488
        Top = 113
        Width = 121
        Height = 21
        DataField = 'CFDTMIG'
        DataSource = Src_Fun
        Ctl3D = False
        NumGlyphs = 2
        ParentCtl3D = False
        TabOrder = 11
      end
      object dbe_dtnas: TDBDateEdit
        Left = 97
        Top = 158
        Width = 121
        Height = 21
        DataField = 'CFDTNAS'
        DataSource = Src_Fun
        Ctl3D = False
        NumGlyphs = 2
        ParentCtl3D = False
        TabOrder = 14
      end
      object dcb_estadocivil: TRxDBComboBox
        Left = 98
        Top = 182
        Width = 111
        Height = 21
        Style = csDropDownList
        Ctl3D = True
        DataField = 'CFEST_CIV'
        DataSource = Src_Fun
        EnableValues = True
        ItemHeight = 13
        Items.Strings = (
          'Solterio(a)'
          'Desquitado(a)'
          'Divorciado(a)'
          'Viuvo(a)'
          'Casado(a)'
          'Amaziado(a)')
        ParentCtl3D = False
        TabOrder = 15
        Values.Strings = (
          '0'
          '1'
          '2'
          '3'
          '4'
          '5')
        OnExit = dcb_estadocivilExit
      end
      object dcb_sexo: TRxDBComboBox
        Left = 487
        Top = 26
        Width = 89
        Height = 21
        Style = csDropDownList
        Ctl3D = True
        DataField = 'CFSEXO'
        DataSource = Src_Fun
        EnableValues = True
        ItemHeight = 13
        Items.Strings = (
          'Masculino'
          'Feminimo')
        ParentCtl3D = False
        TabOrder = 2
        Values.Strings = (
          '0'
          '1')
      end
      object dcb_escola: TRxDBComboBox
        Left = 615
        Top = 182
        Width = 146
        Height = 21
        Style = csDropDownList
        Ctl3D = True
        DataField = 'CFNIVEL_ESC'
        DataSource = Src_Fun
        EnableValues = True
        ItemHeight = 13
        Items.Strings = (
          'Analfabeto'
          '1'#186' Grau Incompleto'
          '1'#186' Grau Completo'
          '2'#186' Grau Incompleto'
          '2'#186' Grau Completo'
          'Superior Incompleto'
          'Superior Completo'
          'Pos Graduado'
          'Bacharelado')
        ParentCtl3D = False
        TabOrder = 17
        Values.Strings = (
          '0'
          '1'
          '2'
          '3'
          '4'
          '5'
          '6'
          '7'
          '8')
      end
    end
    object TabSheet1: TTabSheet [1]
      Caption = '&Continua'#231#227'o'
      ImageIndex = 1
      object Label52: TLabel
        Left = 145
        Top = 270
        Width = 46
        Height = 13
        Caption = 'Label52'
      end
      object GroupBox1: TGroupBox
        Left = 0
        Top = 0
        Width = 790
        Height = 167
        Align = alTop
        Caption = 'Documentos Pessoais:'
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 0
        object Label9: TLabel
          Left = 13
          Top = 18
          Width = 89
          Height = 13
          Caption = 'CNPF..............'
        end
        object Label10: TLabel
          Left = 12
          Top = 39
          Width = 90
          Height = 13
          Caption = 'Registro Geral..'
        end
        object Label11: TLabel
          Left = 270
          Top = 39
          Width = 71
          Height = 13
          Caption = 'Org'#227'o.........'
        end
        object Label12: TLabel
          Left = 475
          Top = 39
          Width = 103
          Height = 13
          Caption = 'Data Expedi'#231#227'o...'
        end
        object Label13: TLabel
          Left = 270
          Top = 18
          Width = 69
          Height = 13
          Caption = 'CTPS.........'
        end
        object Label14: TLabel
          Left = 13
          Top = 60
          Width = 89
          Height = 13
          Caption = 'Reservista.......'
        end
        object Label15: TLabel
          Left = 11
          Top = 102
          Width = 91
          Height = 13
          Caption = 'T'#237'tulo Eleitor....'
        end
        object Label16: TLabel
          Left = 11
          Top = 81
          Width = 91
          Height = 13
          Caption = 'Pis/Pasep........'
        end
        object Label17: TLabel
          Left = 12
          Top = 144
          Width = 89
          Height = 13
          Caption = 'Habilita'#231#227'o......'
        end
        object Label33: TLabel
          Left = 473
          Top = 17
          Width = 104
          Height = 13
          Caption = 'Data da Emiss'#227'o..'
        end
        object Label34: TLabel
          Left = 697
          Top = 37
          Width = 37
          Height = 13
          Caption = 'U.F....'
        end
        object Label35: TLabel
          Left = 270
          Top = 60
          Width = 71
          Height = 13
          Caption = 'Categoria....'
        end
        object Label36: TLabel
          Left = 628
          Top = 57
          Width = 106
          Height = 13
          Caption = 'U.F/Emissor.........'
        end
        object Label37: TLabel
          Left = 270
          Top = 102
          Width = 70
          Height = 13
          Caption = 'Zona..........'
        end
        object Label38: TLabel
          Left = 407
          Top = 103
          Width = 53
          Height = 13
          Caption = 'Se'#231#227'o....'
        end
        object Label39: TLabel
          Left = 11
          Top = 123
          Width = 90
          Height = 13
          Caption = 'Cidade/Titulo...'
        end
        object Label43: TLabel
          Left = 407
          Top = 123
          Width = 53
          Height = 13
          Caption = 'U.F........'
        end
        object Label44: TLabel
          Left = 346
          Top = 145
          Width = 71
          Height = 13
          Caption = 'Categoria....'
        end
        object edt_datavalidade: TLabel
          Left = 530
          Top = 144
          Width = 97
          Height = 13
          Caption = 'Data Validade....'
        end
        object Label23: TLabel
          Left = 697
          Top = 16
          Width = 37
          Height = 13
          Caption = 'U.F....'
        end
        object Label45: TLabel
          Left = 549
          Top = 123
          Width = 78
          Height = 13
          Caption = 'Data Emiss'#227'o'
        end
        object Label51: TLabel
          Left = 270
          Top = 80
          Width = 70
          Height = 13
          Caption = 'Tipo...........'
        end
        object edt_nomecidadetitulo: TEdit
          Left = 164
          Top = 120
          Width = 233
          Height = 19
          CharCase = ecUpperCase
          Enabled = False
          TabOrder = 17
        end
        object dbe_pfpj: TDBEdit
          Left = 104
          Top = 15
          Width = 150
          Height = 19
          HelpType = htKeyword
          DataField = 'CFCNPF'
          DataSource = Src_Fun
          TabOrder = 0
        end
        object dbe_registro: TDBEdit
          Left = 104
          Top = 36
          Width = 150
          Height = 19
          DataField = 'CFRG'
          DataSource = Src_Fun
          TabOrder = 4
        end
        object dbe_ctps: TDBEdit
          Left = 341
          Top = 15
          Width = 116
          Height = 19
          DataField = 'CFCTPS'
          DataSource = Src_Fun
          TabOrder = 1
        end
        object dbe_orgao: TDBEdit
          Left = 341
          Top = 36
          Width = 116
          Height = 19
          DataField = 'CFORGAO_REGISTRO'
          DataSource = Src_Fun
          TabOrder = 5
        end
        object dbe_dtemctps: TDBDateEdit
          Left = 579
          Top = 13
          Width = 109
          Height = 21
          DataField = 'CFDTEMCTPS'
          DataSource = Src_Fun
          NumGlyphs = 2
          TabOrder = 2
        end
        object dbe_dtrg: TDBDateEdit
          Left = 579
          Top = 36
          Width = 109
          Height = 19
          DataField = 'CFDTRG'
          DataSource = Src_Fun
          NumGlyphs = 2
          TabOrder = 6
        end
        object dbe_reserv: TDBEdit
          Left = 104
          Top = 57
          Width = 150
          Height = 19
          DataField = 'CFRESERV'
          DataSource = Src_Fun
          TabOrder = 8
        end
        object dbe_catreserv: TDBEdit
          Left = 341
          Top = 57
          Width = 239
          Height = 19
          DataField = 'CFCATGRESV'
          DataSource = Src_Fun
          TabOrder = 9
        end
        object dbe_pis: TDBEdit
          Left = 104
          Top = 78
          Width = 150
          Height = 19
          DataField = 'CFPIS'
          DataSource = Src_Fun
          TabOrder = 11
        end
        object dbe_titulo: TDBEdit
          Left = 104
          Top = 99
          Width = 150
          Height = 19
          DataField = 'CFTIT_ELE'
          DataSource = Src_Fun
          TabOrder = 13
          OnExit = dbe_tituloExit
        end
        object dbe_titzona: TDBEdit
          Left = 341
          Top = 99
          Width = 56
          Height = 19
          DataField = 'CFTITZONA'
          DataSource = Src_Fun
          TabOrder = 14
        end
        object dcb_tipoemp: TRxDBComboBox
          Left = 341
          Top = 77
          Width = 172
          Height = 21
          Style = csDropDownList
          Ctl3D = True
          DataField = 'CFTIPEMP'
          DataSource = Src_Fun
          EnableValues = True
          ItemHeight = 13
          Items.Strings = (
            'PRIMEIRO EMPREGO'
            'REEMPREO')
          ParentCtl3D = False
          TabOrder = 12
          Values.Strings = (
            '0'
            '1')
          OnExit = dcb_estadocivilExit
        end
        object dbe_secao: TDBEdit
          Left = 462
          Top = 100
          Width = 49
          Height = 19
          DataField = 'CFTITSECAO'
          DataSource = Src_Fun
          TabOrder = 15
        end
        object dbe_ufctps: TDBEdit
          Left = 736
          Top = 13
          Width = 29
          Height = 19
          DataField = 'CFUFCTPS'
          DataSource = Src_Fun
          TabOrder = 3
        end
        object dbe_ufrg: TDBEdit
          Left = 736
          Top = 34
          Width = 29
          Height = 19
          DataField = 'CFUFRG'
          DataSource = Src_Fun
          TabOrder = 7
        end
        object dbe_ufreserv: TDBEdit
          Left = 736
          Top = 54
          Width = 29
          Height = 19
          DataField = 'CFUFRESV'
          DataSource = Src_Fun
          TabOrder = 10
        end
        object dbe_titloc: TDBEdit
          Left = 103
          Top = 120
          Width = 60
          Height = 19
          DataField = 'CFTITLOC'
          DataSource = Src_Fun
          TabOrder = 16
          OnExit = dbe_titlocExit
          OnKeyPress = dbe_titlocKeyPress
        end
        object dbe_ufdetitulo: TDBEdit
          Left = 462
          Top = 121
          Width = 29
          Height = 19
          DataField = 'CFTITUF'
          DataSource = Src_Fun
          TabOrder = 18
        end
        object dbe_titdtemis: TDBDateEdit
          Left = 629
          Top = 121
          Width = 109
          Height = 19
          DataField = 'CFTITDTEM'
          DataSource = Src_Fun
          NumGlyphs = 2
          TabOrder = 19
        end
        object dbe_habil: TDBEdit
          Left = 103
          Top = 141
          Width = 239
          Height = 19
          DataField = 'CFHABIL'
          DataSource = Src_Fun
          TabOrder = 20
        end
        object dbe_habcat: TDBEdit
          Left = 418
          Top = 142
          Width = 109
          Height = 19
          DataField = 'CFCATGHB'
          DataSource = Src_Fun
          TabOrder = 21
        end
        object dbe_valhab: TDBDateEdit
          Left = 629
          Top = 142
          Width = 109
          Height = 19
          DataField = 'CFDTVLHB'
          DataSource = Src_Fun
          NumGlyphs = 2
          TabOrder = 22
        end
      end
      object GroupBox5: TGroupBox
        Left = 0
        Top = 167
        Width = 790
        Height = 58
        Align = alTop
        Caption = 'Observa'#231#245'es:'
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 1
        object dbe_obs2: TDBEdit
          Left = 8
          Top = 32
          Width = 380
          Height = 19
          DataField = 'CFOBSL02'
          DataSource = Src_Fun
          TabOrder = 1
        end
        object dbe_obs1: TDBEdit
          Left = 8
          Top = 14
          Width = 380
          Height = 19
          DataField = 'CFOBSL01'
          DataSource = Src_Fun
          TabOrder = 0
        end
        object dbe_obs3: TDBEdit
          Left = 389
          Top = 14
          Width = 380
          Height = 19
          DataField = 'CFOBSL03'
          DataSource = Src_Fun
          TabOrder = 2
        end
        object dbe_obs4: TDBEdit
          Left = 389
          Top = 32
          Width = 380
          Height = 19
          DataField = 'CFOBSL04'
          DataSource = Src_Fun
          TabOrder = 3
        end
      end
      object GroupBox6: TGroupBox
        Left = 0
        Top = 376
        Width = 775
        Height = 46
        Caption = 'Eventos Pr'#233'-Fixados:'
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 3
        object bb_Folha: TBitBtn
          Left = 3
          Top = 14
          Width = 149
          Height = 30
          Cursor = crHandPoint
          Caption = 'Folha de Pagamento'
          TabOrder = 0
          OnClick = bb_FolhaClick
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000120B0000120B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
            55555555FFFFFFFF5555555000000005555555577777777FF555550999999900
            55555575555555775F55509999999901055557F55555557F75F5001111111101
            105577FFFFFFFF7FF75F00000000000011057777777777775F755070FFFFFF0F
            01105777F555557F75F75500FFFFFF0FF0105577F555FF7F57575550FF700008
            8F0055575FF7777555775555000888888F005555777FFFFFFF77555550000000
            0F055555577777777F7F555550FFFFFF0F05555557F5FFF57F7F555550F000FF
            0005555557F777557775555550FFFFFF0555555557F555FF7F55555550FF7000
            05555555575FF777755555555500055555555555557775555555}
          NumGlyphs = 2
        end
        object bb_Ferias: TBitBtn
          Left = 152
          Top = 14
          Width = 148
          Height = 30
          Cursor = crHandPoint
          Caption = 'F'#233'rias'
          TabOrder = 1
          OnClick = bb_FeriasClick
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000120B0000120B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
            0000377777777777777707FFFFFFFFFFFF70773FF33333333F770F77FFFFFFFF
            77F07F773FFFFFFF77F70FFF7700000000007F337777777777770FFFFF0BBBBB
            BBB07F333F7F3FF33FF70FFF700B00BB00B07F3F777F77F377370F707F0BB0B0
            0BB07F77337F37F77337007EEE0BB0B0BBB077FFFF7F37F7F3370777770EE000
            EEE07777777F3777F3F7307EEE0E0E00E0E03773FF7F7377F73733707F0EE000
            0EE03337737F377773373333700EEE00EEE03333377F3377FF373333330EEEE0
            0EE03333337F33377F373333330EEEE00EE03333337F333773373333330EEEEE
            EEE03333337FFFFFFFF733333300000000003333337777777777}
          NumGlyphs = 2
        end
        object bb_13unico: TBitBtn
          Left = 300
          Top = 14
          Width = 157
          Height = 30
          Cursor = crHandPoint
          Caption = '13o. '#218'nico'
          TabOrder = 2
          OnClick = bb_13unicoClick
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000120B0000120B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333303333
            333333333337FF3333333333330003333333333333777F333333333333080333
            3333333333777F3333333333330003333333333333777F3333333333330F0333
            33333333337F7F3333333333330F033333333333337373F33333333330F7F033
            333333333737F73F333333330FF7FF03333333337F37F37F333333330FF7FF03
            333333337F37337F333333330FFFFF033333333373F333733333333330FFF033
            33333333373FF733333333333300033333333333337773333333333333333333
            3333333333333333333333333333333333333333333333333333333333333333
            3333333333333333333333333333333333333333333333333333}
          NumGlyphs = 2
        end
        object bb_13pp: TBitBtn
          Left = 457
          Top = 14
          Width = 157
          Height = 30
          Cursor = crHandPoint
          Caption = '13o. Primeira Parcela'
          TabOrder = 3
          OnClick = bb_13ppClick
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000120B0000120B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333303333
            333333333337FF3333333333330003333333333333777F333333333333080333
            3333333F33777FF33F3333B33B000B33B3333373F777773F7333333BBB0B0BBB
            33333337737F7F77F333333BBB0F0BBB33333337337373F73F3333BBB0F7F0BB
            B333337F3737F73F7F3333BB0FB7BF0BB3333F737F37F37F73FFBBBB0BF7FB0B
            BBB3773F7F37337F377333BB0FBFBF0BB333337F73F333737F3333BBB0FBF0BB
            B3333373F73FF7337333333BBB000BBB33333337FF777337F333333BBBBBBBBB
            3333333773FF3F773F3333B33BBBBB33B33333733773773373333333333B3333
            333333333337F33333333333333B333333333333333733333333}
          NumGlyphs = 2
        end
        object bb_sp: TBitBtn
          Left = 614
          Top = 14
          Width = 157
          Height = 30
          Cursor = crHandPoint
          Caption = '13o. Segunda Parcela'
          TabOrder = 4
          OnClick = bb_spClick
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
      end
      object pgc_dados: TPageControl
        Left = 0
        Top = 225
        Width = 778
        Height = 151
        Cursor = crHandPoint
        ActivePage = tbs_contrato
        Style = tsFlatButtons
        TabOrder = 2
        object tbs_contrato: TTabSheet
          Caption = 'Contrato'
          object GroupBox3: TGroupBox
            Left = 0
            Top = -1
            Width = 770
            Height = 121
            Caption = 'Sobre Contrato:'
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 0
            object Label19: TLabel
              Left = 8
              Top = 17
              Width = 92
              Height = 13
              Caption = 'Departamento...'
            end
            object Label20: TLabel
              Left = 8
              Top = 37
              Width = 90
              Height = 13
              Caption = 'Cargo..............'
            end
            object Label21: TLabel
              Left = 8
              Top = 82
              Width = 87
              Height = 13
              Caption = 'Dt.Admiss'#227'o....'
            end
            object Label22: TLabel
              Left = 489
              Top = 79
              Width = 94
              Height = 13
              Caption = 'Data Demiss'#227'o..'
            end
            object lbl_salario: TLabel
              Left = 8
              Top = 104
              Width = 92
              Height = 13
              Caption = 'Sal'#225'rio.............'
            end
            object Label24: TLabel
              Left = 225
              Top = 104
              Width = 100
              Height = 13
              Caption = 'Gratifica'#231#245'es......'
            end
            object Label28: TLabel
              Left = 225
              Top = 83
              Width = 101
              Height = 13
              Caption = 'Status................'
            end
            object Label29: TLabel
              Left = 355
              Top = 79
              Width = 110
              Height = 13
              Caption = 'Status=8 Demitido'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clRed
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold, fsItalic]
              ParentFont = False
            end
            object Label30: TLabel
              Left = 8
              Top = 59
              Width = 90
              Height = 13
              Caption = 'CBO................'
            end
            object Label25: TLabel
              Left = 486
              Top = 100
              Width = 131
              Height = 13
              Caption = 'N'#250'mero Dependentes..'
            end
            object Label63: TLabel
              Left = 780
              Top = 10
              Width = 46
              Height = 13
              Caption = 'Label63'
              Visible = False
            end
            object Label71: TLabel
              Left = 407
              Top = 19
              Width = 82
              Height = 13
              Caption = 'Posto/Local...'
            end
            object Label72: TLabel
              Left = 407
              Top = 37
              Width = 82
              Height = 13
              Caption = 'Turno............'
            end
            object Label73: TLabel
              Left = 209
              Top = 59
              Width = 48
              Height = 13
              Caption = 'Folga....'
            end
            object edt_coddepartamento: TComboEdit
              Left = 102
              Top = 13
              Width = 53
              Height = 19
              Alignment = taRightJustify
              Ctl3D = False
              ButtonWidth = 0
              MaxLength = 6
              NumGlyphs = 1
              ParentCtl3D = False
              TabOrder = 0
              OnExit = edt_coddepartamentoExit
              OnKeyPress = edt_coddepartamentoKeyPress
            end
            object edt_nomedepartamento: TEdit
              Left = 157
              Top = 13
              Width = 245
              Height = 19
              CharCase = ecUpperCase
              Enabled = False
              MaxLength = 35
              TabOrder = 11
            end
            object edt_codcargo: TComboEdit
              Left = 102
              Top = 34
              Width = 53
              Height = 19
              Alignment = taRightJustify
              CharCase = ecUpperCase
              ButtonWidth = 0
              MaxLength = 6
              NumGlyphs = 1
              TabOrder = 2
              OnExit = edt_codcargoExit
              OnKeyPress = edt_codcargoKeyPress
            end
            object edt_nomecargo: TEdit
              Left = 157
              Top = 34
              Width = 245
              Height = 19
              CharCase = ecUpperCase
              Enabled = False
              MaxLength = 35
              TabOrder = 12
            end
            object edt_cbo: TEdit
              Left = 102
              Top = 55
              Width = 70
              Height = 19
              MaxLength = 9
              TabOrder = 4
            end
            object edt_datadmissao: TDateEdit
              Left = 102
              Top = 76
              Width = 109
              Height = 19
              Ctl3D = False
              NumGlyphs = 2
              ParentCtl3D = False
              YearDigits = dyFour
              TabOrder = 6
              OnExit = edt_datadmissaoExit
            end
            object edt_salario: TCurrencyEdit
              Left = 102
              Top = 97
              Width = 109
              Height = 19
              AutoSize = False
              DisplayFormat = ',0.00;-,0.00'
              TabOrder = 9
            end
            object edt_status: TEdit
              Left = 330
              Top = 76
              Width = 20
              Height = 19
              MaxLength = 10
              TabOrder = 7
              OnExit = edt_statusExit
            end
            object edt_gratificacoes: TCurrencyEdit
              Left = 331
              Top = 97
              Width = 121
              Height = 19
              AutoSize = False
              DisplayFormat = ',0.00;-,0.00'
              TabOrder = 10
            end
            object edt_datademissao: TDateEdit
              Left = 585
              Top = 76
              Width = 109
              Height = 19
              Ctl3D = False
              NumGlyphs = 2
              ParentCtl3D = False
              YearDigits = dyFour
              TabOrder = 8
              OnExit = edt_datademissaoExit
            end
            object edt_dependentes: TComboEdit
              Left = 619
              Top = 97
              Width = 75
              Height = 19
              Alignment = taRightJustify
              Ctl3D = False
              ButtonWidth = 0
              MaxLength = 3
              NumGlyphs = 1
              ParentCtl3D = False
              TabOrder = 13
              OnExit = edt_dependentesExit
            end
            object codcli: TEdit
              Left = 493
              Top = 13
              Width = 53
              Height = 19
              TabOrder = 1
              OnExit = codcliExit
              OnKeyPress = codcliKeyPress
            end
            object nomcli: TEdit
              Left = 547
              Top = 13
              Width = 219
              Height = 19
              Enabled = False
              TabOrder = 14
            end
            object codturno: TEdit
              Left = 493
              Top = 34
              Width = 53
              Height = 19
              TabOrder = 3
              OnExit = codturnoExit
              OnKeyPress = codturnoKeyPress
            end
            object nometurno: TEdit
              Left = 547
              Top = 34
              Width = 219
              Height = 19
              Enabled = False
              TabOrder = 15
            end
            object cb_semana: TComboBox
              Left = 259
              Top = 55
              Width = 145
              Height = 21
              Style = csDropDownList
              Ctl3D = False
              ItemHeight = 13
              ItemIndex = 0
              ParentCtl3D = False
              TabOrder = 5
              Text = 'DOMINGO'
              Items.Strings = (
                'DOMINGO'
                'SEGUNDA-FEIRA'
                'TERCA-FEIRA'
                'QUARTA-FEIRA'
                'QUINTA-FEIRA'
                'SEXTA-FEIRA'
                'SABADO'
                'POR ESCALA')
            end
          end
        end
        object tbs_dependentes: TTabSheet
          Caption = 'Dependentes'
          ImageIndex = 1
          object Bevel3: TBevel
            Left = 0
            Top = 0
            Width = 770
            Height = 120
            Align = alClient
            Shape = bsFrame
            Style = bsRaised
          end
          object Label57: TLabel
            Left = 5
            Top = 4
            Width = 33
            Height = 13
            Caption = 'Nome'
          end
          object Label58: TLabel
            Left = 185
            Top = 4
            Width = 61
            Height = 13
            Caption = 'Data Nasc'
          end
          object Label59: TLabel
            Left = 284
            Top = 4
            Width = 45
            Height = 13
            Caption = 'Cart'#243'rio'
          end
          object Label60: TLabel
            Left = 464
            Top = 4
            Width = 66
            Height = 13
            Caption = 'N'#186' Registro'
          end
          object Label61: TLabel
            Left = 567
            Top = 4
            Width = 29
            Height = 13
            Caption = 'Livro'
          end
          object Label62: TLabel
            Left = 605
            Top = 4
            Width = 40
            Height = 13
            Caption = 'P'#225'gina'
          end
          object Label65: TLabel
            Left = 659
            Top = 4
            Width = 65
            Height = 13
            Caption = 'Parentesco'
          end
          object edt_nomedependente: TEdit
            Left = 5
            Top = 17
            Width = 180
            Height = 21
            CharCase = ecUpperCase
            MaxLength = 35
            TabOrder = 0
            Text = 'EDT_NOMEDEPENDENTE'
          end
          object edt_datanasc: TDateEdit
            Left = 185
            Top = 17
            Width = 100
            Height = 21
            NumGlyphs = 2
            TabOrder = 1
            OnExit = edt_datanascExit
          end
          object edt_cartorio: TEdit
            Left = 284
            Top = 17
            Width = 180
            Height = 21
            CharCase = ecUpperCase
            MaxLength = 30
            TabOrder = 2
            Text = 'EDT_CARTORIO'
          end
          object edt_registrocartorio: TEdit
            Left = 464
            Top = 17
            Width = 102
            Height = 21
            CharCase = ecUpperCase
            MaxLength = 20
            TabOrder = 3
            Text = 'EDT_REGISTROCARTORIO'
          end
          object edt_livro: TEdit
            Left = 567
            Top = 17
            Width = 36
            Height = 21
            CharCase = ecUpperCase
            MaxLength = 10
            TabOrder = 4
            Text = 'EDT_LIVRO'
          end
          object edt_pagina: TEdit
            Left = 604
            Top = 17
            Width = 53
            Height = 21
            CharCase = ecUpperCase
            MaxLength = 10
            TabOrder = 5
            Text = 'EDT_PAGINA'
          end
          object Grid_Dependentes: TDBGrid
            Left = 5
            Top = 39
            Width = 758
            Height = 79
            DataSource = Ds_Dependentes
            Options = [dgTitles, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
            PopupMenu = pop_depe
            TabOrder = 7
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = [fsBold]
            OnDblClick = Grid_DependentesDblClick
            Columns = <
              item
                Expanded = False
                FieldName = 'DPTNOME'
                Title.Caption = 'Nome'
                Width = 178
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DPTDTNASC'
                Title.Caption = 'Data Nasc'
                Width = 97
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DPTCARTO'
                Title.Caption = 'Cart'#243'rio'
                Width = 180
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DPTREG'
                Title.Caption = 'N'#186' Registro'
                Width = 102
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DPTLIVRO'
                Title.Caption = 'Livro'
                Width = 36
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DPTPGN'
                Title.Caption = 'P'#225'gina'
                Width = 53
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DPTPARENTESCO'
                Title.Caption = 'Parentesco'
                Width = 85
                Visible = True
              end>
          end
          object edt_parentesco: TComboBox
            Left = 658
            Top = 17
            Width = 105
            Height = 21
            ItemHeight = 0
            TabOrder = 6
            OnExit = edt_parentescoExit
          end
        end
        object tbs_registro: TTabSheet
          Caption = 'Registro da Policia Federal'
          ImageIndex = 2
          object Bevel1: TBevel
            Left = 0
            Top = 0
            Width = 770
            Height = 120
            Align = alClient
            Shape = bsFrame
            Style = bsRaised
          end
          object Label46: TLabel
            Left = 8
            Top = 4
            Width = 84
            Height = 13
            Caption = 'N'#186' do Registro'
          end
          object Label47: TLabel
            Left = 129
            Top = 4
            Width = 82
            Height = 13
            Caption = #211'rg'#227'o Emissor'
          end
          object Label48: TLabel
            Left = 215
            Top = 4
            Width = 91
            Height = 13
            Caption = 'Data Conclus'#227'o'
          end
          object Label53: TLabel
            Left = 314
            Top = 4
            Width = 95
            Height = 13
            Caption = 'Dta. Vencimento'
          end
          object Label54: TLabel
            Left = 415
            Top = 4
            Width = 26
            Height = 13
            Caption = 'CNV'
          end
          object Label55: TLabel
            Left = 537
            Top = 4
            Width = 71
            Height = 13
            Caption = 'Dta Emiss'#227'o'
          end
          object Label56: TLabel
            Left = 637
            Top = 4
            Width = 74
            Height = 13
            Caption = 'Dta Validade'
          end
          object edt_numeroregistro: TEdit
            Left = 8
            Top = 17
            Width = 121
            Height = 21
            CharCase = ecUpperCase
            MaxLength = 25
            TabOrder = 0
            Text = 'EDT_NUMEROREGISTRO'
          end
          object GridRegistro: TDBGrid
            Left = 8
            Top = 38
            Width = 729
            Height = 62
            DataSource = Src_Registro
            Options = [dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
            PopupMenu = pop_registro
            TabOrder = 1
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = [fsBold]
            OnDblClick = GridRegistroDblClick
            Columns = <
              item
                Expanded = False
                FieldName = 'DFNREG'
                Width = 119
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DFORGEM'
                Width = 84
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DFDT_CONC'
                Width = 99
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DFDT_VENC'
                Width = 99
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DFCNV'
                Width = 120
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DFDT_EMICVN'
                Width = 100
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DFDT_VENCVN'
                Width = 86
                Visible = True
              end>
          end
          object edt_orgaoemissor: TEdit
            Left = 129
            Top = 17
            Width = 84
            Height = 21
            CharCase = ecUpperCase
            MaxLength = 10
            TabOrder = 2
            Text = 'EDT_ORGAOEMISSOR'
          end
          object edt_datavencimento: TDateEdit
            Left = 314
            Top = 16
            Width = 100
            Height = 22
            NumGlyphs = 2
            TabOrder = 3
            OnExit = edt_datavencimentoExit
          end
          object edt_dataconclusao: TDateEdit
            Left = 214
            Top = 16
            Width = 100
            Height = 22
            NumGlyphs = 2
            TabOrder = 4
            OnExit = edt_dataconclusaoExit
          end
          object edt_cnv: TEdit
            Left = 414
            Top = 16
            Width = 121
            Height = 21
            CharCase = ecUpperCase
            MaxLength = 20
            TabOrder = 5
            Text = 'EDT_CNV'
          end
          object edt_emissaocvn: TDateEdit
            Left = 536
            Top = 16
            Width = 100
            Height = 22
            NumGlyphs = 2
            TabOrder = 6
            OnExit = edt_emissaocvnExit
          end
          object edt_validadecvn: TDateEdit
            Left = 637
            Top = 16
            Width = 100
            Height = 22
            NumGlyphs = 2
            TabOrder = 7
            OnExit = edt_validadecvnExit
          end
        end
        object tbs_sindicato: TTabSheet
          Caption = 'Sindicato'
          ImageIndex = 3
          object Bevel4: TBevel
            Left = 0
            Top = 0
            Width = 770
            Height = 120
            Align = alClient
            Shape = bsFrame
            Style = bsRaised
          end
          object Label64: TLabel
            Left = 6
            Top = 32
            Width = 54
            Height = 13
            Caption = 'Sindicato'
          end
          object chk_impostosindicato: TCheckBox
            Left = 5
            Top = 10
            Width = 271
            Height = 17
            Caption = 'Imposto Sindical cobrado em Ano Corrente'
            TabOrder = 0
            OnClick = chk_impostosindicatoClick
          end
          object edt_codsindicato: TComboEdit
            Left = 6
            Top = 47
            Width = 70
            Height = 21
            Alignment = taRightJustify
            GlyphKind = gkEllipsis
            ButtonWidth = 0
            NumGlyphs = 1
            TabOrder = 1
            Text = 'edt_codsindicato'
            OnExit = edt_codsindicatoExit
            OnKeyPress = edt_codsindicatoKeyPress
          end
          object edt_nomesindicato: TEdit
            Left = 77
            Top = 47
            Width = 318
            Height = 21
            Color = cl3DLight
            Enabled = False
            MaxLength = 35
            TabOrder = 2
            Text = 'edt_nomesindicato'
          end
        end
        object tbs_uniforme: TTabSheet
          Caption = 'Uniforme'
          ImageIndex = 4
          object Bevel7: TBevel
            Left = 0
            Top = 0
            Width = 770
            Height = 120
            Align = alClient
            Shape = bsFrame
            Style = bsRaised
          end
          object Label66: TLabel
            Left = 10
            Top = 15
            Width = 210
            Height = 13
            Caption = 'Altura............................................'
          end
          object Label67: TLabel
            Left = 10
            Top = 35
            Width = 209
            Height = 13
            Caption = 'Peso.............................................'
          end
          object Label68: TLabel
            Left = 10
            Top = 56
            Width = 209
            Height = 13
            Caption = 'N'#250'mero da cal'#231'a............................'
          end
          object Label69: TLabel
            Left = 10
            Top = 78
            Width = 209
            Height = 13
            Caption = 'N'#250'mero da camisa..........................'
          end
          object Label70: TLabel
            Left = 10
            Top = 100
            Width = 211
            Height = 13
            Caption = 'N'#250'mero do cal'#231'ado.........................'
          end
          object edt_altura: TCurrencyEdit
            Left = 225
            Top = 7
            Width = 100
            Height = 21
            AutoSize = False
            DisplayFormat = ',0.00;-,0.00'
            TabOrder = 0
          end
          object edt_peso: TCurrencyEdit
            Left = 225
            Top = 28
            Width = 100
            Height = 21
            AutoSize = False
            DisplayFormat = ',0.00;-,0.00'
            TabOrder = 1
          end
          object edt_calca: TCurrencyEdit
            Left = 225
            Top = 49
            Width = 100
            Height = 21
            AutoSize = False
            DecimalPlaces = 0
            DisplayFormat = '0'
            TabOrder = 2
          end
          object edt_camisa: TCurrencyEdit
            Left = 225
            Top = 70
            Width = 100
            Height = 21
            AutoSize = False
            DecimalPlaces = 0
            DisplayFormat = '0'
            TabOrder = 3
          end
          object edt_calcado: TCurrencyEdit
            Left = 225
            Top = 92
            Width = 100
            Height = 21
            AutoSize = False
            DecimalPlaces = 0
            DisplayFormat = '0'
            TabOrder = 4
          end
        end
        object Ts_Maquinario: TTabSheet
          Caption = 'Maquinario'
          ImageIndex = 5
          object Label74: TLabel
            Left = 0
            Top = 3
            Width = 52
            Height = 13
            Caption = 'Codigo..:'
          end
          object DBGrid2: TDBGrid
            Left = 0
            Top = 32
            Width = 770
            Height = 88
            Align = alBottom
            DataSource = Src_FImo
            PopupMenu = popImobilizado
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = [fsBold]
            Columns = <
              item
                Expanded = False
                FieldName = 'CFI_CODIMO'
                Title.Caption = 'CODIGO'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'NOMIMO'
                ReadOnly = True
                Title.Caption = 'IMOBILIZADO'
                Visible = True
              end>
          end
          object edt_Codigo: TEdit
            Left = 54
            Top = 0
            Width = 51
            Height = 21
            CharCase = ecUpperCase
            TabOrder = 1
            OnExit = edt_CodigoExit
            OnKeyPress = edt_CodigoKeyPress
          end
          object edt_nomimo: TEdit
            Left = 105
            Top = 0
            Width = 242
            Height = 21
            CharCase = ecUpperCase
            ReadOnly = True
            TabOrder = 2
            OnExit = edt_nomimoExit
          end
        end
      end
    end
    inherited tsTab: TTabSheet
      object Bevel6: TBevel [0]
        Left = 0
        Top = 388
        Width = 782
        Height = 34
        Align = alBottom
        Shape = bsFrame
        Style = bsRaised
      end
      inherited DBGrid1: TDBGrid
        Width = 775
        Height = 386
        Align = alNone
        DataSource = Src_Fun
        OnDblClick = DBGrid1DblClick
        Columns = <
          item
            Expanded = False
            FieldName = 'CFCODFUN'
            Title.Caption = 'Codigo'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CFNOMFUN'
            Title.Caption = 'Nome'
            Width = 439
            Visible = True
          end>
      end
      object btn_gerar: TBitBtn
        Left = 610
        Top = 394
        Width = 163
        Height = 25
        Caption = 'Exportar para Excel'
        TabOrder = 1
        OnClick = btn_gerarClick
        Glyph.Data = {
          F6000000424DF600000000000000760000002800000010000000100000000100
          04000000000080000000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555777555
          5555555555000757755555575500005007555570058880000075570870088078
          007555787887087777755550880FF0800007708080888F7088077088F0708F78
          88077000F0778080005555508F0008800755557878FF88777075570870080088
          0755557075888070755555575500075555555555557775555555}
      end
    end
  end
  object tlb_funcionario: TToolBar
    Left = 0
    Top = 0
    Width = 798
    Height = 33
    ButtonHeight = 29
    TabOrder = 4
    object btn_incluir: TBitBtn
      Left = 0
      Top = 2
      Width = 94
      Height = 29
      Cursor = crHandPoint
      Caption = '&Novo'
      TabOrder = 5
      OnClick = btn_incluirClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0033333333B333
        333B33FF33337F3333F73BB3777BB7777BB3377FFFF77FFFF77333B000000000
        0B3333777777777777333330FFFFFFFF07333337F33333337F333330FFFFFFFF
        07333337F33333337F333330FFFFFFFF07333337F33333337F333330FFFFFFFF
        07333FF7F33333337FFFBBB0FFFFFFFF0BB37777F3333333777F3BB0FFFFFFFF
        0BBB3777F3333FFF77773330FFFF000003333337F333777773333330FFFF0FF0
        33333337F3337F37F3333330FFFF0F0B33333337F3337F77FF333330FFFF003B
        B3333337FFFF77377FF333B000000333BB33337777777F3377FF3BB3333BB333
        3BB33773333773333773B333333B3333333B7333333733333337}
      NumGlyphs = 2
    end
    object btn_alterar: TBitBtn
      Left = 94
      Top = 2
      Width = 94
      Height = 29
      Cursor = crHandPoint
      Caption = '&Alterar'
      TabOrder = 4
      OnClick = btn_alterarClick
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
    object btn_cancelar: TBitBtn
      Left = 188
      Top = 2
      Width = 94
      Height = 29
      Cursor = crHandPoint
      Caption = '&Cancelar'
      TabOrder = 3
      OnClick = btn_cancelarClick
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
    object btn_excluir: TBitBtn
      Left = 282
      Top = 2
      Width = 94
      Height = 29
      Cursor = crHandPoint
      Caption = '&Excluir'
      TabOrder = 2
      OnClick = btn_excluirClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
        55555FFFFFFF5F55FFF5777777757559995777777775755777F7555555555550
        305555555555FF57F7F555555550055BB0555555555775F777F55555550FB000
        005555555575577777F5555550FB0BF0F05555555755755757F555550FBFBF0F
        B05555557F55557557F555550BFBF0FB005555557F55575577F555500FBFBFB0
        B05555577F555557F7F5550E0BFBFB00B055557575F55577F7F550EEE0BFB0B0
        B05557FF575F5757F7F5000EEE0BFBF0B055777FF575FFF7F7F50000EEE00000
        B0557777FF577777F7F500000E055550805577777F7555575755500000555555
        05555777775555557F5555000555555505555577755555557555}
      NumGlyphs = 2
    end
    object btn_gravar: TBitBtn
      Left = 376
      Top = 2
      Width = 94
      Height = 29
      Cursor = crHandPoint
      Caption = '&Gravar'
      Enabled = False
      TabOrder = 1
      OnClick = btn_gravarClick
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
    object btn_anterior: TBitBtn
      Left = 470
      Top = 2
      Width = 94
      Height = 29
      Cursor = crHandPoint
      Caption = 'Anterior'
      TabOrder = 6
      OnClick = btn_anteriorClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333333333333333333333333333333333333333333333333333333333
        3333333333333FF3333333333333003333333333333F77F33333333333009033
        333333333F7737F333333333009990333333333F773337FFFFFF330099999000
        00003F773333377777770099999999999990773FF33333FFFFF7330099999000
        000033773FF33777777733330099903333333333773FF7F33333333333009033
        33333333337737F3333333333333003333333333333377333333333333333333
        3333333333333333333333333333333333333333333333333333333333333333
        3333333333333333333333333333333333333333333333333333}
      NumGlyphs = 2
    end
    object btn_proximo: TBitBtn
      Left = 564
      Top = 2
      Width = 94
      Height = 29
      Cursor = crHandPoint
      Caption = 'Pr'#243'ximo'
      TabOrder = 7
      OnClick = btn_proximoClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333333333333333333333333333333333333333333333333333333333
        3333333333333333333333333333333333333333333FF3333333333333003333
        3333333333773FF3333333333309003333333333337F773FF333333333099900
        33333FFFFF7F33773FF30000000999990033777777733333773F099999999999
        99007FFFFFFF33333F7700000009999900337777777F333F7733333333099900
        33333333337F3F77333333333309003333333333337F77333333333333003333
        3333333333773333333333333333333333333333333333333333333333333333
        3333333333333333333333333333333333333333333333333333}
      Layout = blGlyphRight
      NumGlyphs = 2
    end
    object btn_sair: TBitBtn
      Left = 658
      Top = 2
      Width = 125
      Height = 29
      Cursor = crHandPoint
      Caption = '&Sair'
      TabOrder = 0
      OnClick = btn_sairClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00330000000000
        03333377777777777F333301111111110333337F333333337F33330111111111
        0333337F333333337F333301111111110333337F333333337F33330111111111
        0333337F333333337F333301111111110333337F333333337F33330111111111
        0333337F3333333F7F333301111111B10333337F333333737F33330111111111
        0333337F333333337F333301111111110333337F33FFFFF37F3333011EEEEE11
        0333337F377777F37F3333011EEEEE110333337F37FFF7F37F3333011EEEEE11
        0333337F377777337F333301111111110333337F333333337F33330111111111
        0333337FFFFFFFFF7F3333000000000003333377777777777333}
      NumGlyphs = 2
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 33
    Width = 798
    Height = 4
    Align = alTop
    Color = clActiveCaption
    TabOrder = 5
  end
  object Panel3: TPanel
    Left = 0
    Top = 66
    Width = 798
    Height = 4
    Align = alTop
    Color = clActiveCaption
    TabOrder = 6
  end
  object Src_Registro: TDataSource
    DataSet = DM2.Tb_CADDPF
    Left = 690
    Top = 436
  end
  object Ds_Dependentes: TDataSource
    DataSet = DM2.TB_DEPEN
    Left = 588
    Top = 436
  end
  object Src_Fun: TDataSource
    DataSet = DM2.Tb_Fun
    OnDataChange = Src_FunDataChange
    Left = 210
    Top = 72
  end
  object pop_depe: TPopupMenu
    Left = 528
    Top = 437
    object Alterar1: TMenuItem
      Caption = '&Alterar'
      OnClick = Alterar1Click
    end
    object Excluir1: TMenuItem
      Caption = 'Excluir'
      Enabled = False
      OnClick = Excluir1Click
    end
    object Gravar_depen: TMenuItem
      Caption = '&Gravar'
      Visible = False
      OnClick = Gravar_depenClick
    end
  end
  object pop_registro: TPopupMenu
    Left = 744
    Top = 437
    object Alterar2: TMenuItem
      Caption = '&Alterar'
      OnClick = Alterar2Click
    end
    object Excluir2: TMenuItem
      Caption = 'Excluir'
      OnClick = Excluir2Click
    end
    object Gravar1: TMenuItem
      Caption = '&Gravar'
      OnClick = Gravar1Click
    end
  end
  object Src_FImo: TDataSource
    DataSet = DM2.Tb_FImo
    Left = 274
    Top = 428
  end
  object popImobilizado: TPopupMenu
    Left = 280
    Top = 397
    object MenuItem2: TMenuItem
      Caption = 'Excluir'
      OnClick = Excluir1Click
    end
  end
end
