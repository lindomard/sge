inherited Frm_Cli: TFrm_Cli
  Left = 423
  Top = 128
  Width = 807
  Height = 575
  Caption = 'Manuten'#231#227'o no Cadastro de Clientes'
  Font.Style = []
  FormStyle = fsNormal
  KeyPreview = True
  OldCreateOrder = True
  Visible = False
  OnCloseQuery = FormCloseQuery
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Top = 30
    Width = 799
    Height = 41
    BevelInner = bvRaised
    BevelOuter = bvLowered
    inherited lbl_emp: TLabel
      Left = 761
      Top = 2
      Width = 36
      Height = 37
    end
    inherited Pesquisapor: TLabel
      Left = 2
      Top = 16
      Width = 67
    end
    inherited BBnAtu: TBitBtn
      Left = 390
      Top = 13
      Width = 69
      Height = 22
      Cursor = crHandPoint
      OnClick = BBnAtuClick
    end
    inherited CAMPO: TComboBox
      Left = 72
      Top = 13
      OnExit = CAMPOExit
      Items.Strings = (
        'Nome'
        'C'#243'digo'
        'CNPJ'
        'CNPF'
        'Cidade'
        'Bairro'
        'Denomina'#231#227'o'
        'UF'
        'C'#243'd Rede'
        'Email')
    end
    inherited Edit1: TMaskEdit
      Left = 189
      Top = 13
      Width = 200
      OnChange = Edit1Change
    end
    object CLBStatus: TCheckListBox
      Left = 460
      Top = 16
      Width = 278
      Height = 17
      Color = 16776176
      Columns = 4
      ItemHeight = 13
      Items.Strings = (
        'Ativos'
        'Bloq.Temp'
        'Bloq.Def.'
        'Todos')
      Style = lbOwnerDrawFixed
      TabOrder = 3
      OnClick = CLBStatusClick
    end
  end
  inherited PC1: TPageControl
    Top = 71
    Width = 799
    Height = 426
    OnChange = PC1Change
    inherited tsCad: TTabSheet
      object Label1: TLabel
        Left = 29
        Top = 16
        Width = 86
        Height = 13
        Caption = 'C'#243'digo do Cliente:'
        FocusControl = DBEdit1
      end
      object RAZAO: TLabel
        Left = 16
        Top = 35
        Width = 99
        Height = 13
        Caption = 'Nome/Raz'#227'o Social:'
        FocusControl = db_razao
      end
      object NOMFAN: TLabel
        Left = 393
        Top = 37
        Width = 89
        Height = 13
        Caption = 'Nome de Fantasia:'
      end
      object Label3: TLabel
        Left = 66
        Top = 53
        Width = 49
        Height = 13
        Caption = 'Endereco:'
      end
      object Label7: TLabel
        Left = 86
        Top = 70
        Width = 30
        Height = 13
        Caption = 'Bairro:'
      end
      object Label8: TLabel
        Left = 387
        Top = 72
        Width = 93
        Height = 13
        Caption = 'Localidade/Cidade:'
      end
      object Label4: TLabel
        Left = 731
        Top = 72
        Width = 18
        Height = 13
        Caption = 'Est:'
        FocusControl = db_cep
      end
      object Label9: TLabel
        Left = 88
        Top = 88
        Width = 27
        Height = 13
        Caption = 'CEP.:'
        FocusControl = db_cep
      end
      object Label11: TLabel
        Left = 73
        Top = 161
        Width = 42
        Height = 13
        Caption = 'Fone 01:'
      end
      object Label12: TLabel
        Left = 244
        Top = 161
        Width = 42
        Height = 13
        Caption = 'Fone 02:'
      end
      object Label55: TLabel
        Left = 378
        Top = 90
        Width = 86
        Height = 13
        Caption = 'Ponto Refer'#234'ncia:'
      end
      object CNPJ: TLabel
        Left = 85
        Top = 179
        Width = 30
        Height = 13
        Caption = 'CNPJ:'
      end
      object IE: TLabel
        Left = 389
        Top = 180
        Width = 90
        Height = 13
        Caption = 'Inscricao Estadual:'
      end
      object Label25: TLabel
        Left = 24
        Top = 197
        Width = 91
        Height = 13
        Caption = 'Endere'#231'o p/E mail:'
      end
      object Label26: TLabel
        Left = 415
        Top = 195
        Width = 62
        Height = 13
        Caption = 'Home Page.:'
      end
      object Label29: TLabel
        Left = 29
        Top = 223
        Width = 86
        Height = 13
        Caption = 'Nome do Contato:'
      end
      object Label30: TLabel
        Left = 434
        Top = 223
        Width = 45
        Height = 13
        Caption = 'Telefone:'
      end
      object Label51: TLabel
        Left = 613
        Top = 161
        Width = 20
        Height = 13
        Caption = 'Fax:'
      end
      object Label50: TLabel
        Left = 40
        Top = 265
        Width = 75
        Height = 13
        Caption = 'Transportadora:'
      end
      object lbl_lc: TLabel
        Left = 34
        Top = 329
        Width = 81
        Height = 13
        Caption = 'Limite de Cr'#233'dito:'
      end
      object Label40: TLabel
        Left = 26
        Top = 310
        Width = 89
        Height = 13
        Caption = 'Validade Cadastro:'
      end
      object Bevel1: TBevel
        Left = -1
        Top = 108
        Width = 788
        Height = 2
      end
      object Label44: TLabel
        Left = 17
        Top = 117
        Width = 98
        Height = 13
        Caption = 'Endere'#231'o Cobran'#231'a:'
      end
      object Label47: TLabel
        Left = 30
        Top = 134
        Width = 85
        Height = 13
        Caption = 'Cidade Cobran'#231'a:'
      end
      object Label46: TLabel
        Left = 400
        Top = 115
        Width = 79
        Height = 13
        Caption = 'Bairro Cobran'#231'a:'
      end
      object Label48: TLabel
        Left = 394
        Top = 132
        Width = 85
        Height = 13
        Caption = 'Estado Cobran'#231'a:'
        FocusControl = db_cepc
      end
      object Label49: TLabel
        Left = 571
        Top = 134
        Width = 73
        Height = 13
        Caption = 'CEP Cobran'#231'a:'
        FocusControl = db_cepc
      end
      object Bevel2: TBevel
        Left = -3
        Top = 154
        Width = 788
        Height = 2
      end
      object Label41: TLabel
        Left = 30
        Top = 249
        Width = 85
        Height = 13
        Caption = 'Codigo Vendedor:'
      end
      object Bevel3: TBevel
        Left = -3
        Top = 216
        Width = 788
        Height = 2
      end
      object Bevel4: TBevel
        Left = -3
        Top = 241
        Width = 788
        Height = 2
      end
      object Label31: TLabel
        Left = 452
        Top = 250
        Width = 29
        Height = 13
        Caption = 'Rede:'
      end
      object Label60: TLabel
        Left = 426
        Top = 268
        Width = 52
        Height = 13
        Caption = 'Ramo Ativ:'
      end
      object Label61: TLabel
        Left = 409
        Top = 286
        Width = 70
        Height = 13
        Caption = 'C'#243'digo Banco:'
      end
      object Bevel5: TBevel
        Left = -3
        Top = 305
        Width = 797
        Height = 2
      end
      object Label22: TLabel
        Left = 315
        Top = 248
        Width = 39
        Height = 17
        Alignment = taCenter
        AutoSize = False
        Caption = '%Comis:'
        WordWrap = True
      end
      object Label35: TLabel
        Left = 231
        Top = 308
        Width = 77
        Height = 37
        Alignment = taCenter
        AutoSize = False
        Caption = 'Plano de Vendas Padr'#227'o.:'
        Color = clBtnShadow
        ParentColor = False
        WordWrap = True
      end
      object Label20: TLabel
        Left = 25
        Top = 347
        Width = 86
        Height = 13
        Alignment = taCenter
        Caption = 'Desconto Padr'#227'o:'
        WordWrap = True
      end
      object Label42: TLabel
        Left = 432
        Top = 161
        Width = 42
        Height = 13
        Caption = 'Fone 03:'
      end
      object Label143: TLabel
        Left = 49
        Top = 283
        Width = 37
        Height = 13
        Caption = 'Regiao:'
      end
      object Label158: TLabel
        Left = 570
        Top = 53
        Width = 67
        Height = 13
        Caption = 'Complemento:'
      end
      object Label159: TLabel
        Left = 444
        Top = 53
        Width = 40
        Height = 13
        Caption = 'Numero:'
      end
      object SbnEnderCep: TSpeedButton
        Left = 193
        Top = 87
        Width = 23
        Height = 18
        Cursor = crHandPoint
        Hint = 'Click aqui para buscar o endere'#231'o'
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
        OnClick = SbnEnderCepClick
      end
      object Label177: TLabel
        Left = 19
        Top = 364
        Width = 83
        Height = 13
        Alignment = taCenter
        Caption = 'Distancia em KM:'
        WordWrap = True
      end
      object Label179: TLabel
        Left = 604
        Top = 223
        Width = 53
        Height = 13
        Caption = 'WhatsApp:'
      end
      object sbn_ender_ent: TSpeedButton
        Left = 220
        Top = 88
        Width = 151
        Height = 18
        Cursor = crHandPoint
        Hint = 'Click aqui para buscar o endere'#231'o'
        Caption = 'Endere'#231'o de Entrega'
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
        OnClick = sbn_ender_entClick
      end
      object DBEdit1: TDBEdit
        Left = 118
        Top = 14
        Width = 129
        Height = 19
        Ctl3D = False
        DataField = 'CCODCLI'
        DataSource = DM1.Src_Cli
        Enabled = False
        ParentCtl3D = False
        TabOrder = 0
        OnExit = DBEdit1Exit
      end
      object db_razao: TDBEdit
        Left = 118
        Top = 32
        Width = 259
        Height = 19
        Ctl3D = False
        DataField = 'CRAZAO'
        DataSource = DM1.Src_Cli
        ParentCtl3D = False
        TabOrder = 3
        OnExit = db_razaoExit
        OnKeyPress = db_razaoKeyPress
      end
      object FANTASIA: TDBEdit
        Left = 487
        Top = 32
        Width = 293
        Height = 19
        Ctl3D = False
        DataField = 'CDENOM'
        DataSource = DM1.Src_Cli
        ParentCtl3D = False
        TabOrder = 4
        OnKeyPress = db_razaoKeyPress
      end
      object db_log: TDBEdit
        Left = 118
        Top = 50
        Width = 259
        Height = 19
        Ctl3D = False
        DataField = 'CLOG'
        DataSource = DM1.Src_Cli
        ParentCtl3D = False
        TabOrder = 5
        OnEnter = db_logEnter
        OnExit = db_logExit
        OnKeyPress = db_razaoKeyPress
      end
      object NOMBAIRRO: TDBEdit
        Left = 177
        Top = 68
        Width = 200
        Height = 19
        Ctl3D = False
        DataField = 'CBAIRRO'
        DataSource = DM1.Src_Cli
        ParentCtl3D = False
        TabOrder = 9
        OnExit = NOMBAIRROExit
        OnKeyPress = db_razaoKeyPress
      end
      object NOMCID: TDBEdit
        Left = 546
        Top = 68
        Width = 185
        Height = 19
        Ctl3D = False
        DataField = 'CCIDADE'
        DataSource = DM1.Src_Cli
        ParentCtl3D = False
        TabOrder = 11
        OnExit = NOMCIDExit
        OnKeyPress = db_razaoKeyPress
      end
      object ESTADO: TDBEdit
        Left = 751
        Top = 68
        Width = 29
        Height = 19
        Ctl3D = False
        DataField = 'CUF'
        DataSource = DM1.Src_Cli
        ParentCtl3D = False
        TabOrder = 12
        OnExit = ESTADOExit
        OnKeyDown = ESTADOKeyDown
        OnKeyPress = db_razaoKeyPress
      end
      object db_cep: TDBEdit
        Left = 118
        Top = 86
        Width = 74
        Height = 19
        Ctl3D = False
        DataField = 'CCEP'
        DataSource = DM1.Src_Cli
        ParentCtl3D = False
        TabOrder = 13
        OnExit = db_cepExit
      end
      object db_pontor: TDBEdit
        Left = 467
        Top = 86
        Width = 313
        Height = 19
        BevelInner = bvNone
        Ctl3D = False
        DataField = 'CPONTOR'
        DataSource = DM1.Src_Cli
        ParentCtl3D = False
        TabOrder = 14
        OnKeyPress = db_razaoKeyPress
      end
      object DB_CNPJ: TDBEdit
        Left = 118
        Top = 176
        Width = 147
        Height = 19
        Ctl3D = False
        DataField = 'CCNPJ'
        DataSource = DM1.Src_Cli
        ParentCtl3D = False
        TabOrder = 26
        OnExit = DB_CNPJExit
      end
      object GB_ALV: TGroupBox
        Left = 456
        Top = 309
        Width = 286
        Height = 83
        Caption = 'Alvar'#225' de Funcionamento:'
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 53
        Visible = False
        object Label14: TLabel
          Left = 5
          Top = 15
          Width = 91
          Height = 13
          Caption = 'Municipal: N'#250'mero:'
        end
        object Label45: TLabel
          Left = 174
          Top = 16
          Width = 25
          Height = 13
          Caption = 'Vcto:'
        end
        object Label27: TLabel
          Left = 12
          Top = 33
          Width = 82
          Height = 13
          Caption = 'ANVISA N'#250'mero:'
        end
        object Label28: TLabel
          Left = 174
          Top = 36
          Width = 25
          Height = 13
          Caption = 'Vcto:'
        end
        object Label180: TLabel
          Left = 2
          Top = 51
          Width = 92
          Height = 13
          Caption = 'Cetificado T'#233'cnico:'
        end
        object Label181: TLabel
          Left = 174
          Top = 54
          Width = 25
          Height = 13
          Caption = 'Vcto:'
        end
        object dbnalv: TDBEdit
          Left = 99
          Top = 14
          Width = 72
          Height = 19
          Ctl3D = False
          DataField = 'CNALV'
          DataSource = DM1.Src_Cli
          ParentCtl3D = False
          TabOrder = 0
        end
        object dbnumanvisa: TDBEdit
          Left = 99
          Top = 32
          Width = 72
          Height = 19
          Ctl3D = False
          DataField = 'CNANVISA'
          DataSource = DM1.Src_Cli
          ParentCtl3D = False
          TabOrder = 2
        end
        object dbe_dtanvisa: TDBDateEdit
          Left = 202
          Top = 34
          Width = 84
          Height = 20
          DataField = 'CDTANVISA'
          DataSource = DM1.Src_Cli
          Ctl3D = False
          DialogTitle = 'Digite  ou Selecione a Data'
          NumGlyphs = 2
          ParentCtl3D = False
          TabOrder = 3
        end
        object dbe_dtalv: TDBDateEdit
          Left = 202
          Top = 15
          Width = 84
          Height = 20
          DataField = 'CDTVALV'
          DataSource = DM1.Src_Cli
          Ctl3D = False
          DialogTitle = 'Digite  ou Selecione a Data'
          NumGlyphs = 2
          ParentCtl3D = False
          TabOrder = 1
        end
        object DBE_CCERTTECNICO_DTVCTO: TDBEdit
          Left = 99
          Top = 50
          Width = 72
          Height = 19
          Ctl3D = False
          DataField = 'CCERTTECNICO_NUM'
          DataSource = DM1.Src_Cli
          ParentCtl3D = False
          TabOrder = 4
        end
        object DBD_CCERTTECNICO_DTVCTO: TDBDateEdit
          Left = 202
          Top = 52
          Width = 84
          Height = 20
          DataField = 'CCERTTECNICO_DTVCTO'
          DataSource = DM1.Src_Cli
          Ctl3D = False
          DialogTitle = 'Digite  ou Selecione a Data'
          NumGlyphs = 2
          ParentCtl3D = False
          TabOrder = 5
        end
      end
      object db_email: TDBEdit
        Left = 118
        Top = 194
        Width = 270
        Height = 19
        Ctl3D = False
        DataField = 'CEMAIL'
        DataSource = DM1.Src_Cli
        ParentCtl3D = False
        TabOrder = 28
        OnKeyPress = db_razaoKeyPress
      end
      object db_home: TDBEdit
        Left = 481
        Top = 194
        Width = 270
        Height = 19
        Ctl3D = False
        DataField = 'CHOME'
        DataSource = DM1.Src_Cli
        ParentCtl3D = False
        TabOrder = 29
        OnKeyPress = db_razaoKeyPress
      end
      object CODBAI: TDBEdit
        Left = 118
        Top = 68
        Width = 60
        Height = 19
        Ctl3D = False
        DataField = 'CCODBAI'
        DataSource = DM1.Src_Cli
        ParentCtl3D = False
        TabOrder = 8
        Visible = False
        OnExit = CODBAIExit
        OnKeyPress = CODBAIKeyPress
      end
      object CODLOC: TDBEdit
        Left = 487
        Top = 68
        Width = 60
        Height = 19
        Ctl3D = False
        DataField = 'CCODLOC'
        DataSource = DM1.Src_Cli
        ParentCtl3D = False
        TabOrder = 10
        Visible = False
        OnExit = CODLOCExit
        OnKeyPress = CODLOCKeyPress
      end
      object db_nomcon: TDBEdit
        Left = 118
        Top = 220
        Width = 270
        Height = 19
        Ctl3D = False
        DataField = 'CNOMCON'
        DataSource = DM1.Src_Cli
        ParentCtl3D = False
        TabOrder = 30
        OnKeyPress = db_razaoKeyPress
      end
      object db_foncon: TDBEdit
        Left = 482
        Top = 219
        Width = 101
        Height = 19
        Ctl3D = False
        DataField = 'CFONCON'
        DataSource = DM1.Src_Cli
        ParentCtl3D = False
        TabOrder = 31
        OnExit = db_fonconExit
        OnKeyPress = db_razaoKeyPress
      end
      object db_fone01: TDBEdit
        Left = 119
        Top = 158
        Width = 106
        Height = 19
        Hint = 'digite o numero do fone'
        Ctl3D = False
        DataField = 'CFONE01'
        DataSource = DM1.Src_Cli
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 22
        OnExit = db_fone01Exit
        OnKeyPress = db_fone01KeyPress
      end
      object db_fone02: TDBEdit
        Left = 295
        Top = 158
        Width = 106
        Height = 19
        Ctl3D = False
        DataField = 'CFONE02'
        DataSource = DM1.Src_Cli
        ParentCtl3D = False
        TabOrder = 23
        OnExit = db_fone02Exit
        OnKeyPress = db_fone02KeyPress
      end
      object db_ie: TDBEdit
        Left = 481
        Top = 176
        Width = 167
        Height = 19
        Ctl3D = False
        DataField = 'CIE'
        DataSource = DM1.Src_Cli
        ParentCtl3D = False
        TabOrder = 27
        OnEnter = db_ieEnter
        OnExit = db_ieExit
      end
      object DBRadioGroup1: TDBRadioGroup
        Left = 248
        Top = -1
        Width = 167
        Height = 30
        Caption = 'Tipo de Pessoa:'
        Columns = 2
        Ctl3D = False
        DataField = 'CTPPESSOA'
        DataSource = DM1.Src_Cli
        Items.Strings = (
          'F'#237'sica'
          'Juridica')
        ParentCtl3D = False
        TabOrder = 1
        Values.Strings = (
          '0'
          '1')
      end
      object db_fax: TDBEdit
        Left = 637
        Top = 158
        Width = 112
        Height = 19
        Ctl3D = False
        DataField = 'CFAX'
        DataSource = DM1.Src_Cli
        ParentCtl3D = False
        TabOrder = 25
        OnExit = db_faxExit
        OnKeyPress = db_faxKeyPress
      end
      object db_codtra: TDBEdit
        Left = 118
        Top = 264
        Width = 60
        Height = 19
        Ctl3D = False
        DataField = 'CCODTRA'
        DataSource = DM1.Src_Cli
        ParentCtl3D = False
        TabOrder = 36
        OnExit = db_codtraExit
        OnKeyPress = db_codtraKeyPress
      end
      object db_nomtra: TDBEdit
        Left = 177
        Top = 264
        Width = 225
        Height = 19
        TabStop = False
        Ctl3D = False
        DataField = 'CNOMTRA'
        DataSource = DM1.Src_Cli
        ParentColor = True
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 37
      end
      object lccred: TDBEdit
        Left = 118
        Top = 326
        Width = 111
        Height = 19
        Ctl3D = False
        DataField = 'CLCRED'
        DataSource = DM1.Src_Cli
        ParentCtl3D = False
        TabOrder = 48
      end
      object dbg_tipcli: TDBRadioGroup
        Left = 311
        Top = 309
        Width = 142
        Height = 57
        Caption = 'Tipo do Cliente:'
        Columns = 2
        Ctl3D = False
        DataField = 'CTIPCLI'
        DataSource = DM1.Src_Cli
        Items.Strings = (
          '&Privado'
          '&Municipal'
          '&Estadual'
          '&Federal')
        ParentCtl3D = False
        TabOrder = 52
        Values.Strings = (
          '0'
          '1'
          '2'
          '3')
      end
      object db_enderc: TDBEdit
        Left = 118
        Top = 113
        Width = 251
        Height = 19
        Ctl3D = False
        DataField = 'CENDERC'
        DataSource = DM1.Src_Cli
        ParentCtl3D = False
        TabOrder = 15
        OnKeyPress = db_razaoKeyPress
      end
      object CODLOCC: TDBEdit
        Left = 118
        Top = 131
        Width = 60
        Height = 19
        Ctl3D = False
        DataField = 'CCODLOCC'
        DataSource = DM1.Src_Cli
        ParentCtl3D = False
        TabOrder = 18
        Visible = False
        OnExit = CODLOCCExit
        OnKeyPress = CODLOCCKeyPress
      end
      object NOMCIDC: TDBEdit
        Left = 177
        Top = 131
        Width = 192
        Height = 19
        Ctl3D = False
        DataField = 'CCIDADEC'
        DataSource = DM1.Src_Cli
        ParentCtl3D = False
        TabOrder = 19
        OnKeyPress = db_razaoKeyPress
      end
      object CODBAIC: TDBEdit
        Left = 481
        Top = 113
        Width = 60
        Height = 19
        Ctl3D = False
        DataField = 'CCODBAIC'
        DataSource = DM1.Src_Cli
        ParentCtl3D = False
        TabOrder = 16
        Visible = False
        OnExit = CODBAICExit
        OnKeyPress = CODBAICKeyPress
      end
      object ESTADOC: TDBEdit
        Left = 481
        Top = 131
        Width = 39
        Height = 19
        Ctl3D = False
        DataField = 'CUFC'
        DataSource = DM1.Src_Cli
        ParentCtl3D = False
        TabOrder = 20
        OnExit = ESTADOCExit
        OnKeyDown = ESTADOCKeyDown
        OnKeyPress = db_razaoKeyPress
      end
      object NOMBAIRROC: TDBEdit
        Left = 540
        Top = 113
        Width = 195
        Height = 19
        Ctl3D = False
        DataField = 'CBAIRROC'
        DataSource = DM1.Src_Cli
        ParentCtl3D = False
        TabOrder = 17
        OnKeyPress = db_razaoKeyPress
      end
      object db_cepc: TDBEdit
        Left = 653
        Top = 131
        Width = 82
        Height = 19
        Ctl3D = False
        DataField = 'CCEPC'
        DataSource = DM1.Src_Cli
        ParentCtl3D = False
        TabOrder = 21
      end
      object db_codven: TDBEdit
        Left = 118
        Top = 246
        Width = 60
        Height = 19
        Ctl3D = False
        DataField = 'CCODVEN'
        DataSource = DM1.Src_Cli
        ParentCtl3D = False
        TabOrder = 33
        OnExit = db_codvenExit
        OnKeyPress = db_codvenKeyPress
      end
      object db_nomven: TDBEdit
        Left = 177
        Top = 246
        Width = 137
        Height = 19
        TabStop = False
        Ctl3D = False
        DataField = 'CNOMVEN'
        DataSource = DM1.Src_Cli
        ParentColor = True
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 34
      end
      object db_codred: TDBEdit
        Left = 484
        Top = 248
        Width = 60
        Height = 19
        Ctl3D = False
        DataField = 'CCODRED'
        DataSource = DM1.Src_Cli
        ParentCtl3D = False
        TabOrder = 40
        OnExit = db_codredExit
        OnKeyPress = db_codredKeyPress
      end
      object db_nomred: TDBEdit
        Left = 543
        Top = 248
        Width = 235
        Height = 19
        TabStop = False
        Ctl3D = False
        DataField = 'CNOMRED'
        DataSource = DM1.Src_Cli
        ParentColor = True
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 41
      end
      object db_codram: TDBEdit
        Left = 484
        Top = 266
        Width = 60
        Height = 19
        Ctl3D = False
        DataField = 'CCODRAM'
        DataSource = DM1.Src_Cli
        ParentCtl3D = False
        TabOrder = 42
        OnExit = db_codramExit
        OnKeyPress = db_codramKeyPress
      end
      object cb_nomram: TDBEdit
        Left = 543
        Top = 266
        Width = 235
        Height = 19
        TabStop = False
        Ctl3D = False
        DataField = 'CNOMRAM'
        DataSource = DM1.Src_Cli
        ParentColor = True
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 43
      end
      object db_codbco01: TDBEdit
        Left = 484
        Top = 284
        Width = 31
        Height = 19
        Ctl3D = False
        DataField = 'CCODBCO01'
        DataSource = DM1.Src_Cli
        ParentCtl3D = False
        TabOrder = 44
        OnExit = db_codbco01Exit
        OnKeyPress = db_codbco01KeyPress
      end
      object cb_nombco01: TDBEdit
        Left = 543
        Top = 284
        Width = 118
        Height = 19
        TabStop = False
        Ctl3D = False
        DataField = 'CNOMBCO01'
        DataSource = DM1.Src_Cli
        ParentColor = True
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 46
      end
      object db_comis: TDBEdit
        Left = 359
        Top = 246
        Width = 43
        Height = 19
        Ctl3D = False
        DataField = 'CCOMIS'
        DataSource = DM1.Src_Cli
        ParentCtl3D = False
        TabOrder = 35
      end
      object dbcb_tab: TDBComboBox
        Left = 231
        Top = 346
        Width = 43
        Height = 21
        BevelKind = bkSoft
        DataField = 'CTABPV'
        DataSource = DM1.Src_Cli
        ItemHeight = 13
        Items.Strings = (
          'AV'
          'AP'
          'PP')
        TabOrder = 50
        OnExit = db_codpvExit
        OnKeyDown = dbcb_tabKeyDown
      end
      object db_codpv: TDBEdit
        Left = 273
        Top = 346
        Width = 34
        Height = 19
        Ctl3D = False
        DataField = 'CCODPV'
        DataSource = DM1.Src_Cli
        ParentCtl3D = False
        TabOrder = 51
        OnExit = db_codpvExit
        OnKeyDown = dbcb_tabKeyDown
        OnKeyPress = db_codpvKeyPress
      end
      object db_desc: TDBEdit
        Left = 118
        Top = 344
        Width = 52
        Height = 19
        Ctl3D = False
        DataField = 'CDESC'
        DataSource = DM1.Src_Cli
        ParentCtl3D = False
        TabOrder = 49
      end
      object DBRg_situacao: TDBRadioGroup
        Left = 418
        Top = -1
        Width = 362
        Height = 30
        Caption = 'Situa'#231#227'o'
        Columns = 5
        Ctl3D = False
        DataField = 'CSITCLI'
        DataSource = DM1.Src_Cli
        Items.Strings = (
          'Ativo'
          'Bloq.Temp'
          'Bloq.Def.'
          'Novo'
          'Observa'#231#227'o')
        ParentCtl3D = False
        TabOrder = 2
        Values.Strings = (
          '0'
          '1'
          '2'
          '3'
          '8')
        OnEnter = DBRg_situacaoEnter
        OnExit = DBRg_situacaoExit
      end
      object db_fone03: TDBEdit
        Left = 481
        Top = 158
        Width = 106
        Height = 19
        Ctl3D = False
        DataField = 'CFONE03'
        DataSource = DM1.Src_Cli
        ParentCtl3D = False
        TabOrder = 24
        OnExit = db_fone03Exit
        OnKeyPress = db_fone03KeyPress
      end
      object bbDadosPess: TBitBtn
        Left = 742
        Top = 313
        Width = 41
        Height = 53
        Cursor = crHandPoint
        Hint = 'Vai para a proxima tela'
        Caption = 'Cont...'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 54
        OnClick = bbDadosPessClick
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
      object db_codbco02: TDBEdit
        Left = 514
        Top = 284
        Width = 30
        Height = 19
        Ctl3D = False
        DataField = 'CCODBCO02'
        DataSource = DM1.Src_Cli
        ParentCtl3D = False
        TabOrder = 45
        OnExit = db_codbco02Exit
        OnKeyPress = db_codbco02KeyPress
      end
      object cb_nombco02: TDBEdit
        Left = 660
        Top = 284
        Width = 118
        Height = 19
        TabStop = False
        Ctl3D = False
        DataField = 'CNOMBCO01'
        DataSource = DM1.Src_Cli
        ParentColor = True
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 55
      end
      object db_rota: TDBEdit
        Left = 118
        Top = 282
        Width = 60
        Height = 19
        Ctl3D = False
        DataField = 'CROTA'
        DataSource = DM1.Src_Cli
        ParentCtl3D = False
        TabOrder = 38
        OnExit = db_rotaExit
        OnKeyPress = db_rotaKeyPress
      end
      object db_nomrota: TDBEdit
        Left = 177
        Top = 282
        Width = 225
        Height = 19
        TabStop = False
        Ctl3D = False
        DataField = 'CNOMROTA'
        DataSource = DM1.Src_Cli
        ParentColor = True
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 39
      end
      object DBE_COMP: TDBEdit
        Left = 640
        Top = 50
        Width = 140
        Height = 19
        Ctl3D = False
        DataField = 'CCOMPL'
        DataSource = DM1.Src_Cli
        ParentCtl3D = False
        TabOrder = 7
        OnExit = db_logExit
        OnKeyPress = db_razaoKeyPress
      end
      object DBE_NUMERO: TDBEdit
        Left = 487
        Top = 50
        Width = 72
        Height = 19
        Ctl3D = False
        DataField = 'CNUM'
        DataSource = DM1.Src_Cli
        ParentCtl3D = False
        TabOrder = 6
        OnExit = db_logExit
        OnKeyPress = db_razaoKeyPress
      end
      object dbe_dturen: TDBDateEdit
        Left = 118
        Top = 307
        Width = 99
        Height = 20
        DataField = 'CDTUREN'
        DataSource = DM1.Src_Cli
        Ctl3D = False
        DialogTitle = 'Digite  ou Selecione a Data'
        NumGlyphs = 2
        ParentCtl3D = False
        TabOrder = 47
      end
      object DBEdit32: TDBEdit
        Left = 118
        Top = 362
        Width = 52
        Height = 19
        Ctl3D = False
        DataField = 'CDISTANCIAKM'
        DataSource = DM1.Src_Cli
        ParentCtl3D = False
        TabOrder = 56
      end
      object DBE_CWHATSAPP: TDBEdit
        Left = 668
        Top = 219
        Width = 101
        Height = 19
        Ctl3D = False
        DataField = 'CWHATSAPP'
        DataSource = DM1.Src_Cli
        ParentCtl3D = False
        TabOrder = 32
        OnExit = DBE_CWHATSAPPExit
        OnKeyPress = db_razaoKeyPress
      end
    end
    object tab_Fisica: TTabSheet [1]
      Caption = 'Dados Pessoa Fisica'
      Enabled = False
      ImageIndex = 1
      object Label81: TLabel
        Left = 7
        Top = 3
        Width = 86
        Height = 13
        Caption = 'C'#243'digo do Cliente:'
        FocusControl = DBEdit16
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label82: TLabel
        Left = 165
        Top = 4
        Width = 35
        Height = 13
        Caption = 'Cliente:'
        FocusControl = DBEdit17
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label83: TLabel
        Left = 453
        Top = 3
        Width = 89
        Height = 13
        Caption = 'Nome de Fantasia:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label144: TLabel
        Left = 392
        Top = 327
        Width = 93
        Height = 13
        Caption = 'Cliente Incluido por:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label145: TLabel
        Left = 549
        Top = 327
        Width = 14
        Height = 13
        Caption = 'em'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label146: TLabel
        Left = 549
        Top = 343
        Width = 14
        Height = 13
        Caption = 'em'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label147: TLabel
        Left = 392
        Top = 343
        Width = 98
        Height = 13
        Caption = 'Ultima altera'#231#227'o Usr:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object GroupBox5: TGroupBox
        Left = 396
        Top = 18
        Width = 387
        Height = 274
        Caption = 'Dados do Conjug'#234':'
        Color = clBtnFace
        Ctl3D = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentColor = False
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 4
        object Label115: TLabel
          Left = 19
          Top = 50
          Width = 52
          Height = 13
          Caption = 'Natural de:'
        end
        object Label116: TLabel
          Left = 290
          Top = 51
          Width = 17
          Height = 13
          Caption = 'UF:'
        end
        object Label117: TLabel
          Left = 4
          Top = 33
          Width = 71
          Height = 13
          Caption = 'Nacionalidade:'
        end
        object Label118: TLabel
          Left = 255
          Top = 35
          Width = 45
          Height = 13
          Caption = 'Dt.Nasc.:'
        end
        object Label120: TLabel
          Left = 26
          Top = 69
          Width = 46
          Height = 13
          Caption = 'Profiss'#227'o:'
        end
        object Label121: TLabel
          Left = 17
          Top = 255
          Width = 35
          Height = 13
          Caption = 'Salario:'
        end
        object Label122: TLabel
          Left = 189
          Top = 255
          Width = 99
          Height = 13
          Caption = 'Outros Rendimentos:'
        end
        object Shape4: TShape
          Left = 1
          Top = 148
          Width = 395
          Height = 1
        end
        object Label123: TLabel
          Left = 141
          Top = 141
          Width = 86
          Height = 13
          Caption = 'Local de Trabalho'
        end
        object Label124: TLabel
          Left = 21
          Top = 157
          Width = 31
          Height = 13
          Caption = 'Nome:'
        end
        object Label125: TLabel
          Left = 268
          Top = 157
          Width = 27
          Height = 13
          Caption = 'Fone:'
        end
        object Label126: TLabel
          Left = 4
          Top = 175
          Width = 49
          Height = 13
          Caption = 'Endere'#231'o:'
        end
        object Label127: TLabel
          Left = 19
          Top = 192
          Width = 32
          Height = 13
          Caption = 'Depto:'
        end
        object Label128: TLabel
          Left = 17
          Top = 210
          Width = 31
          Height = 13
          Caption = 'Cargo:'
        end
        object Label129: TLabel
          Left = 4
          Top = 235
          Width = 90
          Height = 13
          Caption = 'Tempo de Servi'#231'o:'
        end
        object Label130: TLabel
          Left = 139
          Top = 237
          Width = 30
          Height = 13
          Caption = 'Ano(s)'
        end
        object Label131: TLabel
          Left = 211
          Top = 237
          Width = 37
          Height = 13
          Caption = 'Mes(es)'
        end
        object Shape5: TShape
          Left = 2
          Top = 230
          Width = 395
          Height = 1
        end
        object Label139: TLabel
          Left = 41
          Top = 86
          Width = 31
          Height = 13
          Caption = 'CNPF:'
          FocusControl = db_conj_cnpf
        end
        object Label140: TLabel
          Left = 1
          Top = 103
          Width = 73
          Height = 13
          Caption = 'Registro Geral: '
        end
        object Label141: TLabel
          Left = 37
          Top = 121
          Width = 32
          Height = 13
          Caption = 'Org'#227'o:'
        end
        object Label142: TLabel
          Left = 205
          Top = 127
          Width = 94
          Height = 13
          Caption = 'Data de Expedi'#231#227'o:'
        end
        object Label119: TLabel
          Left = 41
          Top = 17
          Width = 31
          Height = 13
          Caption = 'Nome:'
        end
        object dbe_conj_nat: TDBEdit
          Left = 77
          Top = 50
          Width = 174
          Height = 19
          Ctl3D = False
          DataField = 'IC_CONJUGE_NATURAL'
          DataSource = DM4.Src_Cli_IC
          ParentCtl3D = False
          TabOrder = 3
        end
        object db_conj_nat_uf: TDBEdit
          Left = 312
          Top = 50
          Width = 31
          Height = 19
          Ctl3D = False
          DataField = 'IC_CONJUGE_NAT_UF'
          DataSource = DM4.Src_Cli_IC
          ParentCtl3D = False
          TabOrder = 4
        end
        object dbe_nacional: TDBEdit
          Left = 77
          Top = 32
          Width = 174
          Height = 19
          Ctl3D = False
          DataField = 'IC_CONJUGE_NACION'
          DataSource = DM4.Src_Cli_IC
          ParentCtl3D = False
          TabOrder = 1
        end
        object db_conj_prof: TDBEdit
          Left = 77
          Top = 68
          Width = 212
          Height = 19
          Ctl3D = False
          DataField = 'IC_CONJUGE_PROF'
          DataSource = DM4.Src_Cli_IC
          ParentCtl3D = False
          TabOrder = 5
        end
        object conj_salario: TDBEdit
          Left = 55
          Top = 251
          Width = 88
          Height = 19
          Ctl3D = False
          DataField = 'IC_CONJUGE_SALARIO'
          DataSource = DM4.Src_Cli_IC
          ParentCtl3D = False
          TabOrder = 17
          OnKeyPress = DBE_CALIQAKeyPress
        end
        object conj_outrend: TDBEdit
          Left = 296
          Top = 251
          Width = 88
          Height = 19
          Ctl3D = False
          DataField = 'IC_CONJUGE_SAL_OUTROS'
          DataSource = DM4.Src_Cli_IC
          ParentCtl3D = False
          TabOrder = 18
          OnKeyPress = DBE_CALIQAKeyPress
        end
        object db_conj_loctrab: TDBEdit
          Left = 54
          Top = 154
          Width = 210
          Height = 19
          Ctl3D = False
          DataField = 'IC_CONJUGE_LOCAL_TRAB'
          DataSource = DM4.Src_Cli_IC
          ParentCtl3D = False
          TabOrder = 10
        end
        object db_conj_fone: TDBEdit
          Left = 296
          Top = 154
          Width = 88
          Height = 19
          Ctl3D = False
          DataField = 'IC_CONJUGE_FONETRAB'
          DataSource = DM4.Src_Cli_IC
          ParentCtl3D = False
          TabOrder = 11
          OnExit = db_conj_foneExit
          OnKeyPress = db_conj_foneKeyPress
        end
        object db_cnoj_ender: TDBEdit
          Left = 54
          Top = 172
          Width = 330
          Height = 19
          Ctl3D = False
          DataField = 'IC_CONJUGE_ENDTRAB'
          DataSource = DM4.Src_Cli_IC
          ParentCtl3D = False
          TabOrder = 12
        end
        object db_conj_depto: TDBEdit
          Left = 54
          Top = 190
          Width = 330
          Height = 19
          Ctl3D = False
          DataField = 'IC_CONJUGE_DEPTOTRAB'
          DataSource = DM4.Src_Cli_IC
          ParentCtl3D = False
          TabOrder = 13
        end
        object db_cnoj_cargo: TDBEdit
          Left = 54
          Top = 208
          Width = 330
          Height = 19
          Ctl3D = False
          DataField = 'IC_CONJUGE_CARGOTRAB'
          DataSource = DM4.Src_Cli_IC
          ParentCtl3D = False
          TabOrder = 14
        end
        object db_conj_anotrab: TDBEdit
          Left = 101
          Top = 233
          Width = 31
          Height = 19
          Ctl3D = False
          DataField = 'IC_CONJUGE_QTDANOTRAB'
          DataSource = DM4.Src_Cli_IC
          ParentCtl3D = False
          TabOrder = 15
        end
        object db_conj_mestra: TDBEdit
          Left = 173
          Top = 233
          Width = 31
          Height = 19
          Ctl3D = False
          DataField = 'IC_CONJUGE_QTDMESTRAB'
          DataSource = DM4.Src_Cli_IC
          ParentCtl3D = False
          TabOrder = 16
        end
        object db_conj_cnpf: TDBEdit
          Left = 77
          Top = 86
          Width = 147
          Height = 19
          Ctl3D = False
          DataField = 'IC_CONJUGE_CNPF'
          DataSource = DM4.Src_Cli_IC
          ParentCtl3D = False
          TabOrder = 6
          OnExit = DB_CNPFExit
        end
        object db_conj_rg: TDBEdit
          Left = 77
          Top = 104
          Width = 308
          Height = 19
          Ctl3D = False
          DataField = 'IC_CONJUGE_RG'
          DataSource = DM4.Src_Cli_IC
          ParentCtl3D = False
          TabOrder = 7
        end
        object db_conj_orgao: TDBEdit
          Left = 77
          Top = 122
          Width = 66
          Height = 19
          Ctl3D = False
          DataField = 'IC_CONJUGE_EMIS_RG'
          DataSource = DM4.Src_Cli_IC
          ParentCtl3D = False
          TabOrder = 8
        end
        object db_nomeconj: TDBEdit
          Left = 77
          Top = 14
          Width = 308
          Height = 19
          Ctl3D = False
          DataField = 'IC_NOME_CONJUGE'
          DataSource = DM4.Src_Cli_IC
          ParentCtl3D = False
          TabOrder = 0
        end
        object dbe_conj_dtnas: TDBDateEdit
          Left = 303
          Top = 32
          Width = 84
          Height = 20
          DataField = 'IC_CONJUGE_DT_NAS'
          DataSource = DM4.Src_Cli_IC
          Ctl3D = False
          DialogTitle = 'Digite  ou Selecione a Data'
          NumGlyphs = 2
          ParentCtl3D = False
          TabOrder = 2
        end
        object dbe_conj_dt_exp: TDBDateEdit
          Left = 301
          Top = 125
          Width = 84
          Height = 20
          DataField = 'IC_CONJUGE_DT_EXP'
          DataSource = DM4.Src_Cli_IC
          Ctl3D = False
          DialogTitle = 'Digite  ou Selecione a Data'
          NumGlyphs = 2
          ParentCtl3D = False
          TabOrder = 9
        end
      end
      object GroupBox13: TGroupBox
        Left = 3
        Top = 18
        Width = 387
        Height = 362
        Caption = 'Dados Pessoais:'
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 0
        object Label54: TLabel
          Left = 19
          Top = 51
          Width = 52
          Height = 13
          Caption = 'Natural de:'
        end
        object Label56: TLabel
          Left = 286
          Top = 52
          Width = 17
          Height = 13
          Caption = 'UF:'
        end
        object Label10: TLabel
          Left = 4
          Top = 34
          Width = 71
          Height = 13
          Caption = 'Nacionalidade:'
        end
        object Label39: TLabel
          Left = 259
          Top = 33
          Width = 45
          Height = 13
          Caption = 'Dt.Nasc.:'
        end
        object Label43: TLabel
          Left = 14
          Top = 69
          Width = 58
          Height = 13
          Caption = 'Estado Civil:'
        end
        object Label53: TLabel
          Left = 26
          Top = 87
          Width = 46
          Height = 13
          Caption = 'Profiss'#227'o:'
        end
        object Label105: TLabel
          Left = 17
          Top = 304
          Width = 35
          Height = 13
          Caption = 'Salario:'
        end
        object Label106: TLabel
          Left = 194
          Top = 308
          Width = 99
          Height = 13
          Caption = 'Outros Rendimentos:'
        end
        object Shape1: TShape
          Left = 1
          Top = 208
          Width = 395
          Height = 1
        end
        object Label107: TLabel
          Left = 141
          Top = 201
          Width = 86
          Height = 13
          Caption = 'Local de Trabalho'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label97: TLabel
          Left = 21
          Top = 217
          Width = 31
          Height = 13
          Caption = 'Nome:'
        end
        object Label98: TLabel
          Left = 267
          Top = 216
          Width = 27
          Height = 13
          Caption = 'Fone:'
        end
        object Label99: TLabel
          Left = 4
          Top = 234
          Width = 49
          Height = 13
          Caption = 'Endere'#231'o:'
        end
        object Label100: TLabel
          Left = 19
          Top = 253
          Width = 32
          Height = 13
          Caption = 'Depto:'
        end
        object Label101: TLabel
          Left = 17
          Top = 270
          Width = 31
          Height = 13
          Caption = 'Cargo:'
        end
        object Label102: TLabel
          Left = 4
          Top = 290
          Width = 90
          Height = 13
          Caption = 'Tempo de Servi'#231'o:'
        end
        object Label103: TLabel
          Left = 139
          Top = 289
          Width = 30
          Height = 13
          Caption = 'Ano(s)'
        end
        object Label104: TLabel
          Left = 211
          Top = 290
          Width = 37
          Height = 13
          Caption = 'Mes(es)'
        end
        object Shape2: TShape
          Left = 2
          Top = 304
          Width = 395
          Height = 1
        end
        object Label108: TLabel
          Left = 209
          Top = 324
          Width = 80
          Height = 13
          Caption = 'Valor do Aluguel:'
        end
        object Label109: TLabel
          Left = 4
          Top = 342
          Width = 92
          Height = 13
          Caption = 'Tempo Resid'#234'ncia:'
        end
        object Label110: TLabel
          Left = 139
          Top = 343
          Width = 30
          Height = 13
          Caption = 'Ano(s)'
        end
        object Label111: TLabel
          Left = 211
          Top = 344
          Width = 37
          Height = 13
          Caption = 'Mes(es)'
        end
        object Label95: TLabel
          Left = 52
          Top = 166
          Width = 18
          Height = 13
          Caption = 'Pai:'
        end
        object Label96: TLabel
          Left = 46
          Top = 182
          Width = 24
          Height = 13
          Caption = 'M'#227'e:'
        end
        object Shape3: TShape
          Left = 2
          Top = 158
          Width = 395
          Height = 1
        end
        object Label112: TLabel
          Left = 163
          Top = 150
          Width = 36
          Height = 13
          Caption = 'Filia'#231#227'o'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object CNPF: TLabel
          Left = 49
          Top = 104
          Width = 23
          Height = 13
          Caption = 'CPF:'
          FocusControl = DB_CNPF
        end
        object rg: TLabel
          Left = 1
          Top = 121
          Width = 73
          Height = 13
          Caption = 'Registro Geral: '
        end
        object Label113: TLabel
          Left = 37
          Top = 139
          Width = 32
          Height = 13
          Caption = 'Org'#227'o:'
        end
        object Label114: TLabel
          Left = 211
          Top = 139
          Width = 94
          Height = 13
          Caption = 'Data de Expedi'#231#227'o:'
        end
        object Label38: TLabel
          Left = 15
          Top = 16
          Width = 57
          Height = 13
          Caption = 'Fone Resid:'
        end
        object Label52: TLabel
          Left = 244
          Top = 15
          Width = 35
          Height = 13
          Caption = 'Celular:'
        end
        object db_nat: TDBEdit
          Left = 77
          Top = 48
          Width = 174
          Height = 19
          Ctl3D = False
          DataField = 'IC_NATURAL'
          DataSource = DM4.Src_Cli_IC
          ParentCtl3D = False
          TabOrder = 4
        end
        object DBE_uf: TDBEdit
          Left = 306
          Top = 49
          Width = 31
          Height = 19
          Ctl3D = False
          DataField = 'IC_NAT_UF'
          DataSource = DM4.Src_Cli_IC
          ParentCtl3D = False
          TabOrder = 5
        end
        object DBEdit11: TDBEdit
          Left = 77
          Top = 31
          Width = 174
          Height = 19
          Ctl3D = False
          DataField = 'IC_NACIONALIDADE'
          DataSource = DM4.Src_Cli_IC
          ParentCtl3D = False
          TabOrder = 2
        end
        object db_estciv: TDBEdit
          Left = 77
          Top = 65
          Width = 212
          Height = 19
          Ctl3D = False
          DataField = 'IC_ESTCIV'
          DataSource = DM4.Src_Cli_IC
          ParentCtl3D = False
          TabOrder = 6
        end
        object dbrg_sexo: TDBRadioGroup
          Left = 292
          Top = 69
          Width = 93
          Height = 43
          Caption = 'Sexo:'
          Ctl3D = False
          DataField = 'IC_SEXO'
          DataSource = DM4.Src_Cli_IC
          Items.Strings = (
            '&Masculino'
            '&Feminino')
          ParentCtl3D = False
          TabOrder = 8
          Values.Strings = (
            '0'
            '1')
        end
        object db_prof: TDBEdit
          Left = 77
          Top = 83
          Width = 212
          Height = 19
          Ctl3D = False
          DataField = 'IC_PROF'
          DataSource = DM4.Src_Cli_IC
          ParentCtl3D = False
          TabOrder = 7
        end
        object db_salario: TDBEdit
          Left = 55
          Top = 304
          Width = 88
          Height = 19
          Ctl3D = False
          DataField = 'IC_SALARIO'
          DataSource = DM4.Src_Cli_IC
          ParentCtl3D = False
          TabOrder = 22
          OnKeyPress = DBE_CALIQAKeyPress
        end
        object db_outrend: TDBEdit
          Left = 298
          Top = 304
          Width = 87
          Height = 19
          Ctl3D = False
          DataField = 'IC_SAL_OUTROS'
          DataSource = DM4.Src_Cli_IC
          ParentCtl3D = False
          TabOrder = 23
          OnKeyPress = DBE_CALIQAKeyPress
        end
        object db_local_trab: TDBEdit
          Left = 54
          Top = 214
          Width = 210
          Height = 19
          Ctl3D = False
          DataField = 'IC_LOCAL_TRAB'
          DataSource = DM4.Src_Cli_IC
          ParentCtl3D = False
          TabOrder = 15
        end
        object db_fontra: TDBEdit
          Left = 296
          Top = 214
          Width = 89
          Height = 19
          Ctl3D = False
          DataField = 'IC_FONETRAB'
          DataSource = DM4.Src_Cli_IC
          ParentCtl3D = False
          TabOrder = 16
          OnExit = db_fontraExit
          OnKeyPress = db_fontraKeyPress
        end
        object db_endtra: TDBEdit
          Left = 54
          Top = 232
          Width = 331
          Height = 19
          Ctl3D = False
          DataField = 'IC_ENDTRAB'
          DataSource = DM4.Src_Cli_IC
          ParentCtl3D = False
          TabOrder = 17
        end
        object db_deptra: TDBEdit
          Left = 54
          Top = 250
          Width = 331
          Height = 19
          Ctl3D = False
          DataField = 'IC_DEPTOTRAB'
          DataSource = DM4.Src_Cli_IC
          ParentCtl3D = False
          TabOrder = 18
        end
        object db_cartra: TDBEdit
          Left = 54
          Top = 268
          Width = 331
          Height = 19
          Ctl3D = False
          DataField = 'IC_CARGOTRAB'
          DataSource = DM4.Src_Cli_IC
          ParentCtl3D = False
          TabOrder = 19
        end
        object db_anotrab: TDBEdit
          Left = 101
          Top = 286
          Width = 31
          Height = 19
          Ctl3D = False
          DataField = 'IC_QTDANOTRAB'
          DataSource = DM4.Src_Cli_IC
          ParentCtl3D = False
          TabOrder = 20
        end
        object db_mestrab: TDBEdit
          Left = 173
          Top = 286
          Width = 31
          Height = 19
          Ctl3D = False
          DataField = 'IC_QTDMESTRAB'
          DataSource = DM4.Src_Cli_IC
          ParentCtl3D = False
          TabOrder = 21
        end
        object dbcb_sede: TDBCheckBox
          Left = 8
          Top = 323
          Width = 106
          Height = 17
          Alignment = taLeftJustify
          Caption = 'Sede Pr'#243'pria'
          DataField = 'IC_SEDEPROPRIA'
          DataSource = DM4.Src_Cli_IC
          TabOrder = 24
          ValueChecked = '0'
          ValueUnchecked = '1'
        end
        object db_valalug: TDBEdit
          Left = 298
          Top = 322
          Width = 87
          Height = 19
          Ctl3D = False
          DataField = 'IC_VALOR_ALUG'
          DataSource = DM4.Src_Cli_IC
          ParentCtl3D = False
          TabOrder = 25
          OnKeyPress = DBE_CALIQAKeyPress
        end
        object dbe_anores: TDBEdit
          Left = 101
          Top = 340
          Width = 31
          Height = 19
          Ctl3D = False
          DataField = 'IC_QTDANO_ALUG'
          DataSource = DM4.Src_Cli_IC
          ParentCtl3D = False
          TabOrder = 26
        end
        object dbe_mesres: TDBEdit
          Left = 173
          Top = 340
          Width = 31
          Height = 19
          Ctl3D = False
          DataField = 'IC_QTDMES_ALUG'
          DataSource = DM4.Src_Cli_IC
          ParentCtl3D = False
          TabOrder = 27
        end
        object dd_pai: TDBEdit
          Left = 75
          Top = 164
          Width = 310
          Height = 19
          Ctl3D = False
          DataField = 'IC_FIL_PAI'
          DataSource = DM4.Src_Cli_IC
          ParentCtl3D = False
          TabOrder = 13
        end
        object db_mae: TDBEdit
          Left = 75
          Top = 182
          Width = 310
          Height = 19
          Ctl3D = False
          DataField = 'IC_FIL_MAE'
          DataSource = DM4.Src_Cli_IC
          ParentCtl3D = False
          TabOrder = 14
        end
        object DB_CNPF: TDBEdit
          Left = 77
          Top = 101
          Width = 147
          Height = 19
          Ctl3D = False
          DataField = 'CCPF'
          DataSource = DM1.Src_Cli
          ParentCtl3D = False
          TabOrder = 9
          OnExit = DB_CNPFExit
        end
        object db_rg: TDBEdit
          Left = 77
          Top = 119
          Width = 308
          Height = 19
          Ctl3D = False
          DataField = 'CRG'
          DataSource = DM1.Src_Cli
          ParentCtl3D = False
          TabOrder = 10
        end
        object db_orgao: TDBEdit
          Left = 77
          Top = 137
          Width = 66
          Height = 19
          Ctl3D = False
          DataField = 'C_ORGAO_EMIS_RG'
          DataSource = DM1.Src_Cli
          ParentCtl3D = False
          TabOrder = 11
        end
        object DBEdit4: TDBEdit
          Left = 77
          Top = 13
          Width = 106
          Height = 19
          Ctl3D = False
          DataField = 'CFONERES'
          DataSource = DM1.Src_Cli
          ParentCtl3D = False
          TabOrder = 0
          OnExit = DBEdit4Exit
        end
        object db_celular: TDBEdit
          Left = 284
          Top = 13
          Width = 101
          Height = 19
          Ctl3D = False
          DataField = 'CCELULAR'
          DataSource = DM1.Src_Cli
          ParentCtl3D = False
          TabOrder = 1
          OnExit = db_celularExit
          OnKeyPress = db_celularKeyPress
        end
        object dbe_dtnas: TDBDateEdit
          Left = 306
          Top = 31
          Width = 84
          Height = 20
          DataField = 'IC_DTNAS'
          DataSource = DM4.Src_Cli_IC
          Ctl3D = False
          DialogTitle = 'Digite  ou Selecione a Data'
          NumGlyphs = 2
          ParentCtl3D = False
          TabOrder = 3
          OnExit = dbe_dtnasExit
        end
        object dbe_dtexp: TDBDateEdit
          Left = 303
          Top = 137
          Width = 84
          Height = 20
          DataField = 'C_DT_EXPRG'
          DataSource = DM1.Src_Cli
          Ctl3D = False
          DialogTitle = 'Digite  ou Selecione a Data'
          NumGlyphs = 2
          ParentCtl3D = False
          TabOrder = 12
        end
      end
      object DBEdit16: TDBEdit
        Left = 96
        Top = 1
        Width = 64
        Height = 19
        TabStop = False
        Ctl3D = False
        DataField = 'CCODCLI'
        DataSource = DM1.Src_Cli
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 1
      end
      object DBEdit17: TDBEdit
        Left = 203
        Top = 1
        Width = 244
        Height = 19
        TabStop = False
        Ctl3D = False
        DataField = 'CRAZAO'
        DataSource = DM1.Src_Cli
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 2
        OnKeyPress = db_razaoKeyPress
      end
      object DBEdit18: TDBEdit
        Left = 548
        Top = 1
        Width = 235
        Height = 19
        TabStop = False
        Ctl3D = False
        DataField = 'CDENOM'
        DataSource = DM1.Src_Cli
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 3
        OnKeyPress = db_razaoKeyPress
      end
      object bbProxima: TBitBtn
        Left = 741
        Top = 313
        Width = 41
        Height = 52
        Cursor = crHandPoint
        Hint = 'Vai para a proxima tela'
        Caption = 'Cont...'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 5
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
      object DBEdit6: TDBEdit
        Left = 493
        Top = 325
        Width = 50
        Height = 19
        TabStop = False
        Color = 16762081
        Ctl3D = False
        DataField = 'CCODUSR'
        DataSource = DM1.Src_Cli
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 6
      end
      object DBEdit9: TDBEdit
        Left = 567
        Top = 325
        Width = 172
        Height = 19
        TabStop = False
        Color = 16762081
        Ctl3D = False
        DataField = 'CDTINC'
        DataSource = DM1.Src_Cli
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 7
      end
      object DBEdit24: TDBEdit
        Left = 567
        Top = 343
        Width = 172
        Height = 19
        TabStop = False
        Color = 16762081
        Ctl3D = False
        DataField = 'CDTALT'
        DataSource = DM1.Src_Cli
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 8
      end
      object DBEdit25: TDBEdit
        Left = 493
        Top = 343
        Width = 50
        Height = 19
        TabStop = False
        Color = 16762081
        Ctl3D = False
        DataField = 'CUSRLAT'
        DataSource = DM1.Src_Cli
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 9
      end
    end
    object TsContatos: TTabSheet [2]
      Caption = 'Contatos'
      ImageIndex = 2
      OnExit = TsContatosExit
      object dbgContatos: TDBGrid
        Left = 0
        Top = 25
        Width = 791
        Height = 268
        Align = alClient
        DataSource = DM2.Src_Con_Cli
        PopupMenu = puContatos
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnColExit = dbgContatosColExit
        Columns = <
          item
            Expanded = False
            FieldName = 'CC_NOME'
            Title.Alignment = taCenter
            Title.Caption = 'NOME'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CC_DEPTO'
            Title.Alignment = taCenter
            Title.Caption = 'DEPARTAMENTO'
            Width = 321
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CC_FONE01'
            Title.Alignment = taCenter
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CC_FONE02'
            Title.Alignment = taCenter
            Title.Caption = 'TELEFONE 02'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CC_EMAIL'
            Title.Alignment = taCenter
            Title.Caption = 'E-MAIL'
            Visible = True
          end>
      end
      object gb_obscom: TGroupBox
        Left = 0
        Top = 293
        Width = 791
        Height = 105
        Align = alBottom
        Caption = 'Observa'#231#245'es'
        TabOrder = 1
        object dbmContatos: TDBMemo
          Left = 2
          Top = 15
          Width = 787
          Height = 88
          Align = alClient
          DataField = 'CC_OBS'
          DataSource = DM2.Src_Con_Cli
          TabOrder = 0
        end
      end
      object Panel3: TPanel
        Left = 0
        Top = 0
        Width = 791
        Height = 25
        Align = alTop
        TabOrder = 2
        object Label170: TLabel
          Left = 7
          Top = 3
          Width = 86
          Height = 13
          Caption = 'C'#243'digo do Cliente:'
          FocusControl = DBEdit29
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label171: TLabel
          Left = 165
          Top = 4
          Width = 35
          Height = 13
          Caption = 'Cliente:'
          FocusControl = DBEdit30
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label172: TLabel
          Left = 453
          Top = 3
          Width = 89
          Height = 13
          Caption = 'Nome de Fantasia:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object DBEdit29: TDBEdit
          Left = 96
          Top = 1
          Width = 64
          Height = 19
          TabStop = False
          Ctl3D = False
          DataField = 'CCODCLI'
          DataSource = DM1.Src_Cli
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          ReadOnly = True
          TabOrder = 0
        end
        object DBEdit30: TDBEdit
          Left = 203
          Top = 1
          Width = 244
          Height = 19
          TabStop = False
          Ctl3D = False
          DataField = 'CRAZAO'
          DataSource = DM1.Src_Cli
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          ReadOnly = True
          TabOrder = 1
          OnKeyPress = db_razaoKeyPress
        end
        object DBEdit31: TDBEdit
          Left = 548
          Top = 1
          Width = 235
          Height = 19
          TabStop = False
          Ctl3D = False
          DataField = 'CDENOM'
          DataSource = DM1.Src_Cli
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          ReadOnly = True
          TabOrder = 2
          OnKeyPress = db_razaoKeyPress
        end
      end
    end
    object Tab_ad: TTabSheet [3]
      Caption = '&Adicionais'
      ImageIndex = 1
      object PC_INFCAD: TPageControl
        Left = 0
        Top = 190
        Width = 791
        Height = 208
        ActivePage = ts_RefBan
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Style = tsButtons
        TabOrder = 1
        TabStop = False
        OnChange = PC1Change
        object ts_RefBan: TTabSheet
          Caption = 'Refer'#234'ncias Bancarias'
          object DBCtrlGrid_RefBan: TDBCtrlGrid
            Left = 0
            Top = 0
            Width = 783
            Height = 150
            Hint = 'Refer'#234'ncias Comerciais'
            Align = alClient
            DataSource = DM4.Src_Cli_RefBan
            PanelHeight = 50
            PanelWidth = 766
            ParentShowHint = False
            TabOrder = 0
            SelectedColor = 14548991
            ShowHint = True
            OnExit = DBCtrlGrid_RefBanExit
            object lbl_rb_NomBco: TLabel
              Left = 4
              Top = 4
              Width = 95
              Height = 13
              Caption = 'Nome do Banco:'
            end
            object lbl_rb_agencia: TLabel
              Left = 347
              Top = 5
              Width = 51
              Height = 13
              Caption = 'Ag'#234'ncia:'
            end
            object lbl_rb_conta: TLabel
              Left = 481
              Top = 6
              Width = 38
              Height = 13
              Caption = 'Conta:'
            end
            object lbl_rb_fone: TLabel
              Left = 618
              Top = 6
              Width = 33
              Height = 13
              Caption = 'Fone:'
            end
            object lbl_rb_conceito: TLabel
              Left = 48
              Top = 22
              Width = 55
              Height = 13
              Caption = 'Conceito:'
            end
            object DBE_RB_NomBco: TDBEdit
              Left = 101
              Top = 3
              Width = 240
              Height = 19
              Ctl3D = False
              DataField = 'RB_BANCO'
              DataSource = DM4.Src_Cli_RefBan
              Enabled = False
              ParentCtl3D = False
              TabOrder = 0
              OnExit = DBE_RB_NomBcoExit
            end
            object DBE_rb_agencia: TDBEdit
              Left = 401
              Top = 3
              Width = 77
              Height = 19
              Ctl3D = False
              DataField = 'RB_AGENCIA'
              DataSource = DM4.Src_Cli_RefBan
              Enabled = False
              ParentCtl3D = False
              TabOrder = 1
            end
            object DBE_rb_conta: TDBEdit
              Left = 522
              Top = 5
              Width = 95
              Height = 19
              Ctl3D = False
              DataField = 'RB_CONTA'
              DataSource = DM4.Src_Cli_RefBan
              Enabled = False
              ParentCtl3D = False
              TabOrder = 2
            end
            object DBE_rb_fone: TDBEdit
              Left = 654
              Top = 4
              Width = 100
              Height = 19
              Ctl3D = False
              DataField = 'RB_FONE'
              DataSource = DM4.Src_Cli_RefBan
              Enabled = False
              ParentCtl3D = False
              TabOrder = 3
              OnExit = DBE_rb_foneExit
              OnKeyPress = DBE_rb_foneKeyPress
            end
            object DBE_rb_conceito: TDBEdit
              Left = 101
              Top = 21
              Width = 516
              Height = 19
              Ctl3D = False
              DataField = 'RB_CONCEITO'
              DataSource = DM4.Src_Cli_RefBan
              Enabled = False
              ParentCtl3D = False
              TabOrder = 4
            end
          end
          object Panel_rb: TPanel
            Left = 0
            Top = 150
            Width = 783
            Height = 27
            Align = alBottom
            Enabled = False
            TabOrder = 1
            object sb_rb_incluir: TSpeedButton
              Left = 1
              Top = 3
              Width = 115
              Height = 22
              Cursor = crHandPoint
              Hint = 'Click aqui para '#13#10'incluir uma nova '#13#10'refer'#234'ncia banc'#225'ria'
              Caption = 'Incluir'
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
              ParentShowHint = False
              ShowHint = True
              OnClick = sb_rb_incluirClick
            end
            object sb_rb_excluir: TSpeedButton
              Left = 116
              Top = 3
              Width = 115
              Height = 22
              Cursor = crHandPoint
              Hint = 'Click aqui para excluir'#13#10'a refer'#234'ncia banc'#225'ria '#13#10'selecionada'
              Caption = 'Excluir'
              Glyph.Data = {
                76010000424D7601000000000000760000002800000020000000100000000100
                04000000000000010000130B0000130B00001000000000000000000000000000
                800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
                FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
                333333333333333333FF33333333333330003333333333333777333333333333
                300033FFFFFF3333377739999993333333333777777F3333333F399999933333
                3300377777733333337733333333333333003333333333333377333333333333
                3333333333333333333F333333333333330033333F33333333773333C3333333
                330033337F3333333377333CC3333333333333F77FFFFFFF3FF33CCCCCCCCCC3
                993337777777777F77F33CCCCCCCCCC399333777777777737733333CC3333333
                333333377F33333333FF3333C333333330003333733333333777333333333333
                3000333333333333377733333333333333333333333333333333}
              NumGlyphs = 2
              ParentShowHint = False
              ShowHint = True
              OnClick = sb_rb_excluirClick
            end
          end
        end
        object ts_RefCom: TTabSheet
          Caption = 'Referencias Comerciais'
          ImageIndex = 1
          object Panel_rc: TPanel
            Left = 0
            Top = 137
            Width = 775
            Height = 27
            Align = alBottom
            Enabled = False
            TabOrder = 0
            object sb_rc_incluir: TSpeedButton
              Left = 8
              Top = 3
              Width = 115
              Height = 22
              Hint = 'Click aqui para '#13#10'incluir uma nova '#13#10'refer'#234'ncia banc'#225'ria'
              Caption = 'Incluir'
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
              ParentShowHint = False
              ShowHint = True
              OnClick = sb_rc_incluirClick
            end
            object sb_rc_excluir: TSpeedButton
              Left = 128
              Top = 3
              Width = 115
              Height = 22
              Hint = 'Click aqui para excluir'#13#10'a refer'#234'ncia banc'#225'ria '#13#10'selecionada'
              Caption = 'Excluir'
              Glyph.Data = {
                76010000424D7601000000000000760000002800000020000000100000000100
                04000000000000010000130B0000130B00001000000000000000000000000000
                800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
                FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
                333333333333333333FF33333333333330003333333333333777333333333333
                300033FFFFFF3333377739999993333333333777777F3333333F399999933333
                3300377777733333337733333333333333003333333333333377333333333333
                3333333333333333333F333333333333330033333F33333333773333C3333333
                330033337F3333333377333CC3333333333333F77FFFFFFF3FF33CCCCCCCCCC3
                993337777777777F77F33CCCCCCCCCC399333777777777737733333CC3333333
                333333377F33333333FF3333C333333330003333733333333777333333333333
                3000333333333333377733333333333333333333333333333333}
              NumGlyphs = 2
              ParentShowHint = False
              ShowHint = True
              OnClick = sb_rc_excluirClick
            end
          end
          object DBCtrlGrid_RefCom: TDBCtrlGrid
            Left = 0
            Top = 0
            Width = 775
            Height = 137
            Hint = 'Refer'#234'ncias Banc'#225'rias'
            Align = alClient
            DataSource = DM4.Src_Cli_RefCom
            PanelHeight = 45
            PanelWidth = 758
            ParentShowHint = False
            TabOrder = 1
            SelectedColor = 14548991
            ShowHint = True
            OnExit = DBCtrlGrid_RefComExit
            object Label87: TLabel
              Left = 58
              Top = 4
              Width = 37
              Height = 13
              Caption = 'Nome:'
            end
            object Label90: TLabel
              Left = 479
              Top = 6
              Width = 33
              Height = 13
              Caption = 'Fone:'
            end
            object Label91: TLabel
              Left = 48
              Top = 22
              Width = 55
              Height = 13
              Caption = 'Conceito:'
            end
            object DBE_RC_Nome: TDBEdit
              Left = 101
              Top = 3
              Width = 310
              Height = 19
              Ctl3D = False
              DataField = 'RC_NOME'
              DataSource = DM4.Src_Cli_RefCom
              Enabled = False
              ParentCtl3D = False
              TabOrder = 0
              OnExit = DBE_RC_NomeExit
            end
            object DBE_RC_Fone: TDBEdit
              Left = 517
              Top = 3
              Width = 100
              Height = 19
              Ctl3D = False
              DataField = 'RC_FONE'
              DataSource = DM4.Src_Cli_RefCom
              Enabled = False
              ParentCtl3D = False
              TabOrder = 1
              OnExit = DBE_RC_FoneExit
              OnKeyPress = DBE_RC_FoneKeyPress
            end
            object DBE_RC_Conceito: TDBEdit
              Left = 101
              Top = 21
              Width = 516
              Height = 19
              Ctl3D = False
              DataField = 'RC_CONCEITO'
              DataSource = DM4.Src_Cli_RefCom
              Enabled = False
              ParentCtl3D = False
              TabOrder = 2
            end
          end
        end
        object ts_RefPes: TTabSheet
          Caption = 'Refer'#234'ncias Pessoais'
          ImageIndex = 2
          object panel_rp: TPanel
            Left = 0
            Top = 150
            Width = 783
            Height = 27
            Align = alBottom
            Enabled = False
            TabOrder = 0
            object sb_rp_incluir: TSpeedButton
              Left = 8
              Top = 3
              Width = 115
              Height = 22
              Hint = 'Click aqui para '#13#10'incluir uma nova '#13#10'refer'#234'ncia banc'#225'ria'
              Caption = 'Incluir'
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
              ParentShowHint = False
              ShowHint = True
              OnClick = sb_rp_incluirClick
            end
            object sb_rp_excluir: TSpeedButton
              Left = 128
              Top = 3
              Width = 115
              Height = 22
              Hint = 'Click aqui para excluir'#13#10'a refer'#234'ncia banc'#225'ria '#13#10'selecionada'
              Caption = 'Excluir'
              Glyph.Data = {
                76010000424D7601000000000000760000002800000020000000100000000100
                04000000000000010000130B0000130B00001000000000000000000000000000
                800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
                FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
                333333333333333333FF33333333333330003333333333333777333333333333
                300033FFFFFF3333377739999993333333333777777F3333333F399999933333
                3300377777733333337733333333333333003333333333333377333333333333
                3333333333333333333F333333333333330033333F33333333773333C3333333
                330033337F3333333377333CC3333333333333F77FFFFFFF3FF33CCCCCCCCCC3
                993337777777777F77F33CCCCCCCCCC399333777777777737733333CC3333333
                333333377F33333333FF3333C333333330003333733333333777333333333333
                3000333333333333377733333333333333333333333333333333}
              NumGlyphs = 2
              ParentShowHint = False
              ShowHint = True
              OnClick = sb_rp_excluirClick
            end
          end
          object DBCtrlGrid_RefPes: TDBCtrlGrid
            Left = 0
            Top = 0
            Width = 783
            Height = 150
            Hint = 'Refer'#234'ncias Pessoais'
            Align = alClient
            DataSource = DM4.Src_Cli_RefPes
            PanelHeight = 50
            PanelWidth = 766
            ParentShowHint = False
            TabOrder = 1
            SelectedColor = 14548991
            ShowHint = True
            OnExit = DBCtrlGrid_RefPesExit
            object Label88: TLabel
              Left = 24
              Top = 4
              Width = 37
              Height = 13
              Caption = 'Nome:'
            end
            object Label89: TLabel
              Left = 371
              Top = 6
              Width = 33
              Height = 13
              Caption = 'Fone:'
            end
            object Label92: TLabel
              Left = 352
              Top = 25
              Width = 55
              Height = 13
              Caption = 'Conceito:'
            end
            object Label93: TLabel
              Left = 515
              Top = 6
              Width = 69
              Height = 13
              Caption = 'Parentesco:'
            end
            object Label94: TLabel
              Left = 6
              Top = 23
              Width = 59
              Height = 13
              Caption = 'Endere'#231'o:'
            end
            object DBE_RP_Nome: TDBEdit
              Left = 64
              Top = 3
              Width = 286
              Height = 19
              Ctl3D = False
              DataField = 'RP_NOME'
              DataSource = DM4.Src_Cli_RefPes
              Enabled = False
              ParentCtl3D = False
              TabOrder = 0
              OnExit = DBE_RP_NomeExit
            end
            object DBE_RP_Fone: TDBEdit
              Left = 410
              Top = 3
              Width = 95
              Height = 19
              Ctl3D = False
              DataField = 'RP_FONE'
              DataSource = DM4.Src_Cli_RefPes
              Enabled = False
              ParentCtl3D = False
              TabOrder = 1
              OnExit = DBE_RP_FoneExit
              OnKeyPress = DBE_RP_FoneKeyPress
            end
            object DBE_RP_Conceito: TDBEdit
              Left = 410
              Top = 21
              Width = 344
              Height = 19
              Ctl3D = False
              DataField = 'RP_CONCEITO'
              DataSource = DM4.Src_Cli_RefPes
              Enabled = False
              ParentCtl3D = False
              TabOrder = 4
            end
            object DBE_RP_TIPO: TDBEdit
              Left = 591
              Top = 3
              Width = 163
              Height = 19
              Ctl3D = False
              DataField = 'RP_TIPO'
              DataSource = DM4.Src_Cli_RefPes
              Enabled = False
              ParentCtl3D = False
              TabOrder = 2
            end
            object DBE_RP_ENDERECO: TDBEdit
              Left = 64
              Top = 21
              Width = 286
              Height = 19
              Ctl3D = False
              DataField = 'RP_ENDERECO'
              DataSource = DM4.Src_Cli_RefPes
              Enabled = False
              ParentCtl3D = False
              TabOrder = 3
            end
          end
        end
        object ts_OutInf: TTabSheet
          Caption = '&Outras Informa'#231#245'es'
          ImageIndex = 3
          object panel_oi: TPanel
            Left = 0
            Top = 137
            Width = 775
            Height = 27
            Align = alBottom
            Enabled = False
            TabOrder = 0
            object sb_oi_incluir: TSpeedButton
              Left = 8
              Top = 3
              Width = 115
              Height = 22
              Hint = 'Click aqui para '#13#10'incluir uma nova '#13#10'refer'#234'ncia banc'#225'ria'
              Caption = 'Incl&uir'
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
              ParentShowHint = False
              ShowHint = True
              OnClick = sb_oi_incluirClick
            end
            object sb_oi_excluir: TSpeedButton
              Left = 128
              Top = 3
              Width = 115
              Height = 22
              Hint = 'Click aqui para excluir'#13#10'a refer'#234'ncia banc'#225'ria '#13#10'selecionada'
              Caption = 'Excluir'
              Glyph.Data = {
                76010000424D7601000000000000760000002800000020000000100000000100
                04000000000000010000130B0000130B00001000000000000000000000000000
                800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
                FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
                333333333333333333FF33333333333330003333333333333777333333333333
                300033FFFFFF3333377739999993333333333777777F3333333F399999933333
                3300377777733333337733333333333333003333333333333377333333333333
                3333333333333333333F333333333333330033333F33333333773333C3333333
                330033337F3333333377333CC3333333333333F77FFFFFFF3FF33CCCCCCCCCC3
                993337777777777F77F33CCCCCCCCCC399333777777777737733333CC3333333
                333333377F33333333FF3333C333333330003333733333333777333333333333
                3000333333333333377733333333333333333333333333333333}
              NumGlyphs = 2
              ParentShowHint = False
              ShowHint = True
              OnClick = sb_oi_excluirClick
            end
          end
          object DBCtrlGrid_OutInf: TDBCtrlGrid
            Left = 0
            Top = 0
            Width = 775
            Height = 136
            Hint = 'Outras Informa'#231#245'es'
            Align = alClient
            DataSource = DM4.Src_Cli_OutInf
            PanelHeight = 68
            PanelWidth = 758
            ParentShowHint = False
            TabOrder = 1
            RowCount = 2
            SelectedColor = 14548991
            ShowHint = True
            OnExit = DBCtrlGrid_OutInfExit
            object DBE_OI_DESCRICAO: TDBMemo
              Left = 0
              Top = 0
              Width = 758
              Height = 68
              Align = alClient
              DataField = 'OI_DESCRICAO'
              DataSource = DM4.Src_Cli_OutInf
              Enabled = False
              TabOrder = 0
              OnExit = DBE_OI_DESCRICAOExit
            end
          end
        end
        object ts_BensImoveis: TTabSheet
          Caption = 'Bens/Im'#243'veis'
          ImageIndex = 4
          object panel_bens: TPanel
            Left = 0
            Top = 137
            Width = 775
            Height = 27
            Align = alBottom
            Enabled = False
            TabOrder = 0
            object sb_bens_incluir: TSpeedButton
              Left = 8
              Top = 3
              Width = 115
              Height = 22
              Hint = 'Click aqui para '#13#10'incluir uma nova '#13#10'refer'#234'ncia banc'#225'ria'
              Caption = 'Incluir'
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
              ParentShowHint = False
              ShowHint = True
              OnClick = sb_bens_incluirClick
            end
            object sb_bens_excluir: TSpeedButton
              Left = 128
              Top = 3
              Width = 115
              Height = 22
              Hint = 'Click aqui para excluir'#13#10'a refer'#234'ncia banc'#225'ria '#13#10'selecionada'
              Caption = 'Excluir'
              Glyph.Data = {
                76010000424D7601000000000000760000002800000020000000100000000100
                04000000000000010000130B0000130B00001000000000000000000000000000
                800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
                FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
                333333333333333333FF33333333333330003333333333333777333333333333
                300033FFFFFF3333377739999993333333333777777F3333333F399999933333
                3300377777733333337733333333333333003333333333333377333333333333
                3333333333333333333F333333333333330033333F33333333773333C3333333
                330033337F3333333377333CC3333333333333F77FFFFFFF3FF33CCCCCCCCCC3
                993337777777777F77F33CCCCCCCCCC399333777777777737733333CC3333333
                333333377F33333333FF3333C333333330003333733333333777333333333333
                3000333333333333377733333333333333333333333333333333}
              NumGlyphs = 2
              ParentShowHint = False
              ShowHint = True
              OnClick = sb_bens_excluirClick
            end
          end
          object DBCtrlGrid1: TDBCtrlGrid
            Left = 0
            Top = 0
            Width = 775
            Height = 136
            Hint = 'Bens e Im'#243'veis do Cliente'
            Align = alClient
            DataSource = DM4.Src_Cli_Bens
            PanelHeight = 68
            PanelWidth = 758
            ParentShowHint = False
            TabOrder = 1
            RowCount = 2
            SelectedColor = 14548991
            ShowHint = True
            OnExit = DBCtrlGrid1Exit
            object DBE_BENS_DESCRICAO: TDBMemo
              Left = 0
              Top = 0
              Width = 633
              Height = 68
              Align = alLeft
              DataField = 'CB_DESCRICAO'
              DataSource = DM4.Src_Cli_Bens
              Enabled = False
              TabOrder = 0
              OnExit = DBE_BENS_DESCRICAOExit
            end
            object DBCb_Bens_Quitado: TDBCheckBox
              Left = 646
              Top = 4
              Width = 97
              Height = 17
              Caption = 'Quitado'
              DataField = 'CB_QUITADO'
              DataSource = DM4.Src_Cli_Bens
              Enabled = False
              TabOrder = 1
              ValueChecked = '0'
              ValueUnchecked = '1'
            end
          end
        end
      end
      object panel_ad: TPanel
        Left = 0
        Top = 0
        Width = 791
        Height = 190
        Align = alTop
        Enabled = False
        TabOrder = 0
        object Label72: TLabel
          Left = 7
          Top = 3
          Width = 86
          Height = 13
          Caption = 'C'#243'digo do Cliente:'
          FocusControl = DBEdit3
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label73: TLabel
          Left = 165
          Top = 4
          Width = 35
          Height = 13
          Caption = 'Cliente:'
          FocusControl = DBEdit5
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label74: TLabel
          Left = 453
          Top = 3
          Width = 89
          Height = 13
          Caption = 'Nome de Fantasia:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label66: TLabel
          Left = 166
          Top = 128
          Width = 102
          Height = 13
          Caption = 'Valor Tarifa Banc'#225'ria:'
        end
        object Label16: TLabel
          Left = 2
          Top = 146
          Width = 76
          Height = 13
          Caption = 'Dt.Prim.Compra:'
        end
        object Label17: TLabel
          Left = 177
          Top = 145
          Width = 71
          Height = 13
          Caption = 'Data Cadastro:'
        end
        object Label19: TLabel
          Left = 360
          Top = 145
          Width = 69
          Height = 13
          Caption = 'Dt.'#218'lt.Compra:'
        end
        object Label67: TLabel
          Left = 349
          Top = 127
          Width = 79
          Height = 13
          Caption = 'N'#237'vel do Cliente:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label71: TLabel
          Left = 503
          Top = 129
          Width = 48
          Height = 13
          Caption = 'Cota M'#234's:'
        end
        object Label86: TLabel
          Left = 521
          Top = 57
          Width = 106
          Height = 13
          Caption = 'Empresa Fundada em:'
        end
        object Label36: TLabel
          Left = 6
          Top = 167
          Width = 70
          Height = 13
          Caption = 'C'#243'd.Convenio:'
        end
        object Label37: TLabel
          Left = 260
          Top = 167
          Width = 17
          Height = 13
          Caption = 'No.'
        end
        object Label175: TLabel
          Left = 385
          Top = 99
          Width = 51
          Height = 13
          Caption = 'Tipo Frete:'
        end
        object Label178: TLabel
          Left = 4
          Top = 109
          Width = 144
          Height = 13
          Caption = 'Valor Minimo para Emprestimo:'
        end
        object DBEdit3: TDBEdit
          Left = 96
          Top = 1
          Width = 64
          Height = 19
          TabStop = False
          Ctl3D = False
          DataField = 'CCODCLI'
          DataSource = DM1.Src_Cli
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          ReadOnly = True
          TabOrder = 0
        end
        object DBEdit5: TDBEdit
          Left = 203
          Top = 1
          Width = 244
          Height = 19
          TabStop = False
          Ctl3D = False
          DataField = 'CRAZAO'
          DataSource = DM1.Src_Cli
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          ReadOnly = True
          TabOrder = 1
          OnKeyPress = db_razaoKeyPress
        end
        object DBEdit7: TDBEdit
          Left = 548
          Top = 1
          Width = 235
          Height = 19
          TabStop = False
          Ctl3D = False
          DataField = 'CDENOM'
          DataSource = DM1.Src_Cli
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          ReadOnly = True
          TabOrder = 2
          OnKeyPress = db_razaoKeyPress
        end
        object gb_vendextra: TGroupBox
          Left = 0
          Top = 20
          Width = 379
          Height = 87
          Caption = 'Vendedores Extras:'
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 3
          object Label15: TLabel
            Left = 4
            Top = 16
            Width = 36
            Height = 13
            Caption = 'Codigo:'
          end
          object Label18: TLabel
            Left = 4
            Top = 31
            Width = 36
            Height = 13
            Caption = 'Codigo:'
          end
          object Label62: TLabel
            Left = 283
            Top = 14
            Width = 39
            Height = 17
            Alignment = taCenter
            AutoSize = False
            Caption = '%Comis:'
            WordWrap = True
          end
          object Label63: TLabel
            Left = 283
            Top = 32
            Width = 39
            Height = 17
            Alignment = taCenter
            AutoSize = False
            Caption = '%Comis:'
            WordWrap = True
          end
          object Label64: TLabel
            Left = 4
            Top = 49
            Width = 36
            Height = 13
            Caption = 'Codigo:'
          end
          object Label65: TLabel
            Left = 283
            Top = 50
            Width = 39
            Height = 17
            Alignment = taCenter
            AutoSize = False
            Caption = '%Comis:'
            WordWrap = True
          end
          object Label57: TLabel
            Left = 5
            Top = 68
            Width = 45
            Height = 13
            Caption = 'Assessor:'
          end
          object db_codv02: TDBEdit
            Left = 52
            Top = 12
            Width = 60
            Height = 19
            Ctl3D = False
            DataField = 'CCODV02'
            DataSource = DM1.Src_Cli
            ParentCtl3D = False
            TabOrder = 0
            OnExit = db_codv02Exit
            OnKeyPress = db_codv02KeyPress
          end
          object db_nomv02: TDBEdit
            Left = 111
            Top = 12
            Width = 172
            Height = 19
            TabStop = False
            Ctl3D = False
            DataField = 'CNOMV02'
            DataSource = DM1.Src_Cli
            ParentColor = True
            ParentCtl3D = False
            ReadOnly = True
            TabOrder = 1
          end
          object db_codv03: TDBEdit
            Left = 52
            Top = 30
            Width = 60
            Height = 19
            Ctl3D = False
            DataField = 'CCODV03'
            DataSource = DM1.Src_Cli
            ParentCtl3D = False
            TabOrder = 3
            OnExit = db_codv03Exit
            OnKeyPress = db_codv03KeyPress
          end
          object db_nomv03: TDBEdit
            Left = 111
            Top = 30
            Width = 172
            Height = 19
            TabStop = False
            Ctl3D = False
            DataField = 'CNOMV03'
            DataSource = DM1.Src_Cli
            ParentColor = True
            ParentCtl3D = False
            ReadOnly = True
            TabOrder = 4
          end
          object db_comis02: TDBEdit
            Left = 325
            Top = 12
            Width = 43
            Height = 19
            Ctl3D = False
            DataField = 'CCOMIS02'
            DataSource = DM1.Src_Cli
            ParentCtl3D = False
            TabOrder = 2
            OnKeyPress = DBE_CALIQAKeyPress
          end
          object db_comis03: TDBEdit
            Left = 325
            Top = 30
            Width = 43
            Height = 19
            Ctl3D = False
            DataField = 'CCOMIS03'
            DataSource = DM1.Src_Cli
            ParentCtl3D = False
            TabOrder = 5
            OnKeyPress = DBE_CALIQAKeyPress
          end
          object db_codv04: TDBEdit
            Left = 52
            Top = 48
            Width = 60
            Height = 19
            Ctl3D = False
            DataField = 'CCODV04'
            DataSource = DM1.Src_Cli
            ParentCtl3D = False
            TabOrder = 6
            OnExit = db_codv04Exit
            OnKeyPress = db_codv04KeyPress
          end
          object db_nomv04: TDBEdit
            Left = 111
            Top = 48
            Width = 172
            Height = 19
            TabStop = False
            Ctl3D = False
            DataField = 'CNOMV04'
            DataSource = DM1.Src_Cli
            ParentColor = True
            ParentCtl3D = False
            ReadOnly = True
            TabOrder = 7
          end
          object db_comis04: TDBEdit
            Left = 325
            Top = 48
            Width = 43
            Height = 19
            Ctl3D = False
            DataField = 'CCOMIS04'
            DataSource = DM1.Src_Cli
            ParentCtl3D = False
            TabOrder = 8
            OnKeyPress = DBE_CALIQAKeyPress
          end
          object DBEdit99: TDBEdit
            Left = 52
            Top = 66
            Width = 60
            Height = 19
            Ctl3D = False
            DataField = 'CCODASSE'
            DataSource = DM1.Src_Cli
            ParentCtl3D = False
            TabOrder = 9
            OnExit = DBEdit99Exit
            OnKeyPress = DBEdit99KeyPress
          end
          object DBEdit100: TDBEdit
            Left = 111
            Top = 66
            Width = 172
            Height = 19
            TabStop = False
            Ctl3D = False
            DataField = 'CNOMASSE'
            DataSource = DM1.Src_Cli
            ParentColor = True
            ParentCtl3D = False
            ReadOnly = True
            TabOrder = 10
          end
        end
        object dbc_cctarban: TDBCheckBox
          Left = 2
          Top = 126
          Width = 142
          Height = 17
          Caption = 'Cobrar Tarifa Banc'#225'ria'
          DataField = 'CCTARBAN'
          DataSource = DM1.Src_Cli
          TabOrder = 10
          ValueChecked = '0'
          ValueUnchecked = '1'
        end
        object db_tarban: TDBEdit
          Left = 283
          Top = 125
          Width = 59
          Height = 19
          Ctl3D = False
          DataField = 'CTARBAN'
          DataSource = DM1.Src_Cli
          ParentCtl3D = False
          TabOrder = 11
          OnKeyPress = DBE_CALIQAKeyPress
        end
        object db_nivel: TDBEdit
          Left = 433
          Top = 125
          Width = 59
          Height = 19
          Ctl3D = False
          DataField = 'CNIVEL'
          DataSource = DM1.Src_Cli
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 12
        end
        object db_cotames: TDBEdit
          Left = 558
          Top = 126
          Width = 91
          Height = 19
          Ctl3D = False
          DataField = 'CVDAMEN'
          DataSource = DM1.Src_Cli
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 13
          OnKeyDown = DBE_CodDepDKeyDown
          OnKeyPress = DBE_CALIQAKeyPress
        end
        object dbr_frete: TDBRadioGroup
          Left = 653
          Top = 100
          Width = 142
          Height = 72
          Caption = 'Tipo de Frete'
          Ctl3D = False
          DataField = 'CFRETEPC'
          DataSource = DM1.Src_Cli
          Items.Strings = (
            '0- Por conta do emitente;'
            '1- Por conta do destinat'#225'rio/remetente;'
            '2- Por conta de terceiros;'
            '9- Sem frete. (V2.0)')
          ParentCtl3D = False
          TabOrder = 6
          Values.Strings = (
            '0'
            '1'
            '2'
            '9')
        end
        object gb_precoprat: TDBRadioGroup
          Left = 383
          Top = 20
          Width = 126
          Height = 72
          Caption = 'Pre'#231'o Praticado'
          Columns = 2
          Ctl3D = False
          DataField = 'CPCOPRAT'
          DataSource = DM1.Src_Cli
          Items.Strings = (
            'Padr'#227'o'
            'Pre'#231'o 1'
            'Pre'#231'o 2'
            'Pre'#231'o 3')
          ParentCtl3D = False
          TabOrder = 5
          Values.Strings = (
            '0'
            '1'
            '2'
            '3'
            '4')
        end
        object BLQPRM: TDBCheckBox
          Left = 653
          Top = 25
          Width = 121
          Height = 17
          Caption = 'Bloquear Promo'#231#245'es'
          DataField = 'CBLQPRM'
          DataSource = DM1.Src_Cli
          TabOrder = 7
          ValueChecked = '1'
          ValueUnchecked = '0'
          Visible = False
        end
        object dbc_bloqemp: TDBCheckBox
          Left = 654
          Top = 41
          Width = 132
          Height = 17
          Caption = 'Bloquear Empr'#233'stimos'
          DataField = 'CBLQEMP'
          DataSource = DM1.Src_Cli
          TabOrder = 8
          ValueChecked = '1'
          ValueUnchecked = '0'
        end
        object gb_visitas: TGroupBox
          Left = 655
          Top = 58
          Width = 122
          Height = 115
          Caption = 'Dias de Visitas '
          TabOrder = 14
          object DBCheckBox5: TDBCheckBox
            Left = 8
            Top = 13
            Width = 87
            Height = 17
            Caption = 'Segunda-Feira'
            DataField = 'CVSEG'
            DataSource = DM1.Src_Cli
            TabOrder = 0
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
          object DBCheckBox6: TDBCheckBox
            Left = 8
            Top = 25
            Width = 87
            Height = 17
            Caption = 'Ter'#231'a-Feira'
            DataField = 'CVTER'
            DataSource = DM1.Src_Cli
            TabOrder = 1
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
          object DBCheckBox7: TDBCheckBox
            Left = 8
            Top = 38
            Width = 87
            Height = 17
            Caption = 'Quarta-Feira'
            DataField = 'CVQUA'
            DataSource = DM1.Src_Cli
            TabOrder = 2
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
          object DBCheckBox8: TDBCheckBox
            Left = 8
            Top = 52
            Width = 87
            Height = 17
            Caption = 'Quinta-Feira'
            DataField = 'CVQUI'
            DataSource = DM1.Src_Cli
            TabOrder = 3
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
          object DBCheckBox9: TDBCheckBox
            Left = 8
            Top = 66
            Width = 87
            Height = 17
            Caption = 'Sexta-Feira'
            DataField = 'CVSEX'
            DataSource = DM1.Src_Cli
            TabOrder = 4
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
          object DBCheckBox10: TDBCheckBox
            Left = 8
            Top = 81
            Width = 87
            Height = 17
            Caption = 'S'#225'bado'
            DataField = 'CVSAB'
            DataSource = DM1.Src_Cli
            TabOrder = 5
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
          object DBCheckBox11: TDBCheckBox
            Left = 8
            Top = 96
            Width = 87
            Height = 17
            Caption = 'Domingo'
            DataField = 'CVDOM'
            DataSource = DM1.Src_Cli
            TabOrder = 6
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
        end
        object db_codcv: TDBEdit
          Left = 81
          Top = 161
          Width = 60
          Height = 19
          Ctl3D = False
          DataField = 'CCODCV'
          DataSource = DM1.Src_Cli
          ParentCtl3D = False
          TabOrder = 15
          OnExit = db_codcvExit
          OnKeyPress = db_codcvKeyPress
        end
        object db_nomcv: TDBEdit
          Left = 140
          Top = 161
          Width = 118
          Height = 19
          TabStop = False
          Ctl3D = False
          DataField = 'CNOMCV'
          DataSource = DM1.Src_Cli
          ParentColor = True
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 16
        end
        object DBEdit64: TDBEdit
          Left = 280
          Top = 161
          Width = 95
          Height = 19
          Ctl3D = False
          DataField = 'CNCONV'
          DataSource = DM1.Src_Cli
          ParentCtl3D = False
          TabOrder = 17
          OnExit = db_codredExit
          OnKeyPress = db_codredKeyPress
        end
        object dbe_dtpcpr: TDBDateEdit
          Left = 81
          Top = 142
          Width = 85
          Height = 20
          TabStop = False
          DataField = 'CDTPCPR'
          DataSource = DM1.Src_Cli
          ReadOnly = True
          Color = clBtnFace
          Ctl3D = False
          DialogTitle = 'Digite  ou Selecione a Data'
          NumGlyphs = 2
          ParentCtl3D = False
          TabOrder = 18
        end
        object dbe_dtcad: TDBDateEdit
          Left = 258
          Top = 142
          Width = 85
          Height = 20
          TabStop = False
          DataField = 'CDTCAD'
          DataSource = DM1.Src_Cli
          ReadOnly = True
          Color = clBtnFace
          Ctl3D = False
          DialogTitle = 'Digite  ou Selecione a Data'
          NumGlyphs = 2
          ParentCtl3D = False
          TabOrder = 19
        end
        object dbe_dtucpr: TDBDateEdit
          Left = 433
          Top = 142
          Width = 85
          Height = 20
          TabStop = False
          DataField = 'CDTUCPR'
          DataSource = DM1.Src_Cli
          ReadOnly = True
          Color = clBtnFace
          Ctl3D = False
          DialogTitle = 'Digite  ou Selecione a Data'
          NumGlyphs = 2
          ParentCtl3D = False
          TabOrder = 20
        end
        object dbe_dtfundacao: TDBDateEdit
          Left = 527
          Top = 70
          Width = 85
          Height = 20
          DataField = 'CDTFUNDACAO'
          DataSource = DM1.Src_Cli
          Ctl3D = False
          DialogTitle = 'Digite  ou Selecione a Data'
          NumGlyphs = 2
          ParentCtl3D = False
          TabOrder = 9
        end
        object DBCB_CBLOQCONTROLADO: TDBCheckBox
          Left = 375
          Top = 163
          Width = 128
          Height = 17
          Alignment = taLeftJustify
          Caption = 'Bloquear Controlados '
          DataField = 'CBLOQCONTROLADO'
          DataSource = DM1.Src_Cli
          TabOrder = 21
          ValueChecked = 'S'
          ValueUnchecked = 'N'
        end
        object DBCheckBox1: TDBCheckBox
          Left = 516
          Top = 163
          Width = 130
          Height = 17
          Alignment = taLeftJustify
          Caption = 'Bloquear Venda a Prazo'
          DataField = 'CBLOQVDAPRZ'
          DataSource = DM1.Src_Cli
          TabOrder = 22
          ValueChecked = '1'
          ValueUnchecked = '0'
        end
        object RxDBCB_fretepc: TRxDBComboBox
          Left = 440
          Top = 96
          Width = 207
          Height = 21
          Style = csDropDownList
          DataField = 'CFRETEPC'
          DataSource = DM1.Src_Cli
          EnableValues = True
          ItemHeight = 13
          Items.Strings = (
            '0-CIF  - Emitente'
            '1-FOB - Destinatario'
            '2-por conta de terceiros'
            '3-Transporte Pr'#243'prio por conta do Remetente;'
            '4-Transporte Pr'#243'prio por conta do Destinat'#225'rio;'
            '9-Sem Ocorr'#234'ncia de Transporte')
          TabOrder = 23
          Values.Strings = (
            '0'
            '1'
            '2'
            '3'
            '4'
            '9')
        end
        object DBE_CVALMIM_EMPRESTIMO: TDBEdit
          Left = 153
          Top = 108
          Width = 168
          Height = 19
          Ctl3D = False
          DataField = 'CVALMIM_EMPRESTIMO'
          DataSource = DM1.Src_Cli
          ParentCtl3D = False
          TabOrder = 4
          OnExit = db_codv04Exit
          OnKeyPress = db_codv04KeyPress
        end
      end
    end
    object tab_dadfiscal: TTabSheet [4]
      Caption = 'Sobre Impostos(Fiscais)'
      Enabled = False
      ImageIndex = 2
      object Label58: TLabel
        Left = 663
        Top = 83
        Width = 54
        Height = 13
        Caption = 'Al'#237' d'#233'b ST:'
        Visible = False
      end
      object Label59: TLabel
        Left = 458
        Top = 157
        Width = 8
        Height = 13
        Caption = '%'
      end
      object Label75: TLabel
        Left = 7
        Top = 0
        Width = 86
        Height = 13
        Caption = 'C'#243'digo do Cliente:'
        FocusControl = DBEdit8
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label76: TLabel
        Left = 165
        Top = 0
        Width = 35
        Height = 13
        Caption = 'Cliente:'
        FocusControl = DBEdit10
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label77: TLabel
        Left = 453
        Top = 1
        Width = 89
        Height = 13
        Caption = 'Nome de Fantasia:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label138: TLabel
        Left = 472
        Top = 83
        Width = 41
        Height = 13
        Caption = 'Status:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label167: TLabel
        Left = 10
        Top = 263
        Width = 117
        Height = 13
        Caption = 'Desonera'#231#227'o de ICMS..:'
      end
      object Label168: TLabel
        Left = 603
        Top = 226
        Width = 64
        Height = 13
        Caption = 'SUFRAMA:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label173: TLabel
        Left = 393
        Top = 276
        Width = 137
        Height = 13
        Caption = 'C'#243'digo de Regime Tributario:'
      end
      object gb_diversos: TGroupBox
        Left = 0
        Top = 23
        Width = 236
        Height = 235
        Caption = 'Diversos:'
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 0
        object Label176: TLabel
          Left = 5
          Top = 121
          Width = 56
          Height = 13
          Caption = 'Icms do IPI:'
        end
        object ICMSR: TDBCheckBox
          Left = 7
          Top = 12
          Width = 200
          Height = 22
          Caption = 'Icms Substitui'#231#227'o Tribut'#225'ria'
          DataField = 'CICMSR'
          DataSource = DM1.Src_Cli
          TabOrder = 0
          ValueChecked = '1'
          ValueUnchecked = '0'
        end
        object CONSF: TDBCheckBox
          Left = 7
          Top = 136
          Width = 200
          Height = 17
          Caption = 'Consumidor Final'
          DataField = 'CCONSF'
          DataSource = DM1.Src_Cli
          TabOrder = 9
          ValueChecked = '1'
          ValueUnchecked = '0'
        end
        object ICMSTP: TDBCheckBox
          Left = 7
          Top = 57
          Width = 220
          Height = 17
          Caption = 'Calcular Icms Normal Produtos Retidos'
          DataField = 'CICMSTP'
          DataSource = DM1.Src_Cli
          TabOrder = 3
          ValueChecked = '1'
          ValueUnchecked = '0'
        end
        object REPAS: TDBCheckBox
          Left = 7
          Top = 87
          Width = 189
          Height = 17
          Caption = 'Calcular Repasse de ICMS'
          DataField = 'CREPAS'
          DataSource = DM1.Src_Cli
          TabOrder = 5
          ValueChecked = '1'
          ValueUnchecked = '0'
        end
        object IPI: TDBCheckBox
          Left = 7
          Top = 104
          Width = 97
          Height = 17
          Caption = 'Calcular IPI'
          DataField = 'CIPI'
          DataSource = DM1.Src_Cli
          TabOrder = 7
          ValueChecked = '1'
          ValueUnchecked = '0'
        end
        object ICMSNOR: TDBCheckBox
          Left = 7
          Top = 45
          Width = 208
          Height = 13
          Caption = 'Calcular Icms Produtos Tributados'
          DataField = 'CICMSNOR'
          DataSource = DM1.Src_Cli
          TabOrder = 2
          ValueChecked = '0'
          ValueUnchecked = '1'
        end
        object DBCB_REDICMSNOR: TDBCheckBox
          Left = 7
          Top = 73
          Width = 226
          Height = 17
          Caption = 'Aplicar Redu'#231#227'o de Icms Normal se Houver'
          DataField = 'CREDICMSNOR'
          DataSource = DM1.Src_Cli
          TabOrder = 4
          ValueChecked = '0'
          ValueUnchecked = '1'
        end
        object DBCB_DEC5834: TDBCheckBox
          Left = 7
          Top = 164
          Width = 217
          Height = 17
          Caption = 'Ben.Dec. 5834/03-GO ou Fomentar'
          DataField = 'CDEC5834'
          DataSource = DM1.Src_Cli
          TabOrder = 10
          ValueChecked = '1'
          ValueUnchecked = '0'
        end
        object CBCB_DEC5825: TDBCheckBox
          Left = 7
          Top = 178
          Width = 218
          Height = 17
          Caption = 'Participa Dec.5825/03-GO'
          DataField = 'CDEC5825'
          DataSource = DM1.Src_Cli
          TabOrder = 11
          ValueChecked = '1'
          ValueUnchecked = '0'
        end
        object DBCB_REVENDA_CP: TDBCheckBox
          Left = 7
          Top = 150
          Width = 225
          Height = 17
          Caption = 'c/ Inscricao Compra p/Consumo Proprio'
          DataField = 'CREVENDA_CP'
          DataSource = DM1.Src_Cli
          TabOrder = 6
          ValueChecked = '1'
          ValueUnchecked = '0'
          OnExit = ALTERARClick
        end
        object DBCB_ICMSST_LIQ: TDBCheckBox
          Left = 7
          Top = 29
          Width = 218
          Height = 17
          Caption = 'ICMS ST Sob Valor Liquido'
          DataField = 'CICMSST_LIQ'
          DataSource = DM1.Src_Cli
          TabOrder = 1
          ValueChecked = '1'
          ValueUnchecked = '0'
        end
        object dbcb_CISENTOIE: TDBCheckBox
          Left = 8
          Top = 195
          Width = 218
          Height = 17
          Caption = 'Isento de Inscri'#231#227'o Estadual'
          DataField = 'CISENTOIE'
          DataSource = DM1.Src_Cli
          TabOrder = 12
          ValueChecked = 'S'
          ValueUnchecked = 'N'
        end
        object RxDBComboBox1: TRxDBComboBox
          Left = 66
          Top = 117
          Width = 163
          Height = 21
          Style = csDropDownList
          DataField = 'CMOTDES'
          DataSource = DM1.Src_Cli
          EnableValues = True
          ItemHeight = 13
          Items.Strings = (
            'Conforme Estado'
            'Sim'
            'N'#227'o')
          TabOrder = 8
          Values.Strings = (
            '0'
            '1'
            '2')
        end
        object DBCheckBox2: TDBCheckBox
          Left = 9
          Top = 212
          Width = 218
          Height = 17
          Caption = 'ISS Retido'
          DataField = 'CISSRETIDO'
          DataSource = DM1.Src_Cli
          TabOrder = 13
          ValueChecked = '1'
          ValueUnchecked = '0'
        end
      end
      object GB_LIMINAR: TGroupBox
        Left = 474
        Top = 23
        Width = 309
        Height = 55
        Caption = 'Liminar para Destaque de ICMS:'
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 2
        object DBEdit89: TDBEdit
          Left = 9
          Top = 15
          Width = 337
          Height = 19
          Ctl3D = False
          DataField = 'CLIM1'
          DataSource = DM1.Src_Cli
          ParentCtl3D = False
          TabOrder = 0
          OnKeyPress = db_razaoKeyPress
        end
        object DBEdit90: TDBEdit
          Left = 9
          Top = 33
          Width = 337
          Height = 19
          Ctl3D = False
          DataField = 'CLIM2'
          DataSource = DM1.Src_Cli
          ParentCtl3D = False
          TabOrder = 1
          OnKeyPress = db_razaoKeyPress
        end
      end
      object DBE_ALIQDEB: TDBEdit
        Left = 723
        Top = 79
        Width = 60
        Height = 19
        Ctl3D = False
        DataField = 'CALIQDEB'
        DataSource = DM1.Src_Cli
        ParentCtl3D = False
        TabOrder = 5
        Visible = False
        OnKeyPress = DBE_CALIQAKeyPress
      end
      object gb_obs: TGroupBox
        Left = 473
        Top = 110
        Width = 317
        Height = 107
        Caption = 'Observa'#231#245'es:'
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 4
        object DBEdit57: TDBEdit
          Left = 3
          Top = 13
          Width = 310
          Height = 19
          Ctl3D = False
          DataField = 'COBS01'
          DataSource = DM1.Src_Cli
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 0
        end
        object DBEdit58: TDBEdit
          Left = 3
          Top = 31
          Width = 310
          Height = 19
          Ctl3D = False
          DataField = 'COBS02'
          DataSource = DM1.Src_Cli
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 1
        end
        object DBEdit59: TDBEdit
          Left = 3
          Top = 48
          Width = 310
          Height = 19
          Ctl3D = False
          DataField = 'COBS03'
          DataSource = DM1.Src_Cli
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 2
        end
        object DBEdit60: TDBEdit
          Left = 3
          Top = 66
          Width = 310
          Height = 19
          Ctl3D = False
          DataField = 'COBS04'
          DataSource = DM1.Src_Cli
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 3
        end
        object DBEdit2: TDBEdit
          Left = 3
          Top = 84
          Width = 310
          Height = 19
          Ctl3D = False
          DataField = 'COBS05'
          DataSource = DM1.Src_Cli
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 4
        end
      end
      object DBEdit8: TDBEdit
        Left = 96
        Top = 0
        Width = 64
        Height = 19
        TabStop = False
        Ctl3D = False
        DataField = 'CCODCLI'
        DataSource = DM1.Src_Cli
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 6
      end
      object DBEdit10: TDBEdit
        Left = 203
        Top = 0
        Width = 244
        Height = 19
        TabStop = False
        Ctl3D = False
        DataField = 'CRAZAO'
        DataSource = DM1.Src_Cli
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 7
        OnKeyPress = db_razaoKeyPress
      end
      object DBEdit12: TDBEdit
        Left = 548
        Top = 0
        Width = 235
        Height = 19
        TabStop = False
        Ctl3D = False
        DataField = 'CDENOM'
        DataSource = DM1.Src_Cli
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 8
        OnKeyPress = db_razaoKeyPress
      end
      object gb_aliquota: TGroupBox
        Left = 245
        Top = 23
        Width = 221
        Height = 206
        Caption = 'Al'#237'q Icms,CBS e IBS'
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 1
        object Label2: TLabel
          Left = 3
          Top = 38
          Width = 10
          Height = 13
          Caption = 'A:'
        end
        object Label5: TLabel
          Left = 3
          Top = 58
          Width = 10
          Height = 13
          Caption = 'B:'
        end
        object Label68: TLabel
          Left = 3
          Top = 76
          Width = 10
          Height = 13
          Caption = 'C:'
        end
        object Label70: TLabel
          Left = 3
          Top = 94
          Width = 11
          Height = 13
          Caption = 'D:'
        end
        object Label79: TLabel
          Left = 3
          Top = 112
          Width = 10
          Height = 13
          Caption = 'E:'
        end
        object Label84: TLabel
          Left = 3
          Top = 130
          Width = 9
          Height = 13
          Caption = 'F:'
        end
        object Label132: TLabel
          Left = 3
          Top = 148
          Width = 11
          Height = 13
          Caption = 'G:'
        end
        object Label134: TLabel
          Left = 4
          Top = 166
          Width = 11
          Height = 13
          Caption = 'H:'
        end
        object Label136: TLabel
          Left = 4
          Top = 184
          Width = 6
          Height = 13
          Caption = 'I:'
        end
        object Label6: TLabel
          Left = 1
          Top = 15
          Width = 19
          Height = 13
          Caption = 'Tab'
        end
        object Label13: TLabel
          Left = 27
          Top = 16
          Width = 33
          Height = 13
          Caption = '% Icms'
        end
        object Label69: TLabel
          Left = 73
          Top = 16
          Width = 32
          Height = 13
          Caption = '% CBS'
        end
        object Label78: TLabel
          Left = 115
          Top = 16
          Width = 45
          Height = 13
          Caption = '% IBS UF'
        end
        object Label80: TLabel
          Left = 164
          Top = 16
          Width = 52
          Height = 13
          Caption = '% IBS Mun'
        end
        object DBE_CALIQA: TDBEdit
          Left = 25
          Top = 36
          Width = 48
          Height = 19
          Ctl3D = False
          DataField = 'CALIQA'
          DataSource = DM1.Src_Cli
          ParentCtl3D = False
          TabOrder = 0
          OnKeyPress = DBE_CALIQAKeyPress
        end
        object DBE_CALIQB: TDBEdit
          Left = 25
          Top = 54
          Width = 48
          Height = 19
          Ctl3D = False
          DataField = 'CALIQB'
          DataSource = DM1.Src_Cli
          ParentCtl3D = False
          TabOrder = 1
          OnKeyPress = DBE_CALIQAKeyPress
        end
        object DBE_CALIQC: TDBEdit
          Left = 25
          Top = 72
          Width = 48
          Height = 19
          Ctl3D = False
          DataField = 'CALIQC'
          DataSource = DM1.Src_Cli
          ParentCtl3D = False
          TabOrder = 2
          OnKeyPress = DBE_CALIQAKeyPress
        end
        object DBE_CALIQD: TDBEdit
          Left = 25
          Top = 90
          Width = 48
          Height = 19
          Ctl3D = False
          DataField = 'CALIQD'
          DataSource = DM1.Src_Cli
          ParentCtl3D = False
          TabOrder = 3
          OnKeyPress = DBE_CALIQAKeyPress
        end
        object DBE_CALIQE: TDBEdit
          Left = 25
          Top = 108
          Width = 48
          Height = 19
          Ctl3D = False
          DataField = 'CALIQE'
          DataSource = DM1.Src_Cli
          ParentCtl3D = False
          TabOrder = 4
          OnKeyPress = DBE_CALIQAKeyPress
        end
        object DBE_CALIQF: TDBEdit
          Left = 25
          Top = 126
          Width = 48
          Height = 19
          Ctl3D = False
          DataField = 'CALIQF'
          DataSource = DM1.Src_Cli
          ParentCtl3D = False
          TabOrder = 5
          OnKeyPress = DBE_CALIQAKeyPress
        end
        object DBE_CALIQG: TDBEdit
          Left = 25
          Top = 144
          Width = 48
          Height = 19
          Ctl3D = False
          DataField = 'CALIQG'
          DataSource = DM1.Src_Cli
          ParentCtl3D = False
          TabOrder = 6
          OnKeyPress = DBE_CALIQAKeyPress
        end
        object DBE_CALIQH: TDBEdit
          Left = 25
          Top = 162
          Width = 48
          Height = 19
          Ctl3D = False
          DataField = 'CALIQH'
          DataSource = DM1.Src_Cli
          ParentCtl3D = False
          TabOrder = 7
          OnKeyPress = DBE_CALIQAKeyPress
        end
        object DBE_CALIQI: TDBEdit
          Left = 25
          Top = 180
          Width = 48
          Height = 19
          Ctl3D = False
          DataField = 'CALIQI'
          DataSource = DM1.Src_Cli
          ParentCtl3D = False
          TabOrder = 8
          OnKeyPress = DBE_CALIQAKeyPress
        end
        object DBE_CCBS_ALIQA: TDBEdit
          Left = 69
          Top = 36
          Width = 48
          Height = 19
          Ctl3D = False
          DataField = 'CCBS_ALIQA'
          DataSource = DM1.Src_Cli
          ParentCtl3D = False
          TabOrder = 9
          OnKeyPress = DBE_CALIQAKeyPress
        end
        object DBE_CCBS_ALIQB: TDBEdit
          Left = 69
          Top = 54
          Width = 48
          Height = 19
          Ctl3D = False
          DataField = 'CCBS_ALIQB'
          DataSource = DM1.Src_Cli
          ParentCtl3D = False
          TabOrder = 10
          OnKeyPress = DBE_CALIQAKeyPress
        end
        object DBE_CCBS_ALIQC: TDBEdit
          Left = 69
          Top = 72
          Width = 48
          Height = 19
          Ctl3D = False
          DataField = 'CCBS_ALIQC'
          DataSource = DM1.Src_Cli
          ParentCtl3D = False
          TabOrder = 11
          OnKeyPress = DBE_CALIQAKeyPress
        end
        object DBE_CCBS_ALIQD: TDBEdit
          Left = 69
          Top = 90
          Width = 48
          Height = 19
          Ctl3D = False
          DataField = 'CCBS_ALIQD'
          DataSource = DM1.Src_Cli
          ParentCtl3D = False
          TabOrder = 12
          OnKeyPress = DBE_CALIQAKeyPress
        end
        object DBE_CCBS_ALIQE: TDBEdit
          Left = 69
          Top = 108
          Width = 48
          Height = 19
          Ctl3D = False
          DataField = 'CCBS_ALIQE'
          DataSource = DM1.Src_Cli
          ParentCtl3D = False
          TabOrder = 13
          OnKeyPress = DBE_CALIQAKeyPress
        end
        object DBE_CCBS_ALIQF: TDBEdit
          Left = 69
          Top = 126
          Width = 48
          Height = 19
          Ctl3D = False
          DataField = 'CCBS_ALIQF'
          DataSource = DM1.Src_Cli
          ParentCtl3D = False
          TabOrder = 14
          OnKeyPress = DBE_CALIQAKeyPress
        end
        object DBE_CCBS_ALIQG: TDBEdit
          Left = 69
          Top = 144
          Width = 48
          Height = 19
          Ctl3D = False
          DataField = 'CCBS_ALIQG'
          DataSource = DM1.Src_Cli
          ParentCtl3D = False
          TabOrder = 15
          OnKeyPress = DBE_CALIQAKeyPress
        end
        object DBE_CCBS_ALIQH: TDBEdit
          Left = 69
          Top = 162
          Width = 48
          Height = 19
          Ctl3D = False
          DataField = 'CCBS_ALIQH'
          DataSource = DM1.Src_Cli
          ParentCtl3D = False
          TabOrder = 16
          OnKeyPress = DBE_CALIQAKeyPress
        end
        object DBE_CCBS_ALIQI: TDBEdit
          Left = 69
          Top = 180
          Width = 48
          Height = 19
          Ctl3D = False
          DataField = 'CCBS_ALIQI'
          DataSource = DM1.Src_Cli
          ParentCtl3D = False
          TabOrder = 17
          OnKeyPress = DBE_CALIQAKeyPress
        end
        object DBE_CIBS_ALIQA: TDBEdit
          Left = 115
          Top = 36
          Width = 48
          Height = 19
          Ctl3D = False
          DataField = 'CIBS_ALIQ_UFA'
          DataSource = DM1.Src_Cli
          ParentCtl3D = False
          TabOrder = 18
          OnKeyPress = DBE_CALIQAKeyPress
        end
        object DBE_CIBS_ALIQB: TDBEdit
          Left = 115
          Top = 54
          Width = 48
          Height = 19
          Ctl3D = False
          DataField = 'CIBS_ALIQ_UFB'
          DataSource = DM1.Src_Cli
          ParentCtl3D = False
          TabOrder = 19
          OnKeyPress = DBE_CALIQAKeyPress
        end
        object DBE_CIBS_ALIQC: TDBEdit
          Left = 115
          Top = 72
          Width = 48
          Height = 19
          Ctl3D = False
          DataField = 'CIBS_ALIQ_UFC'
          DataSource = DM1.Src_Cli
          ParentCtl3D = False
          TabOrder = 20
          OnKeyPress = DBE_CALIQAKeyPress
        end
        object DBE_CIBS_ALIQD: TDBEdit
          Left = 115
          Top = 90
          Width = 48
          Height = 19
          Ctl3D = False
          DataField = 'CIBS_ALIQ_UFD'
          DataSource = DM1.Src_Cli
          ParentCtl3D = False
          TabOrder = 21
          OnKeyPress = DBE_CALIQAKeyPress
        end
        object DBE_CIBS_ALIQE: TDBEdit
          Left = 115
          Top = 108
          Width = 48
          Height = 19
          Ctl3D = False
          DataField = 'CIBS_ALIQ_UFE'
          DataSource = DM1.Src_Cli
          ParentCtl3D = False
          TabOrder = 22
          OnKeyPress = DBE_CALIQAKeyPress
        end
        object DBE_CIBS_ALIQF: TDBEdit
          Left = 115
          Top = 126
          Width = 48
          Height = 19
          Ctl3D = False
          DataField = 'CIBS_ALIQ_UFF'
          DataSource = DM1.Src_Cli
          ParentCtl3D = False
          TabOrder = 23
          OnKeyPress = DBE_CALIQAKeyPress
        end
        object DBE_CIBS_ALIQG: TDBEdit
          Left = 115
          Top = 144
          Width = 48
          Height = 19
          Ctl3D = False
          DataField = 'CIBS_ALIQ_UFG'
          DataSource = DM1.Src_Cli
          ParentCtl3D = False
          TabOrder = 24
          OnKeyPress = DBE_CALIQAKeyPress
        end
        object DBE_CIBS_ALIQH: TDBEdit
          Left = 115
          Top = 162
          Width = 48
          Height = 19
          Ctl3D = False
          DataField = 'CIBS_ALIQ_UFH'
          DataSource = DM1.Src_Cli
          ParentCtl3D = False
          TabOrder = 25
          OnKeyPress = DBE_CALIQAKeyPress
        end
        object DBE_CIBS_ALIQI: TDBEdit
          Left = 115
          Top = 179
          Width = 48
          Height = 19
          Ctl3D = False
          DataField = 'CIBS_ALIQ_UFI'
          DataSource = DM1.Src_Cli
          ParentCtl3D = False
          TabOrder = 26
          OnKeyPress = DBE_CALIQAKeyPress
        end
        object DBE_CIBS_ALIQ_MUNA: TDBEdit
          Left = 162
          Top = 35
          Width = 48
          Height = 19
          Ctl3D = False
          DataField = 'CIBS_ALIQ_MUNA'
          DataSource = DM1.Src_Cli
          ParentCtl3D = False
          TabOrder = 27
          OnKeyPress = DBE_CALIQAKeyPress
        end
        object DBE_CIBS_ALIQ_MUNB: TDBEdit
          Left = 162
          Top = 53
          Width = 48
          Height = 19
          Ctl3D = False
          DataField = 'CIBS_ALIQ_MUNB'
          DataSource = DM1.Src_Cli
          ParentCtl3D = False
          TabOrder = 28
          OnKeyPress = DBE_CALIQAKeyPress
        end
        object Dbe_CIBS_ALIQ_MUNC: TDBEdit
          Left = 162
          Top = 71
          Width = 48
          Height = 19
          Ctl3D = False
          DataField = 'CIBS_ALIQ_MUNC'
          DataSource = DM1.Src_Cli
          ParentCtl3D = False
          TabOrder = 29
          OnKeyPress = DBE_CALIQAKeyPress
        end
        object DBE_CIBS_ALIQ_MUND: TDBEdit
          Left = 162
          Top = 89
          Width = 48
          Height = 19
          Ctl3D = False
          DataField = 'CIBS_ALIQ_MUND'
          DataSource = DM1.Src_Cli
          ParentCtl3D = False
          TabOrder = 30
          OnKeyPress = DBE_CALIQAKeyPress
        end
        object DBE_CIBS_ALIQ_MUNE: TDBEdit
          Left = 162
          Top = 107
          Width = 48
          Height = 19
          Ctl3D = False
          DataField = 'CIBS_ALIQ_MUNE'
          DataSource = DM1.Src_Cli
          ParentCtl3D = False
          TabOrder = 31
          OnKeyPress = DBE_CALIQAKeyPress
        end
        object DBE_CIBS_ALIQ_MUNF: TDBEdit
          Left = 162
          Top = 125
          Width = 48
          Height = 19
          Ctl3D = False
          DataField = 'CIBS_ALIQ_MUNF'
          DataSource = DM1.Src_Cli
          ParentCtl3D = False
          TabOrder = 32
          OnKeyPress = DBE_CALIQAKeyPress
        end
        object DBE_CIBS_ALIQ_MUNG: TDBEdit
          Left = 162
          Top = 143
          Width = 48
          Height = 19
          Ctl3D = False
          DataField = 'CIBS_ALIQ_MUNG'
          DataSource = DM1.Src_Cli
          ParentCtl3D = False
          TabOrder = 33
          OnKeyPress = DBE_CALIQAKeyPress
        end
        object DBE_CIBS_ALIQ_MUNH: TDBEdit
          Left = 162
          Top = 161
          Width = 48
          Height = 19
          Ctl3D = False
          DataField = 'CIBS_ALIQ_MUNH'
          DataSource = DM1.Src_Cli
          ParentCtl3D = False
          TabOrder = 34
          OnKeyPress = DBE_CALIQAKeyPress
        end
        object DBE_CIBS_ALIQ_MUNI: TDBEdit
          Left = 162
          Top = 178
          Width = 48
          Height = 19
          Ctl3D = False
          DataField = 'CIBS_ALIQ_MUNI'
          DataSource = DM1.Src_Cli
          ParentCtl3D = False
          TabOrder = 35
          OnKeyPress = DBE_CALIQAKeyPress
        end
      end
      object DBE_Status: TDBEdit
        Left = 513
        Top = 80
        Width = 29
        Height = 19
        Ctl3D = False
        DataField = 'CSTATUS'
        DataSource = DM1.Src_Cli
        ParentCtl3D = False
        TabOrder = 3
        OnKeyPress = DBE_CALIQAKeyPress
      end
      object DBE_nomestatus: TDBEdit
        Left = 541
        Top = 80
        Width = 113
        Height = 19
        TabStop = False
        Ctl3D = False
        DataField = 'nomestatus'
        DataSource = DM1.Src_Cli
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentColor = True
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 9
      end
      object GB_NFSERVICO: TGroupBox
        Left = 0
        Top = 321
        Width = 791
        Height = 77
        Align = alBottom
        Caption = 'Dados exclusivos para nota fiscal de Servi'#231'o:'
        Color = 13041587
        Ctl3D = False
        ParentColor = False
        ParentCtl3D = False
        TabOrder = 10
        object Label160: TLabel
          Left = 7
          Top = 18
          Width = 92
          Height = 13
          Caption = 'Aliquota de ISSQN:'
        end
        object Label161: TLabel
          Left = 186
          Top = 37
          Width = 83
          Height = 13
          Caption = 'Redutor da Base:'
        end
        object Label162: TLabel
          Left = 14
          Top = 36
          Width = 84
          Height = 13
          Caption = 'Aliquota de INSS:'
        end
        object Label163: TLabel
          Left = 14
          Top = 54
          Width = 84
          Height = 13
          Caption = 'Aliquota de IRRF:'
        end
        object Label164: TLabel
          Left = 186
          Top = 55
          Width = 83
          Height = 13
          Caption = 'Redutor da Base:'
        end
        object db_ISSQN_ALIQ: TDBEdit
          Left = 121
          Top = 15
          Width = 54
          Height = 19
          Ctl3D = False
          DataField = 'CISSQN_ALIQ'
          DataSource = DM1.Src_Cli
          ParentCtl3D = False
          TabOrder = 0
          OnKeyPress = DBE_CALIQAKeyPress
        end
        object db_INSS_Aliq: TDBEdit
          Left = 121
          Top = 33
          Width = 54
          Height = 19
          Ctl3D = False
          DataField = 'CINSS_ALIQ'
          DataSource = DM1.Src_Cli
          ParentCtl3D = False
          TabOrder = 1
          OnKeyPress = DBE_CALIQAKeyPress
        end
        object db_IRRF_Aliq: TDBEdit
          Left = 121
          Top = 51
          Width = 54
          Height = 19
          Ctl3D = False
          DataField = 'CIRRF_ALIQ'
          DataSource = DM1.Src_Cli
          ParentCtl3D = False
          TabOrder = 2
          OnKeyPress = DBE_CALIQAKeyPress
        end
        object db_INSS_Red: TDBEdit
          Left = 295
          Top = 34
          Width = 54
          Height = 19
          Ctl3D = False
          DataField = 'CINSS_RED'
          DataSource = DM1.Src_Cli
          ParentCtl3D = False
          TabOrder = 3
          OnKeyPress = DBE_CALIQAKeyPress
        end
        object db_IRRF_Red: TDBEdit
          Left = 295
          Top = 52
          Width = 54
          Height = 19
          Ctl3D = False
          DataField = 'CIRRF_RED'
          DataSource = DM1.Src_Cli
          ParentCtl3D = False
          TabOrder = 4
          OnKeyPress = DBE_CALIQAKeyPress
        end
      end
      object btn_salva_fiscais: TButton
        Left = 640
        Top = 248
        Width = 121
        Height = 25
        Caption = '&Salva Fiscais Padr'#245'es'
        TabOrder = 11
        OnClick = btn_salva_fiscaisClick
      end
      object RxDBCB_APURA_ICMS: TRxDBComboBox
        Left = 128
        Top = 260
        Width = 255
        Height = 21
        Style = csDropDownList
        DataField = 'CMOTDES'
        DataSource = DM1.Src_Cli
        EnableValues = True
        ItemHeight = 13
        Items.Strings = (
          'N'#227'o Desonera ICMS'
          'T'#225'xi'
          'Deficiente F'#237'sico'
          'Produtor Agropecu'#225'rio'
          'Frotista/Locadora'
          'Diplom'#225'tico/Consular'
          
            'Utilit'#225'rios e Motocicletas da Amaz'#244'nia Ocidental e '#193'reas de Livr' +
            'e Com'#233'rcio (Resolu'#231#227'o 714/88 e 790/94 - CONTRAN e suas altera'#231#245'e' +
            's)'
          'SUFRAMA'
          'Venda a '#211'rg'#227'os P'#250'blicos'
          'Outros NT 2011/004')
        TabOrder = 12
        Values.Strings = (
          '0'
          '1'
          '2'
          '3'
          '4'
          '5'
          '6'
          '7'
          '8'
          '9')
      end
      object DBE_SUFRAMA: TDBEdit
        Left = 669
        Top = 223
        Width = 80
        Height = 19
        Ctl3D = False
        DataField = 'CSUFRAMA'
        DataSource = DM1.Src_Cli
        ParentCtl3D = False
        TabOrder = 13
        OnKeyPress = DBE_CALIQAKeyPress
      end
      object dbrg_supermicro: TRxDBComboBox
        Left = 394
        Top = 289
        Width = 372
        Height = 21
        Style = csDropDownList
        DataField = 'CSUPERMICRO'
        DataSource = DM1.Src_Cli
        EnableValues = True
        ItemHeight = 13
        Items.Strings = (
          'Indefinido'
          'Simples Nacional'
          'Simples Nacional Excesso de sublimite de receita bruta'
          'Regime Normal')
        TabOrder = 14
        Values.Strings = (
          '0'
          '1'
          '2'
          '3')
      end
    end
    object tsPvCli: TTabSheet [5]
      Caption = 'Ped.Eletronico'
      Enabled = False
      ImageIndex = 4
      object Label148: TLabel
        Left = 7
        Top = 0
        Width = 86
        Height = 13
        Caption = 'C'#243'digo do Cliente:'
        FocusControl = DBEdit26
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label149: TLabel
        Left = 165
        Top = 0
        Width = 35
        Height = 13
        Caption = 'Cliente:'
        FocusControl = DBEdit27
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label150: TLabel
        Left = 453
        Top = 1
        Width = 89
        Height = 13
        Caption = 'Nome de Fantasia:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label151: TLabel
        Left = 49
        Top = 23
        Width = 686
        Height = 34
        Caption = 'Disponivel para pedidos eletronicos(Cliente Faz o Pedido)'
        FocusControl = DBEdit26
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -30
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
      end
      object sbInserir: TSpeedButton
        Left = 162
        Top = 343
        Width = 147
        Height = 22
        Cursor = crHandPoint
        Caption = 'Inserir todos do Cadastro'
        OnClick = sbInserirClick
      end
      object Label152: TLabel
        Left = 640
        Top = 155
        Width = 112
        Height = 13
        Caption = 'Senha p/Autenticar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label165: TLabel
        Left = 640
        Top = 67
        Width = 78
        Height = 13
        Caption = 'Pre'#231'o Padr'#227'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label166: TLabel
        Left = 641
        Top = 113
        Width = 106
        Height = 13
        Caption = 'Acrescer no Pre'#231'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBEdit26: TDBEdit
        Left = 96
        Top = 0
        Width = 64
        Height = 19
        TabStop = False
        Ctl3D = False
        DataField = 'CCODCLI'
        DataSource = DM1.Src_Cli
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 5
      end
      object DBEdit27: TDBEdit
        Left = 203
        Top = 0
        Width = 244
        Height = 19
        TabStop = False
        Ctl3D = False
        DataField = 'CRAZAO'
        DataSource = DM1.Src_Cli
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 6
        OnKeyPress = db_razaoKeyPress
      end
      object DBEdit28: TDBEdit
        Left = 547
        Top = 0
        Width = 235
        Height = 19
        TabStop = False
        Ctl3D = False
        DataField = 'CDENOM'
        DataSource = DM1.Src_Cli
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 7
        OnKeyPress = db_razaoKeyPress
      end
      object GroupBox1: TGroupBox
        Left = 6
        Top = 65
        Width = 497
        Height = 279
        Caption = 'Planos de Vendas'
        TabOrder = 0
        object DBNv_cadcli_pv: TDBNavigator
          Left = 2
          Top = 252
          Width = 493
          Height = 25
          DataSource = Src_Cli_PV
          VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbDelete, nbEdit, nbPost, nbCancel]
          Align = alBottom
          TabOrder = 0
        end
        object DBGrid_cadcli_pv: TDBGrid
          Left = 2
          Top = 15
          Width = 493
          Height = 237
          Align = alClient
          DataSource = Src_Cli_PV
          FixedColor = 8454143
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = [fsBold]
          OnExit = DBGrid_cadcli_pvExit
          Columns = <
            item
              Expanded = False
              FieldName = 'CPV_TABPV'
              PickList.Strings = (
                'AP'
                'AV'
                'CV'
                'PO'
                'PP')
              Width = 51
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CPV_CODPV'
              Width = 50
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'nompv'
              Width = 222
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'prazos'
              Visible = True
            end>
        end
      end
      object DBRG_PEDELE_ORI: TDBRadioGroup
        Left = 508
        Top = 68
        Width = 117
        Height = 66
        Caption = 'Faturar Pedidos como:'
        DataField = 'CPEDELE_PAD'
        DataSource = DM1.Src_Cli
        Items.Strings = (
          'Padrao'
          'Orcamento'
          'Venda Normal')
        TabOrder = 8
        Values.Strings = (
          '0'
          '1'
          '2')
      end
      object bbMostrar: TBitBtn
        Left = 546
        Top = 166
        Width = 88
        Height = 25
        Cursor = crHandPoint
        Caption = 'Mostrar Senha'
        TabOrder = 4
        TabStop = False
        OnClick = bbMostrarClick
      end
      object edt_senha: TEdit
        Left = 641
        Top = 170
        Width = 121
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        PasswordChar = '*'
        TabOrder = 2
        Text = 'edt_senha'
      end
      object DBCB_PEDELE_RETBLOQ: TDBCheckBox
        Left = 7
        Top = 362
        Width = 480
        Height = 17
        Caption = 
          'Permitir arquivo de Retorno dos produtos mesmo se o Pedido estiv' +
          'er bloqueado'
        DataField = 'CPEDELE_RETBLOQ'
        DataSource = DM1.Src_Cli
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 9
        ValueChecked = '1'
        ValueUnchecked = '0'
      end
      object DBCb_pedele_pcopad: TDBComboBox
        Left = 639
        Top = 86
        Width = 130
        Height = 21
        DataField = 'CPEDELE_PRECO_PADRAO'
        DataSource = DM1.Src_Cli
        ItemHeight = 13
        Items.Strings = (
          'Pre'#231'o 01'
          'Pre'#231'o 01'
          'Pre'#231'o 02')
        TabOrder = 1
      end
      object dbe_acres: TDBEdit
        Left = 642
        Top = 130
        Width = 123
        Height = 21
        DataField = 'CPEDELE_AJUSTE_PRECO'
        DataSource = DM1.Src_Cli
        TabOrder = 3
      end
      object DBCB_PEDELE_BLOQ: TDBCheckBox
        Left = 512
        Top = 210
        Width = 97
        Height = 17
        Caption = 'Bloqueado'
        DataField = 'CPEDELE_BLOQUEIO'
        DataSource = DM1.Src_Cli
        TabOrder = 10
        ValueChecked = 'S'
        ValueUnchecked = 'N'
      end
      object GroupBox3: TGroupBox
        Left = 509
        Top = 229
        Width = 257
        Height = 114
        Caption = 'Motivo Bloqueio:'
        TabOrder = 11
        object DBMemo2: TDBMemo
          Left = 2
          Top = 15
          Width = 253
          Height = 97
          Align = alClient
          DataField = 'CPEDELE_MOT_BLOQUEIO'
          DataSource = DM1.Src_Cli
          TabOrder = 0
        end
      end
    end
    object tsOticas_Receitas: TTabSheet [6]
      Caption = 'Receitas'
      ImageIndex = 6
      object gb_receitas: TGroupBox
        Left = 0
        Top = 0
        Width = 791
        Height = 311
        Align = alTop
        Caption = 'Dados da Receita'
        Enabled = False
        TabOrder = 0
        object Label153: TLabel
          Left = 15
          Top = 16
          Width = 44
          Height = 16
          Caption = 'Titulo:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label154: TLabel
          Left = 16
          Top = 139
          Width = 90
          Height = 16
          Caption = 'Observa'#231#227'o:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label155: TLabel
          Left = 17
          Top = 219
          Width = 195
          Height = 16
          Caption = 'Pr'#243'xima consulta de '#243'culos:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object DBE_titrec: TDBEdit
          Left = 16
          Top = 32
          Width = 425
          Height = 19
          Ctl3D = False
          DataField = 'IC_OTREC_TITREC'
          DataSource = DM4.Src_Cli_IC
          ParentCtl3D = False
          TabOrder = 0
        end
        object StaticText1: TStaticText
          Left = 96
          Top = 64
          Width = 70
          Height = 22
          Alignment = taCenter
          AutoSize = False
          BorderStyle = sbsSingle
          Color = 8454143
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 1
        end
        object StaticText2: TStaticText
          Left = 165
          Top = 64
          Width = 70
          Height = 22
          Alignment = taCenter
          AutoSize = False
          BorderStyle = sbsSingle
          Caption = 'Esf'#233'rico'
          Color = 8454143
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 2
        end
        object StaticText3: TStaticText
          Left = 234
          Top = 64
          Width = 70
          Height = 22
          Alignment = taCenter
          AutoSize = False
          BorderStyle = sbsSingle
          Caption = 'Cilindro'
          Color = 8454143
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 3
        end
        object StaticText4: TStaticText
          Left = 303
          Top = 64
          Width = 70
          Height = 22
          Alignment = taCenter
          AutoSize = False
          BorderStyle = sbsSingle
          Caption = 'Eixo'
          Color = 8454143
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 4
        end
        object StaticText5: TStaticText
          Left = 372
          Top = 64
          Width = 70
          Height = 22
          Alignment = taCenter
          AutoSize = False
          BorderStyle = sbsSingle
          Caption = 'Prisma'
          Color = 8454143
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 5
        end
        object StaticText6: TStaticText
          Left = 96
          Top = 85
          Width = 70
          Height = 22
          Alignment = taCenter
          AutoSize = False
          BorderStyle = sbsSingle
          Caption = 'OD'
          Color = 8454016
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 6
        end
        object DBE_esfod: TDBEdit
          Left = 165
          Top = 85
          Width = 70
          Height = 22
          AutoSize = False
          Color = 8454016
          Ctl3D = False
          DataField = 'IC_OTREC_ESFOD'
          DataSource = DM4.Src_Cli_IC
          ParentCtl3D = False
          TabOrder = 7
        end
        object DBE_cilod: TDBEdit
          Left = 234
          Top = 85
          Width = 70
          Height = 22
          AutoSize = False
          Color = 8454016
          Ctl3D = False
          DataField = 'IC_OTREC_CILOD'
          DataSource = DM4.Src_Cli_IC
          ParentCtl3D = False
          TabOrder = 8
        end
        object DBE_Eixood: TDBEdit
          Left = 303
          Top = 85
          Width = 70
          Height = 22
          AutoSize = False
          Color = 8454016
          Ctl3D = False
          DataField = 'IC_OTREC_EIXOOD'
          DataSource = DM4.Src_Cli_IC
          ParentCtl3D = False
          TabOrder = 9
        end
        object DBE_prismaod: TDBEdit
          Left = 372
          Top = 85
          Width = 70
          Height = 22
          AutoSize = False
          Color = 8454016
          Ctl3D = False
          DataField = 'IC_OTREC_PRISMAOD'
          DataSource = DM4.Src_Cli_IC
          ParentCtl3D = False
          TabOrder = 10
        end
        object StaticText7: TStaticText
          Left = 96
          Top = 106
          Width = 70
          Height = 22
          Alignment = taCenter
          AutoSize = False
          BorderStyle = sbsSingle
          Caption = 'OE'
          Color = 8421631
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 11
        end
        object DBE_esfoe: TDBEdit
          Left = 165
          Top = 106
          Width = 70
          Height = 22
          AutoSize = False
          Color = 8421631
          Ctl3D = False
          DataField = 'IC_OTREC_ESFOE'
          DataSource = DM4.Src_Cli_IC
          ParentCtl3D = False
          TabOrder = 12
        end
        object DBE_ciloe: TDBEdit
          Left = 234
          Top = 106
          Width = 70
          Height = 22
          AutoSize = False
          Color = 8421631
          Ctl3D = False
          DataField = 'IC_OTREC_CILOE'
          DataSource = DM4.Src_Cli_IC
          ParentCtl3D = False
          TabOrder = 13
        end
        object DBE_Eixooe: TDBEdit
          Left = 303
          Top = 106
          Width = 70
          Height = 22
          AutoSize = False
          Color = 8421631
          Ctl3D = False
          DataField = 'IC_OTREC_EIXOOE'
          DataSource = DM4.Src_Cli_IC
          ParentCtl3D = False
          TabOrder = 14
        end
        object DBE_prismaoe: TDBEdit
          Left = 372
          Top = 106
          Width = 70
          Height = 22
          AutoSize = False
          Color = 8421631
          Ctl3D = False
          DataField = 'IC_OTREC_PRISMAOE'
          DataSource = DM4.Src_Cli_IC
          ParentCtl3D = False
          TabOrder = 15
        end
        object StaticText8: TStaticText
          Left = 559
          Top = 30
          Width = 70
          Height = 22
          Alignment = taCenter
          AutoSize = False
          BorderStyle = sbsSingle
          Caption = 'Adi'#231#227'o'
          Color = 8454143
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 16
        end
        object StaticText9: TStaticText
          Left = 628
          Top = 30
          Width = 70
          Height = 22
          Alignment = taCenter
          AutoSize = False
          BorderStyle = sbsSingle
          Caption = 'DP / DNP'
          Color = 8454143
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 17
        end
        object DBE_adicao: TDBEdit
          Left = 559
          Top = 51
          Width = 70
          Height = 22
          AutoSize = False
          Color = 8454016
          Ctl3D = False
          DataField = 'IC_OTREC_ADICAO'
          DataSource = DM4.Src_Cli_IC
          ParentCtl3D = False
          TabOrder = 18
        end
        object DBE_dpdnp: TDBEdit
          Left = 628
          Top = 51
          Width = 70
          Height = 22
          AutoSize = False
          Color = 8454016
          Ctl3D = False
          DataField = 'IC_OTREC_DPDNP'
          DataSource = DM4.Src_Cli_IC
          ParentCtl3D = False
          TabOrder = 19
        end
        object DBE_dtpcons: TDBEdit
          Left = 216
          Top = 216
          Width = 124
          Height = 22
          AutoSize = False
          Ctl3D = False
          DataField = 'IC_OTREC_DTPCONS'
          DataSource = DM4.Src_Cli_IC
          ParentCtl3D = False
          TabOrder = 21
        end
        object memo_obs: TDBMemo
          Left = 17
          Top = 160
          Width = 423
          Height = 53
          Ctl3D = False
          DataField = 'IC_OTREC_OBS'
          DataSource = DM4.Src_Cli_IC
          ParentCtl3D = False
          TabOrder = 20
        end
        object GroupBox4: TGroupBox
          Left = 2
          Top = 246
          Width = 787
          Height = 63
          Align = alBottom
          Caption = 'Dados Sobre a lente:'
          TabOrder = 22
          object Label156: TLabel
            Left = 15
            Top = 16
            Width = 85
            Height = 16
            Caption = 'Laborat'#243'rio:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label157: TLabel
            Left = 61
            Top = 34
            Width = 37
            Height = 16
            Caption = 'Tipo:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object DBE_OTLENTES_LABOR: TDBEdit
            Left = 102
            Top = 17
            Width = 425
            Height = 19
            Ctl3D = False
            DataField = 'IC_OTLENTE_LABOR'
            DataSource = DM4.Src_Cli_IC
            ParentCtl3D = False
            TabOrder = 0
          end
          object DBE_OTLENTES_TIPO: TDBEdit
            Left = 102
            Top = 35
            Width = 425
            Height = 19
            Ctl3D = False
            DataField = 'IC_OTLENTE_TIPOR'
            DataSource = DM4.Src_Cli_IC
            ParentCtl3D = False
            TabOrder = 1
          end
        end
      end
      object bbImprimir_receita: TBitBtn
        Left = 286
        Top = 328
        Width = 209
        Height = 25
        Cursor = crHandPoint
        Caption = 'Imprimir Rerceita'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
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
    object tab_Fluxo: TTabSheet [7]
      Caption = 'Fluxo de Caixa'
      Enabled = False
      ImageIndex = 6
      object rg_cxcred: TGroupBox
        Left = 0
        Top = 320
        Width = 791
        Height = 78
        Align = alBottom
        Caption = 'Configura'#231#245'es do caixa Recebimentos'
        TabOrder = 0
        object Label32: TLabel
          Left = 18
          Top = 15
          Width = 70
          Height = 13
          Caption = 'Departamento:'
        end
        object Label33: TLabel
          Left = 8
          Top = 36
          Width = 79
          Height = 13
          Caption = 'Centro de Custo:'
        end
        object Label34: TLabel
          Left = 5
          Top = 57
          Width = 82
          Height = 13
          Caption = 'Desc.movimento:'
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
        object DBE_CodDepC: TDBEdit
          Left = 92
          Top = 15
          Width = 68
          Height = 21
          Ctl3D = True
          DataField = 'CCODDEPC'
          DataSource = DM1.Src_Cli
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 0
          OnExit = DBE_CodDepCExit
          OnKeyDown = DBE_CodDepCKeyDown
        end
        object DBE_CodCCuC: TDBEdit
          Left = 92
          Top = 35
          Width = 68
          Height = 21
          Ctl3D = True
          DataField = 'CCODCCC'
          DataSource = DM1.Src_Cli
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 2
          OnExit = DBE_CodCCuCExit
          OnKeyDown = DBE_CodCCuCKeyDown
        end
        object DBE_DescMvC: TDBEdit
          Left = 92
          Top = 54
          Width = 420
          Height = 21
          Ctl3D = True
          DataField = 'CDESCMVC'
          DataSource = DM1.Src_Cli
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 5
        end
        object DBCB_NOMDEPC: TDBComboBox
          Left = 161
          Top = 15
          Width = 351
          Height = 21
          AutoDropDown = True
          BevelKind = bkSoft
          Color = 13565951
          Ctl3D = True
          DataField = 'CNOMDEPC'
          DataSource = DM1.Src_Cli
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
          OnEnter = DBCB_NOMDEPCEnter
          OnExit = DBCB_NOMDEPCExit
          OnKeyDown = DBE_CodDepCKeyDown
        end
        object DBCB_NOMCCUC: TDBComboBox
          Left = 161
          Top = 35
          Width = 321
          Height = 21
          AutoDropDown = True
          BevelKind = bkSoft
          Color = 13565951
          Ctl3D = True
          DataField = 'CNOMCCC'
          DataSource = DM1.Src_Cli
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ItemHeight = 13
          ParentCtl3D = False
          ParentFont = False
          Sorted = True
          TabOrder = 3
          OnEnter = DBCB_NOMCCUCEnter
          OnExit = DBCB_NOMCCUCExit
          OnKeyDown = DBE_CodCCuCKeyDown
        end
        object FNATDCC: TDBEdit
          Left = 481
          Top = 35
          Width = 31
          Height = 21
          Color = 16760799
          Ctl3D = True
          DataField = 'CNATDCC'
          DataSource = DM1.Src_Cli
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 4
        end
      end
      object gb_cxpag: TGroupBox
        Left = 0
        Top = 237
        Width = 791
        Height = 83
        Align = alBottom
        Caption = 'Configura'#231#245'es do caixa para Pagamentos'
        TabOrder = 1
        object Label21: TLabel
          Left = 8
          Top = 37
          Width = 79
          Height = 13
          Caption = 'Centro de Custo:'
        end
        object Label23: TLabel
          Left = 18
          Top = 15
          Width = 70
          Height = 13
          Caption = 'Departamento:'
        end
        object Label24: TLabel
          Left = 5
          Top = 55
          Width = 82
          Height = 13
          Caption = 'Desc.movimento:'
        end
        object lbl_obs: TLabel
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
        object DBE_CodDepD: TDBEdit
          Left = 92
          Top = 13
          Width = 68
          Height = 21
          Ctl3D = True
          DataField = 'CCODDEPD'
          DataSource = DM1.Src_Cli
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 0
          OnExit = DBE_CodDepDExit
          OnKeyDown = DBE_CodDepDKeyDown
        end
        object DBE_CodCCuD: TDBEdit
          Left = 92
          Top = 35
          Width = 68
          Height = 21
          Ctl3D = True
          DataField = 'CCODCCD'
          DataSource = DM1.Src_Cli
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 2
          OnExit = DBE_CodCCuDExit
          OnKeyDown = DBE_CodCCuDKeyDown
        end
        object DBE_DescMovD: TDBEdit
          Left = 92
          Top = 56
          Width = 420
          Height = 21
          Ctl3D = True
          DataField = 'CDESCMVD'
          DataSource = DM1.Src_Cli
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 5
        end
        object DBCB_NOMDEPD: TDBComboBox
          Left = 161
          Top = 13
          Width = 351
          Height = 21
          AutoDropDown = True
          BevelKind = bkSoft
          Color = 13565951
          Ctl3D = True
          DataField = 'CNOMDEPD'
          DataSource = DM1.Src_Cli
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
          OnEnter = DBCB_NOMDEPDEnter
          OnExit = DBCB_NOMDEPDExit
          OnKeyDown = DBE_CodDepDKeyDown
        end
        object DBCB_NOMCCUD: TDBComboBox
          Left = 161
          Top = 35
          Width = 320
          Height = 21
          AutoDropDown = True
          BevelKind = bkSoft
          Color = 13565951
          Ctl3D = True
          DataField = 'CNOMCCD'
          DataSource = DM1.Src_Cli
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ItemHeight = 13
          ParentCtl3D = False
          ParentFont = False
          Sorted = True
          TabOrder = 3
          OnEnter = DBCB_NOMCCUDEnter
          OnExit = DBCB_NOMCCUDExit
          OnKeyDown = DBE_CodCCuDKeyDown
        end
        object DBEdit19: TDBEdit
          Left = 481
          Top = 35
          Width = 31
          Height = 21
          Color = 16760799
          Ctl3D = True
          DataField = 'CNATDCD'
          DataSource = DM1.Src_Cli
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 4
        end
      end
    end
    inherited tsTab: TTabSheet
      ImageIndex = 7
      inherited DBGrid1: TDBGrid
        Width = 791
        Height = 358
        DataSource = Src_Cli
        TitleFont.Style = []
        OnDrawColumnCell = DBGrid1DrawColumnCell
        OnDblClick = DBGrid1DblClick
        Columns = <
          item
            Expanded = False
            FieldName = 'CCODCLI'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CRAZAO'
            Width = 302
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CCNPJ'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CDENOM'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CCIDADE'
            Width = 154
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CUF'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CFONE01'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CFONE02'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CFONE03'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'dtcad'
            Title.Caption = 'Data Cad'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CCPF'
            Width = 120
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CIE'
            Visible = True
          end>
      end
      object GroupBox6: TGroupBox
        Left = 0
        Top = 358
        Width = 791
        Height = 40
        Align = alBottom
        Caption = 'Informacoes'
        TabOrder = 1
        object st_bloq_temp: TStaticText
          Left = 12
          Top = 18
          Width = 120
          Height = 17
          Alignment = taCenter
          AutoSize = False
          BorderStyle = sbsSunken
          Caption = 'Bloqueado Temp'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clLime
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
        end
        object st_outros_bloqueios: TStaticText
          Left = 137
          Top = 18
          Width = 120
          Height = 17
          Alignment = taCenter
          AutoSize = False
          BorderStyle = sbsSunken
          Caption = 'Outros Bloqueios'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
        end
        object st_cad_vencido: TStaticText
          Left = 563
          Top = 17
          Width = 150
          Height = 17
          Alignment = taCenter
          AutoSize = False
          BorderStyle = sbsSunken
          Caption = 'Cadastro Vencido'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
        end
        object st_alvara_municipal: TStaticText
          Left = 258
          Top = 18
          Width = 302
          Height = 17
          Alignment = taCenter
          AutoSize = False
          BorderStyle = sbsSunken
          Caption = 'Alvaras e/ou Certificados Tenicos Vencidos ou a Vencer'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
        end
      end
    end
    object TsBloqueios: TTabSheet
      Caption = 'Bloqueios Diversos'
      ImageIndex = 9
      object cb_FoneObrigatorio: TCheckBox
        Left = 8
        Top = 0
        Width = 117
        Height = 17
        Caption = 'Telefone Obrigatorio'
        TabOrder = 0
        OnClick = cb_FoneObrigatorioClick
      end
      object cb_EmailObrigatorio: TCheckBox
        Left = 8
        Top = 15
        Width = 105
        Height = 17
        Caption = 'E-mail Obrigatorio'
        TabOrder = 1
        OnClick = cb_EmailObrigatorioClick
      end
      object cb_ContatoObrigatorio: TCheckBox
        Left = 8
        Top = 30
        Width = 113
        Height = 17
        Caption = 'Contato Obrigatorio'
        TabOrder = 2
        OnClick = cb_ContatoObrigatorioClick
      end
      object CB_VALCCDEP: TCheckBox
        Left = 8
        Top = 94
        Width = 313
        Height = 17
        Caption = 'Validar Centro de Custo e Departamento'
        TabOrder = 3
        OnClick = CB_VALCCDEPClick
      end
    end
    object tsImagemDocumentos: TTabSheet
      Caption = 'Imagem/Documentos'
      ImageIndex = 10
      object GroupBox7: TGroupBox
        Left = 553
        Top = 0
        Width = 238
        Height = 398
        Align = alRight
        Caption = 'Documento Digitalizado:'
        TabOrder = 0
        object DBGrid3: TDBGrid
          Left = 2
          Top = 15
          Width = 234
          Height = 347
          Align = alClient
          DataSource = Src_Dap_imagem
          ReadOnly = True
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          OnDblClick = DBGrid3DblClick
          OnKeyDown = DBGrid3KeyDown
          Columns = <
            item
              Expanded = False
              FieldName = 'CI_OBS'
              Width = 190
              Visible = True
            end>
        end
        object Panel5: TPanel
          Left = 2
          Top = 362
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
    object tsConfiguracaoMaster: TTabSheet
      Caption = 'Configura'#231#227'o Master'
      ImageIndex = 11
      object Label169: TLabel
        Left = 2
        Top = 24
        Width = 160
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Status Padr'#227'o:'
      end
      object Label174: TLabel
        Left = 2
        Top = 48
        Width = 160
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Bloqueio Emprestimo Padrao:'
      end
      object lbl_alvara_municipal: TLabel
        Left = 139
        Top = 169
        Width = 331
        Height = 13
        Caption = 
          'Alalvaras e/ou certificado Tecnico vencido ou proximo ao vencime' +
          'nto'
      end
      object cb_statuspadrao: TComboBox
        Left = 175
        Top = 24
        Width = 145
        Height = 21
        ItemHeight = 13
        TabOrder = 0
        Text = 'cb_statuspadrao'
        OnExit = cb_statuspadraoExit
        Items.Strings = (
          '0-Ativo'
          '1-Bloq.Temp'
          '2-Bloq.Def.'
          '3-Novo'
          '8-Observa'#231#227'o')
      end
      object clb_CBLQEMP: TComboBox
        Left = 175
        Top = 48
        Width = 145
        Height = 21
        ItemHeight = 13
        ItemIndex = 0
        TabOrder = 1
        Text = '0-Normal'
        OnExit = clb_CBLQEMPExit
        Items.Strings = (
          '0-Normal'
          '1-Bloqueado')
      end
      object CB_CBLOQVDAPRZ: TCheckBox
        Left = 1
        Top = 70
        Width = 185
        Height = 17
        Alignment = taLeftJustify
        Caption = 'Bloquear Venda a Prazo Padr'#227'o:'
        TabOrder = 2
        OnExit = CB_CBLOQVDAPRZExit
      end
      object btn_alvara_municipal: TBitBtn
        Left = 35
        Top = 165
        Width = 97
        Height = 25
        Hint = 'Selecionar a Cor Desejada'
        Caption = 'Selecionar'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 3
        OnClick = btn_alvara_municipalClick
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
      end
    end
    object tsCriptografia: TTabSheet
      Caption = 'Criptografia teste'
      ImageIndex = 12
      object edt_senha_cryp: TEdit
        Left = 16
        Top = 30
        Width = 121
        Height = 21
        TabOrder = 0
        Text = 'admin'
      end
      object bbCriptografar: TBitBtn
        Left = 6
        Top = 53
        Width = 135
        Height = 24
        Caption = 'Criptografar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        OnClick = bbCriptografarClick
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
      object bbValidar: TBitBtn
        Left = 7
        Top = 78
        Width = 135
        Height = 24
        Caption = 'Validar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
        OnClick = bbValidarClick
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
      object edt_resultado: TEdit
        Left = 147
        Top = 51
        Width = 502
        Height = 21
        TabOrder = 3
        Text = 'admin'
      end
      object edt_validacao: TEdit
        Left = 148
        Top = 78
        Width = 502
        Height = 21
        TabOrder = 4
      end
    end
  end
  inherited MANUT: TGroupBox
    Top = 539
    Width = 790
    Height = 51
    Align = alNone
    Visible = False
    inherited INCLUIR: TBitBtn
      Width = 110
    end
    inherited ALTERAR: TBitBtn
      Left = 114
      Width = 110
    end
    inherited EXCLUIR: TBitBtn
      Left = 224
      Width = 110
    end
    inherited GRAVAR: TBitBtn
      Left = 334
      Width = 110
      OnClick = GRAVARClick
    end
    inherited CANCELAR: TBitBtn
      Left = 444
      Width = 110
    end
    object bbDevCli: TBitBtn
      Left = 555
      Top = 12
      Width = 110
      Height = 20
      Caption = '&Devolu'#231#245'es'
      TabOrder = 5
      OnClick = bbDevCliClick
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
    object bbConsFiliais: TBitBtn
      Left = 554
      Top = 31
      Width = 110
      Height = 20
      Caption = 'Consulta Filiais'
      TabOrder = 6
      OnClick = bbConsFiliaisClick
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
    object bbExpFor: TBitBtn
      Left = 666
      Top = 30
      Width = 110
      Height = 19
      Caption = 'Exportar p/Fornec'
      TabOrder = 7
      OnClick = bbExpForClick
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
  inherited GroupBox2: TGroupBox
    Top = 590
    Width = 790
    Align = alNone
    Visible = False
    inherited DBNavigator1: TDBNavigator
      Top = 13
      Width = 436
      TabOrder = 0
    end
    inherited SAIR: TBitBtn
      Left = 665
      Top = 29
      Width = 110
      Height = 21
      TabOrder = 4
      Layout = blGlyphLeft
    end
    object BB_SOBRE: TBitBtn
      Left = 444
      Top = 13
      Width = 110
      Height = 37
      Caption = '&Sobre o Cliente'
      TabOrder = 1
      OnClick = BB_SOBREClick
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
    object bbAniversario: TBitBtn
      Left = 554
      Top = 12
      Width = 110
      Height = 19
      Hint = 'Mostra os Aniversariantes'
      Caption = '&Aniversariantes'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      OnClick = bbAniversarioClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0033BBBBBBBBBB
        BB33337777777777777F33BB00BBBBBBBB33337F77333333F37F33BB0BBBBBB0
        BB33337F73F33337FF7F33BBB0BBBB000B33337F37FF3377737F33BBB00BB00B
        BB33337F377F3773337F33BBBB0B00BBBB33337F337F7733337F33BBBB000BBB
        BB33337F33777F33337F33EEEE000EEEEE33337F3F777FFF337F33EE0E80000E
        EE33337F73F77773337F33EEE0800EEEEE33337F37377F33337F33EEEE000EEE
        EE33337F33777F33337F33EEEEE00EEEEE33337F33377FF3337F33EEEEEE00EE
        EE33337F333377F3337F33EEEEEE00EEEE33337F33337733337F33EEEEEEEEEE
        EE33337FFFFFFFFFFF7F33EEEEEEEEEEEE333377777777777773}
      NumGlyphs = 2
    end
    object bbBloqueios: TBitBtn
      Left = 554
      Top = 31
      Width = 110
      Height = 19
      Hint = 'Aniversariantes'
      Caption = '&Bloqueios'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      OnClick = bbBloqueiosClick
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
    object bbOutObs: TBitBtn
      Left = 666
      Top = 6
      Width = 107
      Height = 24
      Hint = 'Vai para a Tela de Outras Informa'#231#245'es'
      Caption = 'Outras Informa'#231#245'es'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 5
      OnClick = bbOutObsClick
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
  end
  object ToolBar1: TToolBar
    Left = 0
    Top = 0
    Width = 799
    Height = 30
    ButtonHeight = 26
    Caption = 'ToolBar1'
    TabOrder = 4
    object btn_incluir: TBitBtn
      Left = 0
      Top = 2
      Width = 95
      Height = 26
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
      Left = 95
      Top = 2
      Width = 95
      Height = 26
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
      Left = 190
      Top = 2
      Width = 95
      Height = 26
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
    object btn_gravar: TBitBtn
      Left = 285
      Top = 2
      Width = 95
      Height = 26
      Cursor = crHandPoint
      Hint = 'Grava o registro atual'
      HelpType = htKeyword
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
    object btn_cancelar: TBitBtn
      Left = 380
      Top = 2
      Width = 95
      Height = 26
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
    object DBNavigator2: TDBNavigator
      Left = 475
      Top = 2
      Width = 220
      Height = 26
      Cursor = crHandPoint
      Hint = 'Navega entre os registros selecionados'
      DataSource = DM1.Src_Cli
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
      Left = 695
      Top = 2
      Width = 95
      Height = 26
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
  object Panel2: TPanel
    Left = 0
    Top = 497
    Width = 799
    Height = 47
    Align = alBottom
    BevelInner = bvLowered
    TabOrder = 5
    object btn_sobre: TBitBtn
      Left = 2
      Top = 3
      Width = 110
      Height = 39
      Cursor = crHandPoint
      Caption = '&Sobre o Cliente'
      TabOrder = 0
      OnClick = BB_SOBREClick
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
    object btn_devolucao: TBitBtn
      Left = 133
      Top = 3
      Width = 96
      Height = 39
      Cursor = crHandPoint
      Caption = '&Devolu'#231#245'es'
      TabOrder = 1
      Visible = False
      OnClick = bbDevCliClick
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
    object btn_situacao: TBitBtn
      Left = 328
      Top = 3
      Width = 128
      Height = 39
      Cursor = crHandPoint
      Caption = 'Situa'#231#227'o de Credito'
      TabOrder = 2
      OnClick = bbSitCredClick
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
    object btn_exporta: TBitBtn
      Left = 112
      Top = 3
      Width = 117
      Height = 39
      Cursor = crHandPoint
      Caption = 'Exportar p/Fornec'
      TabOrder = 3
      OnClick = bbExpForClick
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
      Layout = blGlyphTop
      NumGlyphs = 2
    end
    object btn_aniversariante: TBitBtn
      Left = 328
      Top = 3
      Width = 110
      Height = 39
      Cursor = crHandPoint
      Hint = 'Mostra os Aniversariantes'
      Caption = '&Aniversariantes'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 4
      Visible = False
      OnClick = bbAniversarioClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0033BBBBBBBBBB
        BB33337777777777777F33BB00BBBBBBBB33337F77333333F37F33BB0BBBBBB0
        BB33337F73F33337FF7F33BBB0BBBB000B33337F37FF3377737F33BBB00BB00B
        BB33337F377F3773337F33BBBB0B00BBBB33337F337F7733337F33BBBB000BBB
        BB33337F33777F33337F33EEEE000EEEEE33337F3F777FFF337F33EE0E80000E
        EE33337F73F77773337F33EEE0800EEEEE33337F37377F33337F33EEEE000EEE
        EE33337F33777F33337F33EEEEE00EEEEE33337F33377FF3337F33EEEEEE00EE
        EE33337F333377F3337F33EEEEEE00EEEE33337F33337733337F33EEEEEEEEEE
        EE33337FFFFFFFFFFF7F33EEEEEEEEEEEE333377777777777773}
      Layout = blGlyphTop
      NumGlyphs = 2
    end
    object bbDebitos: TBitBtn
      Left = 566
      Top = 3
      Width = 112
      Height = 39
      Cursor = crHandPoint
      Hint = 'Click aqui para ver os debitos deste Cliente'
      Caption = 'D'#233'bitos'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 5
      Visible = False
      OnClick = bbDebitosClick
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
    object bbConsSefaz: TBitBtn
      Left = 678
      Top = 3
      Width = 105
      Height = 22
      Cursor = crHandPoint
      Hint = 'Click aqui para Consultar dados Junto Ao Sefaz'
      Caption = 'Consulta Sefaz'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 6
      Visible = False
      OnClick = bbConsSefazClick
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
    object bbConsRecFed: TBitBtn
      Left = 678
      Top = 3
      Width = 105
      Height = 39
      Cursor = crHandPoint
      Hint = 'Click aqui para Consultar dados Junto a Receita Federal'
      Caption = 'Consulta CNPJ'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 7
      OnClick = bbConsRecFedClick
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
    object bbPrecoExclusivo: TBitBtn
      Left = 330
      Top = 3
      Width = 112
      Height = 39
      Cursor = crHandPoint
      Hint = 'Click aqui para acessar os precos exclusivos por cliente'
      Caption = 'Pre'#231'os Exclusivos'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 8
      OnClick = bbPrecoExclusivoClick
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
    object bbBlqGruPro: TBitBtn
      Left = 455
      Top = 3
      Width = 146
      Height = 39
      Cursor = crHandPoint
      Caption = 'Bloquear Grupo de Produtos'
      TabOrder = 9
      OnClick = bbBlqGruProClick
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
    object bbSitCred: TBitBtn
      Left = 229
      Top = 3
      Width = 106
      Height = 39
      Caption = 'Situa'#231#227'o Credito'
      TabOrder = 10
      OnClick = bbSitCredClick
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
  end
  object Src_Cli: TDataSource
    DataSet = DM1.Tb_Cli
    OnDataChange = Src_CliDataChange
    Left = 164
    Top = 216
  end
  object Tb_Cli_PV: TQuery
    CachedUpdates = True
    BeforeInsert = Tb_Cli_PVBeforeInsert
    AfterInsert = Tb_Cli_PVAfterInsert
    BeforeEdit = Tb_Cli_PVBeforeEdit
    BeforePost = Tb_Cli_PVBeforePost
    AfterPost = c
    AfterCancel = Tb_Cli_PVAfterCancel
    AfterDelete = c
    OnCalcFields = Tb_Cli_PVCalcFields
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select * from CADCLI_PV')
    UpdateObject = U_Cli_PV
    Left = 489
    Top = 228
    object Tb_Cli_PVCPV_CODEMP: TFloatField
      DisplayLabel = 'Empresa'
      FieldName = 'CPV_CODEMP'
      Origin = 'SG_ASSOC.CADCLI_PV.CPV_CODEMP'
    end
    object Tb_Cli_PVCPV_CODCLI: TFloatField
      DisplayLabel = 'Cod.Cliente'
      FieldName = 'CPV_CODCLI'
      Origin = 'SG_ASSOC.CADCLI_PV.CPV_CODCLI'
    end
    object Tb_Cli_PVCPV_TABPV: TStringField
      DisplayLabel = 'Tab'
      FieldName = 'CPV_TABPV'
      Origin = 'SG_ASSOC.CADCLI_PV.CPV_TABPV'
      Size = 2
    end
    object Tb_Cli_PVCPV_CODPV: TFloatField
      DisplayLabel = 'Codigo'
      FieldName = 'CPV_CODPV'
      Origin = 'SG_ASSOC.CADCLI_PV.CPV_CODPV'
    end
    object Tb_Cli_PVnompv: TStringField
      DisplayLabel = 'Nome do Plano'
      FieldKind = fkCalculated
      FieldName = 'nompv'
      Size = 40
      Calculated = True
    end
    object Tb_Cli_PVprazos: TStringField
      DisplayLabel = 'Prazos'
      FieldKind = fkCalculated
      FieldName = 'prazos'
      Size = 60
      Calculated = True
    end
  end
  object U_Cli_PV: TUpdateSQL
    ModifySQL.Strings = (
      'update CADCLI_PV'
      'set'
      '  CPV_CODEMP = :CPV_CODEMP,'
      '  CPV_CODCLI = :CPV_CODCLI,'
      '  CPV_TABPV = :CPV_TABPV,'
      '  CPV_CODPV = :CPV_CODPV'
      'where'
      '  CPV_CODEMP = :OLD_CPV_CODEMP and'
      '  CPV_CODCLI = :OLD_CPV_CODCLI and'
      '  CPV_TABPV = :OLD_CPV_TABPV and'
      '  CPV_CODPV = :OLD_CPV_CODPV')
    InsertSQL.Strings = (
      'insert into CADCLI_PV'
      '  (CPV_CODEMP, CPV_CODCLI, CPV_TABPV, CPV_CODPV)'
      'values'
      '  (:CPV_CODEMP, :CPV_CODCLI, :CPV_TABPV, :CPV_CODPV)')
    DeleteSQL.Strings = (
      'delete from CADCLI_PV'
      'where'
      '  CPV_CODEMP = :OLD_CPV_CODEMP and'
      '  CPV_CODCLI = :OLD_CPV_CODCLI and'
      '  CPV_TABPV = :OLD_CPV_TABPV and'
      '  CPV_CODPV = :OLD_CPV_CODPV')
    Left = 531
    Top = 221
  end
  object Src_Cli_PV: TDataSource
    DataSet = Tb_Cli_PV
    Left = 560
    Top = 223
  end
  object puContatos: TPopupMenu
    Left = 116
    Top = 207
    object Delete1: TMenuItem
      Caption = '&Delete'
      OnClick = Delete1Click
    end
  end
  object Tb_CR_imagem: TADOQuery
    Connection = DM1_ADO.ADOConnection1
    Parameters = <
      item
        Name = 'CI_ID_CLI'
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      
        'Select cI_ROWID,CI_SEQ,CI_OBS,CI_NOMEoRI,CI_ID_CLI from CADCLI_I' +
        'MAGEM'
      ' where  CI_ID_CLI=:CI_ID_CLI'
      ' order by CI_SEQ '
      '')
    Left = 368
    Top = 55
    object Tb_CR_imagemCI_ROWID: TStringField
      FieldName = 'CI_ROWID'
      Size = 50
    end
    object Tb_CR_imagemCI_SEQ: TFloatField
      FieldName = 'CI_SEQ'
    end
    object Tb_CR_imagemCI_OBS: TStringField
      DisplayLabel = 'Nome da Imagem'
      FieldName = 'CI_OBS'
      Size = 150
    end
    object Tb_CR_imagemCI_NOMEORI: TStringField
      FieldName = 'CI_NOMEORI'
      Size = 254
    end
    object Tb_CR_imagemCI_ID_CLI: TFloatField
      FieldName = 'CI_ID_CLI'
    end
  end
  object Src_Dap_imagem: TDataSource
    DataSet = Tb_CR_imagem
    Left = 180
    Top = 128
  end
  object src_con_cli: TDataSource
    DataSet = DM2.Tb_Con_Cli
    OnDataChange = src_con_cliDataChange
    Left = 500
    Top = 248
  end
  object tb_cli_outros_ender: TQuery
    CachedUpdates = True
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select * from CADCLI_PV')
    UpdateObject = u_cli_outros_ender
    Left = 249
    Top = 372
    object tb_cli_outros_enderCOE_CODEMP: TFloatField
      FieldName = 'COE_CODEMP'
      Origin = 'SG_ASSOC.CADCLI_OUTROS_ENDER.COE_CODEMP'
    end
    object tb_cli_outros_enderCOE_CODCLI: TFloatField
      FieldName = 'COE_CODCLI'
      Origin = 'SG_ASSOC.CADCLI_OUTROS_ENDER.COE_CODCLI'
    end
    object tb_cli_outros_enderCOE_CEP: TStringField
      FieldName = 'COE_CEP'
      Origin = 'SG_ASSOC.CADCLI_OUTROS_ENDER.COE_CEP'
      Size = 9
    end
    object tb_cli_outros_enderCOE_LOG: TStringField
      FieldName = 'COE_LOG'
      Origin = 'SG_ASSOC.CADCLI_OUTROS_ENDER.COE_LOG'
      Size = 60
    end
    object tb_cli_outros_enderCOE_ENDER_NUM: TStringField
      FieldName = 'COE_ENDER_NUM'
      Origin = 'SG_ASSOC.CADCLI_OUTROS_ENDER.COE_ENDER_NUM'
      Size = 10
    end
    object tb_cli_outros_enderCOE_COMPL: TStringField
      FieldName = 'COE_COMPL'
      Origin = 'SG_ASSOC.CADCLI_OUTROS_ENDER.COE_COMPL'
      Size = 50
    end
    object tb_cli_outros_enderCOE_CODBAI: TFloatField
      FieldName = 'COE_CODBAI'
      Origin = 'SG_ASSOC.CADCLI_OUTROS_ENDER.COE_CODBAI'
    end
    object tb_cli_outros_enderCOE_BAIRRO: TStringField
      FieldName = 'COE_BAIRRO'
      Origin = 'SG_ASSOC.CADCLI_OUTROS_ENDER.COE_BAIRRO'
      Size = 50
    end
    object tb_cli_outros_enderCOE_CODLOC: TFloatField
      FieldName = 'COE_CODLOC'
      Origin = 'SG_ASSOC.CADCLI_OUTROS_ENDER.COE_CODLOC'
    end
    object tb_cli_outros_enderCOE_CIDADE: TStringField
      FieldName = 'COE_CIDADE'
      Origin = 'SG_ASSOC.CADCLI_OUTROS_ENDER.COE_CIDADE'
      Size = 50
    end
    object tb_cli_outros_enderCOE_UF: TStringField
      FieldName = 'COE_UF'
      Origin = 'SG_ASSOC.CADCLI_OUTROS_ENDER.COE_UF'
      Size = 2
    end
    object tb_cli_outros_enderCOE_PONTO_REF: TStringField
      FieldName = 'COE_PONTO_REF'
      Origin = 'SG_ASSOC.CADCLI_OUTROS_ENDER.COE_PONTO_REF'
      Size = 254
    end
  end
  object u_cli_outros_ender: TUpdateSQL
    ModifySQL.Strings = (
      'update CADCLI_PV'
      'set'
      '  CPV_CODEMP = :CPV_CODEMP,'
      '  CPV_CODCLI = :CPV_CODCLI,'
      '  CPV_TABPV = :CPV_TABPV,'
      '  CPV_CODPV = :CPV_CODPV'
      'where'
      '  CPV_CODEMP = :OLD_CPV_CODEMP and'
      '  CPV_CODCLI = :OLD_CPV_CODCLI and'
      '  CPV_TABPV = :OLD_CPV_TABPV and'
      '  CPV_CODPV = :OLD_CPV_CODPV')
    InsertSQL.Strings = (
      'insert into CADCLI_PV'
      '  (CPV_CODEMP, CPV_CODCLI, CPV_TABPV, CPV_CODPV)'
      'values'
      '  (:CPV_CODEMP, :CPV_CODCLI, :CPV_TABPV, :CPV_CODPV)')
    DeleteSQL.Strings = (
      'delete from CADCLI_PV'
      'where'
      '  CPV_CODEMP = :OLD_CPV_CODEMP and'
      '  CPV_CODCLI = :OLD_CPV_CODCLI and'
      '  CPV_TABPV = :OLD_CPV_TABPV and'
      '  CPV_CODPV = :OLD_CPV_CODPV')
    Left = 299
    Top = 397
  end
  object src_cli_outros_ender: TDataSource
    DataSet = tb_cli_outros_ender
    Left = 360
    Top = 399
  end
  object ColorDialog1: TColorDialog
    Left = 703
    Top = 344
  end
end
