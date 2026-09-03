inherited Frm_For: TFrm_For
  Left = 50
  Top = 78
  VertScrollBar.Range = 0
  BorderStyle = bsSingle
  Caption = 'Manuten'#231#227'o no cadastro de Fornecedores'
  ClientHeight = 452
  ClientWidth = 777
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
    Width = 777
    Height = 34
    inherited lbl_emp: TLabel
      Left = 740
      Width = 36
      Height = 32
    end
    inherited Pesquisapor: TLabel
      Left = 5
      Top = 13
      Width = 67
    end
    inherited BBnAtu: TBitBtn
      Left = 412
      Top = 8
      Height = 22
      OnClick = BBnAtuClick
    end
    inherited CAMPO: TComboBox
      Top = 8
      Items.Strings = (
        'Nome'
        'C'#243'digo'
        'Fantasia'
        'CNPJ'
        'Cidade'
        'Bairro')
    end
    inherited Edit1: TMaskEdit
      Top = 8
      Width = 200
      OnChange = Edit1Change
      OnExit = Edit1Exit
    end
  end
  inherited PC1: TPageControl
    Top = 64
    Width = 777
    Height = 362
    ActivePage = tsCad
    TabStop = True
    inherited tsCad: TTabSheet
      object Label1: TLabel
        Left = 3
        Top = 6
        Width = 108
        Height = 13
        Caption = 'C'#243'digo Fornecedor'
        FocusControl = DBEdit1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label2: TLabel
        Left = 122
        Top = 6
        Width = 76
        Height = 13
        Caption = 'Raz'#227'o Social'
        FocusControl = DBEdit2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label3: TLabel
        Left = 422
        Top = 6
        Width = 186
        Height = 13
        Caption = 'Denomina'#231#227'o/Nome de Fantasia'
        FocusControl = DBEdit3
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label4: TLabel
        Left = 3
        Top = 44
        Width = 55
        Height = 13
        Caption = 'Endereco'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label8: TLabel
        Left = 294
        Top = 44
        Width = 34
        Height = 13
        Caption = 'Bairro'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label10: TLabel
        Left = 3
        Top = 81
        Width = 25
        Height = 13
        Caption = 'CEP'
        FocusControl = DBE_cep
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label5: TLabel
        Left = 694
        Top = 44
        Width = 17
        Height = 13
        Caption = 'UF'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label9: TLabel
        Left = 496
        Top = 44
        Width = 40
        Height = 13
        Caption = 'Cidade'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label14: TLabel
        Left = 495
        Top = 120
        Width = 100
        Height = 13
        Caption = 'Data do Cadastro'
        FocusControl = DBEdit14
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label13: TLabel
        Left = 3
        Top = 120
        Width = 104
        Height = 13
        Caption = 'Endere'#231'o  E-MAIL'
        FocusControl = DBEdit13
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label21: TLabel
        Left = 562
        Top = 81
        Width = 51
        Height = 13
        Caption = 'Telefone'
        FocusControl = DBE_Fone
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label26: TLabel
        Left = 294
        Top = 120
        Width = 180
        Height = 13
        Caption = 'C'#243'digo Empresa No Fornecedor'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label23: TLabel
        Left = 3
        Top = 158
        Width = 35
        Height = 13
        Caption = 'Grupo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label44: TLabel
        Left = 663
        Top = 81
        Width = 21
        Height = 13
        Caption = 'Fax'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label47: TLabel
        Left = 4
        Top = 314
        Width = 40
        Height = 13
        Caption = 'Incluido:'
      end
      object Label48: TLabel
        Left = 427
        Top = 315
        Width = 42
        Height = 13
        Caption = 'Alterado:'
      end
      object Label66: TLabel
        Left = 402
        Top = 81
        Width = 111
        Height = 13
        Caption = 'Inscri'#231#227'o Municipal'
        FocusControl = DBE_IM
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText1: TDBText
        Left = 86
        Top = 80
        Width = 50
        Height = 13
        AutoSize = True
        DataField = 'obs_cgc'
        DataSource = DM1.Src_For
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText2: TDBText
        Left = 242
        Top = 80
        Width = 50
        Height = 13
        AutoSize = True
        DataField = 'obs_ie'
        DataSource = DM1.Src_For
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBEdit1: TDBEdit
        Left = 3
        Top = 22
        Width = 108
        Height = 19
        Ctl3D = False
        DataField = 'FCODFOR'
        DataSource = DM1.Src_For
        ParentCtl3D = False
        TabOrder = 0
        OnExit = DBEdit1Exit
      end
      object DBEdit2: TDBEdit
        Left = 121
        Top = 22
        Width = 294
        Height = 19
        Ctl3D = False
        DataField = 'FRAZAO'
        DataSource = DM1.Src_For
        ParentCtl3D = False
        TabOrder = 1
      end
      object DBEdit3: TDBEdit
        Left = 422
        Top = 22
        Width = 299
        Height = 19
        Ctl3D = False
        DataField = 'FDENOM'
        DataSource = DM1.Src_For
        ParentCtl3D = False
        TabOrder = 2
      end
      object DBEdit5: TDBEdit
        Left = 3
        Top = 58
        Width = 286
        Height = 19
        Ctl3D = False
        DataField = 'FNLOG'
        DataSource = DM1.Src_For
        ParentCtl3D = False
        TabOrder = 3
      end
      object NOMBAI: TDBEdit
        Left = 338
        Top = 58
        Width = 151
        Height = 19
        Ctl3D = False
        DataField = 'FBAIRRO'
        DataSource = DM1.Src_For
        ParentCtl3D = False
        TabOrder = 5
      end
      object DBE_cep: TDBEdit
        Left = 3
        Top = 94
        Width = 78
        Height = 19
        Ctl3D = False
        DataField = 'FCEP'
        DataSource = DM1.Src_For
        ParentCtl3D = False
        TabOrder = 9
      end
      object ESTADO: TDBEdit
        Left = 693
        Top = 58
        Width = 28
        Height = 19
        Ctl3D = False
        DataField = 'FUF'
        DataSource = DM1.Src_For
        ParentCtl3D = False
        TabOrder = 8
      end
      object NOMLOC: TDBEdit
        Left = 540
        Top = 58
        Width = 150
        Height = 19
        Ctl3D = False
        DataField = 'FCIDADE'
        DataSource = DM1.Src_For
        ParentCtl3D = False
        TabOrder = 7
      end
      object DBEdit14: TDBEdit
        Left = 495
        Top = 135
        Width = 112
        Height = 19
        Ctl3D = False
        DataField = 'FDTCAD'
        DataSource = DM1.Src_For
        ParentCtl3D = False
        TabOrder = 17
      end
      object DBEdit13: TDBEdit
        Left = 3
        Top = 135
        Width = 287
        Height = 19
        Ctl3D = False
        DataField = 'FEMAIL'
        DataSource = DM1.Src_For
        ParentCtl3D = False
        TabOrder = 15
      end
      object DBE_Fax: TDBEdit
        Left = 665
        Top = 94
        Width = 100
        Height = 19
        Ctl3D = False
        DataField = 'FFAX'
        DataSource = DM1.Src_For
        ParentCtl3D = False
        TabOrder = 14
        OnExit = DBE_FaxExit
        OnKeyPress = DBE_FaxKeyPress
      end
      object DBE_Fone: TDBEdit
        Left = 562
        Top = 94
        Width = 100
        Height = 19
        Ctl3D = False
        DataField = 'FFONE'
        DataSource = DM1.Src_For
        ParentCtl3D = False
        TabOrder = 13
        OnExit = DBE_FoneExit
        OnKeyPress = DBE_FoneKeyPress
      end
      object DBEdit27: TDBEdit
        Left = 296
        Top = 134
        Width = 179
        Height = 19
        Ctl3D = False
        DataField = 'FCODEFO'
        DataSource = DM1.Src_For
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 16
      end
      object gbobs: TGroupBox
        Left = 423
        Top = 225
        Width = 344
        Height = 84
        Caption = 'Observa'#231#245'es:'
        Ctl3D = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 23
        object DBEdit24: TDBEdit
          Left = 2
          Top = 32
          Width = 339
          Height = 19
          Ctl3D = False
          DataField = 'FOBS2'
          DataSource = DM1.Src_For
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 1
        end
        object DBEdit23: TDBEdit
          Left = 2
          Top = 14
          Width = 339
          Height = 19
          Ctl3D = False
          DataField = 'FOBS1'
          DataSource = DM1.Src_For
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 0
        end
      end
      object gbcontatos: TGroupBox
        Left = 0
        Top = 224
        Width = 419
        Height = 85
        Caption = 'Contatos:'
        Ctl3D = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 22
        object Label6: TLabel
          Left = 8
          Top = 12
          Width = 33
          Height = 13
          Caption = 'Nome'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label7: TLabel
          Left = 302
          Top = 12
          Width = 51
          Height = 13
          Caption = 'Telefone'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object DBEdit20: TDBEdit
          Left = 301
          Top = 62
          Width = 112
          Height = 19
          Ctl3D = False
          DataField = 'FFONEC03'
          DataSource = DM1.Src_For
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 5
          OnExit = DBEdit20Exit
          OnKeyPress = DBEdit20KeyPress
        end
        object DBEdit19: TDBEdit
          Left = 6
          Top = 62
          Width = 294
          Height = 19
          Ctl3D = False
          DataField = 'FCONT03'
          DataSource = DM1.Src_For
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 4
        end
        object DBEdit18: TDBEdit
          Left = 301
          Top = 44
          Width = 112
          Height = 19
          Ctl3D = False
          DataField = 'FFONEC02'
          DataSource = DM1.Src_For
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 3
          OnExit = DBEdit18Exit
          OnKeyPress = DBEdit18KeyPress
        end
        object DBEdit17: TDBEdit
          Left = 6
          Top = 44
          Width = 294
          Height = 19
          Ctl3D = False
          DataField = 'FCONT02'
          DataSource = DM1.Src_For
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 2
        end
        object DBEdit15: TDBEdit
          Left = 6
          Top = 26
          Width = 294
          Height = 19
          Ctl3D = False
          DataField = 'FCONT01'
          DataSource = DM1.Src_For
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 0
        end
        object DBEdit16: TDBEdit
          Left = 301
          Top = 26
          Width = 112
          Height = 19
          Ctl3D = False
          DataField = 'FFONEC01'
          DataSource = DM1.Src_For
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 1
          OnExit = DBEdit16Exit
          OnKeyPress = DBEdit16KeyPress
        end
      end
      object CODBAI: TDBEdit
        Left = 294
        Top = 58
        Width = 45
        Height = 19
        Ctl3D = False
        DataField = 'FCODBAI'
        DataSource = DM1.Src_For
        ParentCtl3D = False
        TabOrder = 4
        OnExit = CODBAIExit
        OnKeyPress = CODBAIKeyPress
      end
      object CODLOC: TDBEdit
        Left = 496
        Top = 58
        Width = 45
        Height = 19
        Ctl3D = False
        DataField = 'FCODLOC'
        DataSource = DM1.Src_For
        ParentCtl3D = False
        TabOrder = 6
        OnExit = CODLOCExit
        OnKeyPress = CODLOCKeyPress
      end
      object DBRG_Restricao: TDBRadioGroup
        Left = 620
        Top = 113
        Width = 148
        Height = 54
        Caption = 'Restricoes:'
        Ctl3D = True
        DataField = 'FRESTFOR'
        DataSource = DM1.Src_For
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        Items.Strings = (
          'Nenhuma'
          'Somente abaixo 99'
          'Somente Acima 100')
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 20
        Values.Strings = (
          '0'
          '1'
          '2')
        Visible = False
      end
      object DBE_codgfor: TDBEdit
        Left = 3
        Top = 174
        Width = 54
        Height = 19
        Ctl3D = False
        DataField = 'FCODGFOR'
        DataSource = DM1.Src_For
        ParentCtl3D = False
        TabOrder = 18
        OnExit = DBE_codgforExit
        OnKeyPress = DBE_codgforKeyPress
      end
      object DBE_nomgfor: TDBEdit
        Left = 56
        Top = 174
        Width = 233
        Height = 19
        Ctl3D = False
        DataField = 'nomgfor'
        DataSource = DM1.Src_For
        Enabled = False
        ParentCtl3D = False
        TabOrder = 19
      end
      object gbdadoscompra: TGroupBox
        Left = 297
        Top = 160
        Width = 286
        Height = 41
        Caption = 'Condi'#231#245'es Para Compras:'
        TabOrder = 21
        object Label15: TLabel
          Left = 8
          Top = 20
          Width = 135
          Height = 13
          Caption = 'Prazo M'#233'dio de Compra'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object DBEdit4: TDBEdit
          Left = 149
          Top = 18
          Width = 89
          Height = 19
          Ctl3D = False
          DataField = 'FPRAZO'
          DataSource = DM1.Src_For
          ParentCtl3D = False
          TabOrder = 0
        end
      end
      object DBEdit22: TDBEdit
        Left = 48
        Top = 312
        Width = 54
        Height = 19
        TabStop = False
        Ctl3D = False
        DataField = 'FCODUSR_INC'
        DataSource = DM1.Src_For
        Enabled = False
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 24
        OnExit = DBE_codgforExit
        OnKeyPress = DBE_codgforKeyPress
      end
      object edt_usrinc: TEdit
        Left = 101
        Top = 312
        Width = 121
        Height = 19
        TabStop = False
        Color = 7995257
        Ctl3D = False
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 25
      end
      object edt_dathorinc: TEdit
        Left = 221
        Top = 312
        Width = 121
        Height = 19
        TabStop = False
        Color = 7995257
        Ctl3D = False
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 26
      end
      object edt_dathoralt: TEdit
        Left = 645
        Top = 312
        Width = 121
        Height = 19
        TabStop = False
        Color = 7995257
        Ctl3D = False
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 27
      end
      object edt_usralt: TEdit
        Left = 525
        Top = 312
        Width = 121
        Height = 19
        TabStop = False
        Color = 7995257
        Ctl3D = False
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 28
      end
      object DBEdit26: TDBEdit
        Left = 472
        Top = 312
        Width = 54
        Height = 19
        TabStop = False
        Ctl3D = False
        DataField = 'FCODUSR_ALT'
        DataSource = DM1.Src_For
        Enabled = False
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 29
        OnExit = DBE_codgforExit
        OnKeyPress = DBE_codgforKeyPress
      end
      object DBE_IM: TDBEdit
        Left = 402
        Top = 94
        Width = 156
        Height = 19
        Ctl3D = False
        DataField = 'FIM'
        DataSource = DM1.Src_For
        ParentCtl3D = False
        TabOrder = 12
      end
      object edt_cnpj: TMaskEdit
        Left = 86
        Top = 95
        Width = 137
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 10
        Text = 'edt_cnpj'
        OnEnter = edt_cnpjEnter
        OnExit = edt_cnpjExit
      end
      object DBE_IE: TDBEdit
        Left = 242
        Top = 94
        Width = 156
        Height = 19
        Ctl3D = False
        DataField = 'FIE'
        DataSource = DM1.Src_For
        ParentCtl3D = False
        TabOrder = 11
      end
    end
    object Tab_Ad: TTabSheet [1]
      Caption = '&Dados Adicionais'
      Enabled = False
      ImageIndex = 2
      object GroupBox4: TGroupBox
        Left = 0
        Top = 0
        Width = 769
        Height = 62
        Align = alTop
        Caption = 'Dados Sobre o Tipo de Fornecedor:'
        TabOrder = 0
        object Label27: TLabel
          Left = 479
          Top = 17
          Width = 88
          Height = 13
          Caption = 'Dia de Emiss'#227'o'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label28: TLabel
          Left = 583
          Top = 17
          Width = 94
          Height = 13
          Caption = 'Dia Vencimento:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label22: TLabel
          Left = 6
          Top = 17
          Width = 112
          Height = 13
          Caption = 'Tipo de Fornecedor'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lbl_padrao: TLabel
          Left = 193
          Top = 17
          Width = 139
          Height = 13
          Caption = 'Layout Padr'#227'o p/Pre'#231'os'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label46: TLabel
          Left = 352
          Top = 17
          Width = 97
          Height = 13
          Caption = 'Tipo da Despesa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object DBEdit28: TDBEdit
          Left = 497
          Top = 35
          Width = 31
          Height = 19
          Ctl3D = False
          DataField = 'FDIAE'
          DataSource = DM1.Src_For
          ParentCtl3D = False
          TabOrder = 3
        end
        object DBEdit29: TDBEdit
          Left = 608
          Top = 35
          Width = 32
          Height = 19
          Ctl3D = False
          DataField = 'FDIAV'
          DataSource = DM1.Src_For
          ParentCtl3D = False
          TabOrder = 4
        end
        object CB_TIPOF: TComboBox
          Left = 6
          Top = 35
          Width = 179
          Height = 21
          AutoDropDown = True
          BevelKind = bkSoft
          ItemHeight = 13
          TabOrder = 0
          Text = 'Mercadorias'
          OnClick = CB_TIPOFClick
          OnExit = CB_TIPOFClick
          Items.Strings = (
            'Mercadorias'
            'Presta'#231#227'o Servi'#231'o'
            'Funcion'#225'rios'
            'Aluguel'
            'Impostos'
            'Pre'#231'os de Mercadorias'
            'Outros')
        end
        object CB_PADRAO: TComboBox
          Left = 194
          Top = 35
          Width = 140
          Height = 21
          AutoDropDown = True
          BevelKind = bkSoft
          ItemHeight = 13
          ItemIndex = 0
          TabOrder = 1
          Text = 'Nenhum'
          OnClick = CB_PADRAOClick
          OnExit = CB_PADRAOClick
          Items.Strings = (
            'Nenhum'
            'Unitex'
            'ABCFarma'
            'Outros')
        end
        object CB_TDESP: TComboBox
          Left = 351
          Top = 35
          Width = 112
          Height = 21
          AutoDropDown = True
          BevelKind = bkSoft
          ItemHeight = 13
          ItemIndex = 0
          TabOrder = 2
          Text = 'Variada'
          OnClick = CB_TDESPClick
          OnExit = CB_TDESPClick
          Items.Strings = (
            'Variada'
            'Fixa')
        end
      end
      object GroupBox5: TGroupBox
        Left = 0
        Top = 62
        Width = 769
        Height = 142
        Align = alTop
        Caption = 'Dados Sobre Calculo da Nota de Entrada:'
        TabOrder = 1
        object Label29: TLabel
          Left = 432
          Top = 13
          Width = 128
          Height = 13
          Caption = 'Al'#237'quota ICMS normal:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label30: TLabel
          Left = 405
          Top = 31
          Width = 155
          Height = 13
          Caption = 'Redutor Base Icms Normal:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label31: TLabel
          Left = 407
          Top = 50
          Width = 153
          Height = 13
          Caption = 'Redutor Base Icms Retido:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label35: TLabel
          Left = 465
          Top = 70
          Width = 95
          Height = 13
          Caption = 'Icms Cr'#233'dito ST:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label36: TLabel
          Left = 488
          Top = 86
          Width = 72
          Height = 13
          Caption = 'Icms D'#233'bito:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label19: TLabel
          Left = 54
          Top = 69
          Width = 101
          Height = 13
          Caption = 'CFOP Tributados:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label20: TLabel
          Left = 70
          Top = 87
          Width = 84
          Height = 13
          Caption = 'CFOP Retidos:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label71: TLabel
          Left = 313
          Top = 106
          Width = 97
          Height = 13
          Caption = 'C'#243'digo Reg Trib:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object DBRadioGroup3: TDBRadioGroup
          Left = 415
          Top = 70
          Width = 347
          Height = 35
          Caption = 'Calcular ICMS Sobre os Produtos:'
          Columns = 3
          DataField = 'FICMSN'
          DataSource = DM1.Src_For
          Items.Strings = (
            '&Tributados'
            'T&odos'
            '&Nenhum')
          TabOrder = 11
          Values.Strings = (
            '0'
            '1'
            '2')
          Visible = False
        end
        object DB_ALIQ: TDBEdit
          Left = 565
          Top = 13
          Width = 66
          Height = 19
          Ctl3D = False
          DataField = 'FALIQ'
          DataSource = DM1.Src_For
          ParentCtl3D = False
          TabOrder = 6
        end
        object DB_REDUT: TDBEdit
          Left = 565
          Top = 31
          Width = 66
          Height = 19
          Ctl3D = False
          DataField = 'FRBICN'
          DataSource = DM1.Src_For
          ParentCtl3D = False
          TabOrder = 7
        end
        object DB_ICMSRET: TDBEdit
          Left = 565
          Top = 49
          Width = 66
          Height = 19
          Ctl3D = False
          DataField = 'FRBCIR'
          DataSource = DM1.Src_For
          ParentCtl3D = False
          TabOrder = 8
        end
        object DB_ICMSCRED: TDBEdit
          Left = 565
          Top = 67
          Width = 66
          Height = 19
          Ctl3D = False
          DataField = 'FICMSC'
          DataSource = DM1.Src_For
          ParentCtl3D = False
          TabOrder = 9
        end
        object DB_ICMSDEB: TDBEdit
          Left = 565
          Top = 85
          Width = 66
          Height = 19
          Ctl3D = False
          DataField = 'FICMSD'
          DataSource = DM1.Src_For
          ParentCtl3D = False
          TabOrder = 10
        end
        object CBCB_TPCALC: TDBCheckBox
          Left = 8
          Top = 30
          Width = 218
          Height = 17
          Alignment = taLeftJustify
          Caption = 'Calcular Substitui'#231#227'o sobre o PMC'
          DataField = 'FTCALC'
          DataSource = DM1.Src_For
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
          ValueChecked = '1'
          ValueUnchecked = '0'
        end
        object DBCB_RETLIQ: TDBCheckBox
          Left = 9
          Top = 47
          Width = 217
          Height = 17
          Alignment = taLeftJustify
          Caption = 'Icms d'#233'bito sobre Total Liquido'
          DataField = 'FRETLIQ'
          DataSource = DM1.Src_For
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 2
          ValueChecked = '1'
          ValueUnchecked = '0'
        end
        object DBCB_ICMSR: TDBCheckBox
          Left = 8
          Top = 14
          Width = 218
          Height = 17
          Alignment = taLeftJustify
          Caption = 'Icms substitui'#231#227'o Tributaria'
          DataField = 'FCICMSR'
          DataSource = DM1.Src_For
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          ValueChecked = '0'
          ValueUnchecked = '1'
        end
        object DB_CFOTRI: TDBEdit
          Left = 160
          Top = 67
          Width = 66
          Height = 19
          Ctl3D = False
          DataField = 'FCFOTRI'
          DataSource = DM1.Src_For
          ParentCtl3D = False
          TabOrder = 3
        end
        object DB_CFOST: TDBEdit
          Left = 160
          Top = 85
          Width = 66
          Height = 19
          Ctl3D = False
          DataField = 'FCFOST'
          DataSource = DM1.Src_For
          ParentCtl3D = False
          TabOrder = 4
        end
        object GB_IVA: TGroupBox
          Left = 255
          Top = 10
          Width = 145
          Height = 86
          Caption = '% IVA dos Produtos'
          TabOrder = 5
          object Label32: TLabel
            Left = 19
            Top = 60
            Width = 56
            Height = 13
            Caption = 'Positivos:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label34: TLabel
            Left = 7
            Top = 21
            Width = 68
            Height = 13
            Caption = 'Inalterados:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label33: TLabel
            Left = 13
            Top = 40
            Width = 62
            Height = 13
            Caption = 'Negativos:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object DB_CFOPOS: TDBEdit
            Left = 77
            Top = 56
            Width = 61
            Height = 19
            Ctl3D = False
            DataField = 'FIVAPOS'
            DataSource = DM1.Src_For
            ParentCtl3D = False
            TabOrder = 2
          end
          object DB_CFOINA: TDBEdit
            Left = 77
            Top = 20
            Width = 61
            Height = 19
            Ctl3D = False
            DataField = 'FIVAINA'
            DataSource = DM1.Src_For
            ParentCtl3D = False
            TabOrder = 0
          end
          object DB_CFONEG: TDBEdit
            Left = 77
            Top = 38
            Width = 61
            Height = 19
            Ctl3D = False
            DataField = 'FIVANEG'
            DataSource = DM1.Src_For
            ParentCtl3D = False
            TabOrder = 1
          end
        end
        object RxDBCB_OPTSIMPLES: TRxDBComboBox
          Left = 418
          Top = 102
          Width = 330
          Height = 21
          Style = csDropDownList
          Ctl3D = True
          DataField = 'FCRT'
          DataSource = DM1.Src_For
          EnableValues = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ItemHeight = 13
          Items.Strings = (
            'Indefinido'
            'Simples Nacional'
            'Simples Nacional Excesso de sublimite de receita bruta'
            'Regime Normal')
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 12
          Values.Strings = (
            '0'
            '1'
            '2'
            '3')
        end
      end
    end
    object TabSheet1: TTabSheet [2]
      Caption = '&Controle de Qualidade'
      ImageIndex = 2
      object gb_forqua: TGroupBox
        Left = 3
        Top = 0
        Width = 198
        Height = 105
        Caption = 'Sobre o Fornecedor:'
        Color = 11599871
        Ctl3D = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 0
        object Label64: TLabel
          Left = 8
          Top = 47
          Width = 32
          Height = 13
          Caption = 'Data:'
        end
        object Label65: TLabel
          Left = 6
          Top = 67
          Width = 22
          Height = 13
          Caption = 'Obs:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object dbrg_codbloq: TDBRadioGroup
          Left = 7
          Top = 11
          Width = 185
          Height = 31
          Caption = 'Qualificado:'
          Columns = 2
          Ctl3D = False
          DataField = 'FCODBLOQ'
          DataSource = DM1.Src_For
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          Items.Strings = (
            'Sim'
            'N'#227'o')
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 0
          Values.Strings = (
            '0'
            '1')
          OnExit = dbrg_codbloqExit
        end
        object DBDateEdit1: TDBDateEdit
          Left = 55
          Top = 44
          Width = 137
          Height = 21
          DataField = 'FDATHOR_BLOQ'
          DataSource = DM1.Src_For
          Ctl3D = False
          NumGlyphs = 2
          ParentCtl3D = False
          TabOrder = 1
        end
        object DBMemo1: TDBMemo
          Left = 30
          Top = 64
          Width = 162
          Height = 33
          Ctl3D = False
          DataField = 'FMOTBLOQ'
          DataSource = DM1.Src_For
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 2
        end
      end
      object gb_alvara: TGroupBox
        Left = 204
        Top = 0
        Width = 129
        Height = 105
        Caption = 'AFE - ANVISA'
        TabOrder = 1
        object Label11: TLabel
          Left = 12
          Top = 18
          Width = 71
          Height = 13
          Caption = 'Numero AFE'
          FocusControl = DBEdit14
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label12: TLabel
          Left = 11
          Top = 56
          Width = 77
          Height = 13
          Caption = 'Validade AFE'
          FocusControl = DBEdit14
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object DBEdit6: TDBEdit
          Left = 9
          Top = 34
          Width = 112
          Height = 19
          Ctl3D = False
          DataField = 'FNUMAFE'
          DataSource = DM1.Src_For
          ParentCtl3D = False
          TabOrder = 0
        end
        object DBDateEdit2: TDBDateEdit
          Left = 8
          Top = 73
          Width = 111
          Height = 21
          DataField = 'FDTVAFE'
          DataSource = DM1.Src_For
          NumGlyphs = 2
          TabOrder = 1
        end
      end
      object GroupBox1: TGroupBox
        Left = 488
        Top = 0
        Width = 127
        Height = 105
        Caption = 'AE - Anvisa'
        TabOrder = 3
        object Label16: TLabel
          Left = 12
          Top = 18
          Width = 64
          Height = 13
          Caption = 'Numero AE'
          FocusControl = DBEdit14
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label17: TLabel
          Left = 11
          Top = 56
          Width = 70
          Height = 13
          Caption = 'Validade AE'
          FocusControl = DBEdit14
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object DBEdit8: TDBEdit
          Left = 9
          Top = 34
          Width = 112
          Height = 19
          Ctl3D = False
          DataField = 'FNUMAE'
          DataSource = DM1.Src_For
          ParentCtl3D = False
          TabOrder = 0
        end
        object DBDateEdit3: TDBDateEdit
          Left = 8
          Top = 73
          Width = 111
          Height = 21
          DataField = 'FDTVAE'
          DataSource = DM1.Src_For
          NumGlyphs = 2
          TabOrder = 1
        end
      end
      object GroupBox3: TGroupBox
        Left = 618
        Top = 0
        Width = 127
        Height = 105
        Caption = 'CRT (Cert. Resp. Tec.)'
        TabOrder = 4
        object Label18: TLabel
          Left = 12
          Top = 18
          Width = 73
          Height = 13
          Caption = 'Numero CRT'
          FocusControl = DBEdit14
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label24: TLabel
          Left = 11
          Top = 56
          Width = 79
          Height = 13
          Caption = 'Validade CRT'
          FocusControl = DBEdit14
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object DBEdit11: TDBEdit
          Left = 9
          Top = 34
          Width = 112
          Height = 19
          Ctl3D = False
          DataField = 'FNUMCRT'
          DataSource = DM1.Src_For
          ParentCtl3D = False
          TabOrder = 0
        end
        object DBDateEdit4: TDBDateEdit
          Left = 8
          Top = 73
          Width = 111
          Height = 21
          DataField = 'FDTVCRT'
          DataSource = DM1.Src_For
          NumGlyphs = 2
          TabOrder = 1
        end
      end
      object GroupBox7: TGroupBox
        Left = 152
        Top = 111
        Width = 209
        Height = 105
        Caption = 'CBPF'
        TabOrder = 6
        object Label25: TLabel
          Left = 12
          Top = 18
          Width = 79
          Height = 13
          Caption = 'Numero CBPF'
          FocusControl = DBEdit14
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label37: TLabel
          Left = 11
          Top = 56
          Width = 85
          Height = 13
          Caption = 'Validade CBPF'
          FocusControl = DBEdit14
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object DBEdit21: TDBEdit
          Left = 9
          Top = 34
          Width = 112
          Height = 19
          Ctl3D = False
          DataField = 'FNUMCBPF'
          DataSource = DM1.Src_For
          ParentCtl3D = False
          TabOrder = 0
        end
        object DBDateEdit5: TDBDateEdit
          Left = 8
          Top = 73
          Width = 111
          Height = 21
          DataField = 'FDTVCBPF'
          DataSource = DM1.Src_For
          NumGlyphs = 2
          TabOrder = 1
        end
        object DBCheckBox2: TDBCheckBox
          Left = 136
          Top = 24
          Width = 67
          Height = 17
          Caption = 'Solido'
          DataField = 'FCBPF_SOLIDO'
          DataSource = DM1.Src_For
          TabOrder = 2
          ValueChecked = '1'
          ValueUnchecked = '0'
        end
        object DBCheckBox3: TDBCheckBox
          Left = 136
          Top = 40
          Width = 67
          Height = 17
          Caption = 'Liquido'
          DataField = 'FCBPF_LIQUIDO'
          DataSource = DM1.Src_For
          TabOrder = 3
          ValueChecked = '1'
          ValueUnchecked = '0'
        end
        object DBCheckBox4: TDBCheckBox
          Left = 136
          Top = 56
          Width = 67
          Height = 17
          Caption = 'Injetavel'
          DataField = 'FCBPF_INJETAVEL'
          DataSource = DM1.Src_For
          TabOrder = 4
          ValueChecked = '1'
          ValueUnchecked = '0'
        end
        object DBCheckBox5: TDBCheckBox
          Left = 136
          Top = 72
          Width = 67
          Height = 17
          Caption = 'Pomada'
          DataField = 'FCBPF_POMADA'
          DataSource = DM1.Src_For
          TabOrder = 5
          ValueChecked = '1'
          ValueUnchecked = '0'
        end
      end
      object GroupBox8: TGroupBox
        Left = 3
        Top = 107
        Width = 142
        Height = 105
        Caption = 'Carta de Credenciamento'
        TabOrder = 5
        object Label67: TLabel
          Left = 12
          Top = 18
          Width = 78
          Height = 13
          Caption = 'Numero Carta'
          FocusControl = DBEdit14
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label68: TLabel
          Left = 11
          Top = 56
          Width = 84
          Height = 13
          Caption = 'Validade Carta'
          FocusControl = DBEdit14
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object DBEdit30: TDBEdit
          Left = 9
          Top = 34
          Width = 112
          Height = 19
          Ctl3D = False
          DataField = 'FNUMCC'
          DataSource = DM1.Src_For
          ParentCtl3D = False
          TabOrder = 0
        end
        object DBDateEdit6: TDBDateEdit
          Left = 8
          Top = 73
          Width = 111
          Height = 21
          DataField = 'FDTVCC'
          DataSource = DM1.Src_For
          NumGlyphs = 2
          TabOrder = 1
        end
      end
      object GroupBox9: TGroupBox
        Left = 340
        Top = 0
        Width = 129
        Height = 105
        Caption = 'Alvara Sanit'#225'rio'
        TabOrder = 2
        object Label69: TLabel
          Left = 12
          Top = 18
          Width = 44
          Height = 13
          Caption = 'Numero'
          FocusControl = DBEdit14
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label70: TLabel
          Left = 11
          Top = 56
          Width = 50
          Height = 13
          Caption = 'Validade'
          FocusControl = DBEdit14
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object DBEdit7: TDBEdit
          Left = 9
          Top = 34
          Width = 112
          Height = 19
          Ctl3D = False
          DataField = 'FVSANIT'
          DataSource = DM1.Src_For
          ParentCtl3D = False
          TabOrder = 0
        end
        object DBDateEdit7: TDBDateEdit
          Left = 8
          Top = 73
          Width = 111
          Height = 21
          DataField = 'FDTVSANIT'
          DataSource = DM1.Src_For
          NumGlyphs = 2
          TabOrder = 1
        end
      end
    end
    object tsContatos: TTabSheet [3]
      Caption = 'Contatos'
      ImageIndex = 2
      object dbgContatos: TDBGrid
        Left = 0
        Top = 0
        Width = 769
        Height = 229
        Align = alClient
        DataSource = DM2.Src_Con_For
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'CC_NOME'
            Title.Caption = 'NOME'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CC_DEPTO'
            Title.Caption = 'DEPARTAMENTO'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CC_FONE01'
            Title.Caption = 'TELEFONE'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CC_FONE02'
            Title.Caption = 'TELEFONE 02'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CC_EMAIL'
            Title.Caption = 'E-MAIL'
            Width = 64
            Visible = True
          end>
      end
      object GroupBox6: TGroupBox
        Left = 0
        Top = 229
        Width = 769
        Height = 105
        Align = alBottom
        Caption = 'Observa'#231#245'es'
        TabOrder = 1
        object dbmContatos: TDBMemo
          Left = 2
          Top = 15
          Width = 765
          Height = 88
          Align = alClient
          DataField = 'CC_OBS'
          DataSource = DM2.Src_Con_For
          TabOrder = 0
        end
      end
    end
    object tsCodBar: TTabSheet [4]
      Caption = 'Parametros C'#243'digos de Barras por Caixa Fechada'
      Enabled = False
      ImageIndex = 2
      TabVisible = False
      object Label45: TLabel
        Left = 76
        Top = 12
        Width = 118
        Height = 13
        Caption = 'Tamanho do Codigo:'
        FocusControl = DBE_Tam
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label49: TLabel
        Left = 279
        Top = 30
        Width = 88
        Height = 13
        Caption = 'Posicao Inicial:'
        FocusControl = DBE_POSCOD
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label50: TLabel
        Left = 6
        Top = 30
        Width = 187
        Height = 13
        Caption = 'Tamanho do Codigo da Unidade:'
        FocusControl = DBE_TAMCOD
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label51: TLabel
        Left = 17
        Top = 65
        Width = 176
        Height = 13
        Caption = 'Tamanho Data de Vencimento:'
        FocusControl = DBE_TAMVCT
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label52: TLabel
        Left = 278
        Top = 68
        Width = 88
        Height = 13
        Caption = 'Posicao Inicial:'
        FocusControl = DBE_POSVCT
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label53: TLabel
        Left = 65
        Top = 48
        Width = 128
        Height = 13
        Caption = 'Tamanho Campo Lote:'
        FocusControl = DBE_TAMLOT
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label54: TLabel
        Left = 279
        Top = 49
        Width = 88
        Height = 13
        Caption = 'Posicao Inicial:'
        FocusControl = DBE_POSLOT
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label55: TLabel
        Left = 13
        Top = 85
        Width = 180
        Height = 13
        Caption = 'Tamanho Campo Qtd. da Caixa:'
        FocusControl = DBE_TAMQTD
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label56: TLabel
        Left = 279
        Top = 87
        Width = 88
        Height = 13
        Caption = 'Posicao Inicial:'
        FocusControl = DBE_POSQTD
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object sbPadrao: TSpeedButton
        Left = 456
        Top = 24
        Width = 81
        Height = 22
        Hint = 'click aqui para Preencher Padrao'
        Caption = 'Padrao'
        ParentShowHint = False
        ShowHint = True
        OnClick = sbPadraoClick
      end
      object DBE_Tam: TDBEdit
        Left = 196
        Top = 8
        Width = 58
        Height = 19
        Ctl3D = False
        DataField = 'FCB_TAM'
        DataSource = DM1.Src_For
        ParentCtl3D = False
        TabOrder = 0
      end
      object DBE_POSCOD: TDBEdit
        Left = 379
        Top = 26
        Width = 58
        Height = 19
        Ctl3D = False
        DataField = 'FCB_POSCOD'
        DataSource = DM1.Src_For
        ParentCtl3D = False
        TabOrder = 2
      end
      object DBE_TAMCOD: TDBEdit
        Left = 196
        Top = 26
        Width = 58
        Height = 19
        Ctl3D = False
        DataField = 'FCB_TAMCOD'
        DataSource = DM1.Src_For
        ParentCtl3D = False
        TabOrder = 1
      end
      object DBE_TAMVCT: TDBEdit
        Left = 196
        Top = 62
        Width = 58
        Height = 19
        Ctl3D = False
        DataField = 'FCB_TAMVCT'
        DataSource = DM1.Src_For
        ParentCtl3D = False
        TabOrder = 5
      end
      object DBE_POSVCT: TDBEdit
        Left = 379
        Top = 62
        Width = 58
        Height = 19
        Ctl3D = False
        DataField = 'FCB_POSVCT'
        DataSource = DM1.Src_For
        ParentCtl3D = False
        TabOrder = 6
      end
      object DBE_TAMLOT: TDBEdit
        Left = 196
        Top = 44
        Width = 58
        Height = 19
        Ctl3D = False
        DataField = 'FCB_TAMLOT'
        DataSource = DM1.Src_For
        ParentCtl3D = False
        TabOrder = 3
      end
      object DBE_POSLOT: TDBEdit
        Left = 379
        Top = 44
        Width = 58
        Height = 19
        Ctl3D = False
        DataField = 'FCB_POSLOT'
        DataSource = DM1.Src_For
        ParentCtl3D = False
        TabOrder = 4
      end
      object DBE_TAMQTD: TDBEdit
        Left = 196
        Top = 80
        Width = 58
        Height = 19
        Ctl3D = False
        DataField = 'FCB_TAMQTD'
        DataSource = DM1.Src_For
        ParentCtl3D = False
        TabOrder = 7
      end
      object DBE_POSQTD: TDBEdit
        Left = 379
        Top = 80
        Width = 58
        Height = 19
        Ctl3D = False
        DataField = 'FCB_POSQTD'
        DataSource = DM1.Src_For
        ParentCtl3D = False
        TabOrder = 8
      end
    end
    object TsFluxoCaixa: TTabSheet [5]
      Caption = 'Dados Sobre Caixa(Fluxo de Caixa)'
      Enabled = False
      ImageIndex = 3
      object gb_pgto: TGroupBox
        Left = 0
        Top = 0
        Width = 769
        Height = 79
        Align = alTop
        Caption = 'Configura'#231#245'es do caixa para Pagamentos'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        object Label38: TLabel
          Left = 7
          Top = 36
          Width = 130
          Height = 13
          Caption = 'C'#243'digo do Centro de Custo:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label39: TLabel
          Left = 19
          Top = 14
          Width = 121
          Height = 13
          Caption = 'C'#243'digo do Departamento:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label40: TLabel
          Left = 18
          Top = 57
          Width = 120
          Height = 13
          Caption = 'Descri'#231#227'o do movimento:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
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
          Left = 168
          Top = 12
          Width = 68
          Height = 21
          Ctl3D = True
          DataField = 'FCODDEPD'
          DataSource = DM1.Src_For
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 0
          OnExit = DBE_CodDepDExit
          OnKeyDown = DBE_CodDepDKeyDown
        end
        object DBE_CodCCuD: TDBEdit
          Left = 168
          Top = 34
          Width = 68
          Height = 21
          Ctl3D = True
          DataField = 'FCODCCD'
          DataSource = DM1.Src_For
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 2
          OnExit = DBE_CodCCuDExit
          OnKeyDown = DBE_CodCCuDKeyDown
        end
        object DBE_DescMvD: TDBEdit
          Left = 168
          Top = 55
          Width = 419
          Height = 21
          Ctl3D = True
          DataField = 'FDESCMVD'
          DataSource = DM1.Src_For
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 5
        end
        object DBCB_NOMDEPD: TDBComboBox
          Left = 235
          Top = 13
          Width = 351
          Height = 21
          AutoDropDown = True
          BevelKind = bkSoft
          Color = 13565951
          Ctl3D = True
          DataField = 'FNOMDEPD'
          DataSource = DM1.Src_For
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
          Left = 235
          Top = 35
          Width = 320
          Height = 21
          AutoDropDown = True
          BevelKind = bkSoft
          Color = 13565951
          Ctl3D = True
          DataField = 'FNOMCCD'
          DataSource = DM1.Src_For
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
        object DBEdit9: TDBEdit
          Left = 554
          Top = 33
          Width = 31
          Height = 21
          Color = 16760799
          Ctl3D = True
          DataField = 'FNATDCD'
          DataSource = DM1.Src_For
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
        TabOrder = 3
        Visible = False
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
        object Label61: TLabel
          Left = 134
          Top = 18
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
        object Label62: TLabel
          Left = 222
          Top = 19
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
        object Label63: TLabel
          Left = 123
          Top = 40
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
          DataField = 'FREP_CODDEP'
          DataSource = DM1.Src_For
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
          DataField = 'FREP_CODCCU'
          DataSource = DM1.Src_For
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
          DataField = 'FREP_DESCMV'
          DataSource = DM1.Src_For
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
          DataField = 'FREP_NOMDEP'
          DataSource = DM1.Src_For
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
          DataField = 'FREP_NOMCCU'
          DataSource = DM1.Src_For
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
          DataField = 'FREP_NATDC'
          DataSource = DM1.Src_For
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
          Top = 18
          Width = 54
          Height = 19
          Ctl3D = False
          DataField = 'FREP_CODIGO'
          DataSource = DM1.Src_For
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 1
          OnEnter = DBE_REP_CODIGOEnter
          OnExit = DBE_REP_CODIGOExit
          OnKeyDown = DBE_REP_CODIGOKeyDown
          OnKeyPress = DBE_REP_CODIGOKeyPress
        end
        object DBEdit35: TDBEdit
          Left = 322
          Top = 18
          Width = 268
          Height = 19
          Ctl3D = False
          DataField = 'FREP_NOMESAC'
          DataSource = DM1.Src_For
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 2
        end
        object TIPO: TDBComboBox
          Left = 169
          Top = 17
          Width = 41
          Height = 21
          BevelKind = bkSoft
          Ctl3D = True
          DataField = 'FREP_TIPO'
          DataSource = DM1.Src_For
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
          TabOrder = 0
          OnEnter = TIPOEnter
          OnExit = TIPOExit
        end
        object DBE_REP_CODBCO: TDBEdit
          Left = 169
          Top = 36
          Width = 54
          Height = 19
          Ctl3D = False
          DataField = 'FREP_CODBCO'
          DataSource = DM1.Src_For
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 3
          OnExit = DBE_REP_CODBCOExit
          OnKeyPress = DBE_REP_CODBCOKeyPress
        end
        object DBEdit37: TDBEdit
          Left = 222
          Top = 36
          Width = 368
          Height = 19
          Ctl3D = False
          DataField = 'FREP_NOMBCO'
          DataSource = DM1.Src_For
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
      end
      object DBCheckBox1: TDBCheckBox
        Left = 0
        Top = 175
        Width = 585
        Height = 17
        Caption = 'Replicar Movimento ao Lancar Este Fornecedor'
        DataField = 'FREPLICARCX'
        DataSource = DM1.Src_For
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
        ValueChecked = '1'
        ValueUnchecked = '0'
        Visible = False
      end
      object gb_receb: TGroupBox
        Left = 0
        Top = 79
        Width = 769
        Height = 83
        Align = alTop
        Caption = 'Configura'#231#245'es do caixa Recebimentos'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        object Label57: TLabel
          Left = 9
          Top = 38
          Width = 130
          Height = 13
          Caption = 'C'#243'digo do Centro de Custo:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label58: TLabel
          Left = 19
          Top = 14
          Width = 121
          Height = 13
          Caption = 'C'#243'digo do Departamento:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label59: TLabel
          Left = 20
          Top = 59
          Width = 120
          Height = 13
          Caption = 'Descri'#231#227'o do movimento:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label60: TLabel
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
          Left = 169
          Top = 12
          Width = 68
          Height = 21
          Ctl3D = True
          DataField = 'FCODDEPC'
          DataSource = DM1.Src_For
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 0
          OnExit = DBE_CodDepCExit
          OnKeyDown = DBE_CodDepCKeyDown
        end
        object DBE_CodCCuC: TDBEdit
          Left = 169
          Top = 35
          Width = 68
          Height = 21
          Ctl3D = True
          DataField = 'FCODCCC'
          DataSource = DM1.Src_For
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 2
          OnExit = DBE_CodCCuCExit
          OnKeyDown = DBE_CodCCuCKeyDown
        end
        object DBE_DescMvC: TDBEdit
          Left = 169
          Top = 57
          Width = 417
          Height = 21
          Ctl3D = True
          DataField = 'FDESCMVC'
          DataSource = DM1.Src_For
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 5
        end
        object DBCB_NOMDEPC: TDBComboBox
          Left = 235
          Top = 14
          Width = 351
          Height = 21
          AutoDropDown = True
          BevelKind = bkSoft
          Color = 13565951
          Ctl3D = True
          DataField = 'FNOMDEPC'
          DataSource = DM1.Src_For
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
          OnKeyDown = DBCB_NOMDEPCKeyDown
        end
        object DBCB_NOMCCUC: TDBComboBox
          Left = 236
          Top = 35
          Width = 320
          Height = 21
          AutoDropDown = True
          BevelKind = bkSoft
          Color = 13565951
          Ctl3D = True
          DataField = 'FNOMCCC'
          DataSource = DM1.Src_For
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
        object DBEdit33: TDBEdit
          Left = 554
          Top = 33
          Width = 31
          Height = 21
          Color = 16760799
          Ctl3D = True
          DataField = 'FNATDCC'
          DataSource = DM1.Src_For
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
      inherited DBGrid1: TDBGrid
        Width = 769
        Height = 334
        DataSource = src_for
        TitleFont.Style = []
        OnDblClick = DBGrid1DblClick
        Columns = <
          item
            Expanded = False
            FieldName = 'FCODFOR'
            Width = 47
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FRAZAO'
            Width = 237
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'cgc_mask'
            Title.Alignment = taCenter
            Title.Caption = 'CGC/CPF'
            Width = 140
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FCIDADE'
            Title.Caption = 'Cidade'
            Width = 180
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FUF'
            Title.Caption = 'UF'
            Width = 28
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FDENOM'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FIE'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FNLOG'
            Width = 64
            Visible = True
          end>
      end
    end
    object tsconfiguracao: TTabSheet
      Caption = 'Configura'#231#245'es Master'
      ImageIndex = 5
      object cb_cnpj: TCheckBox
        Left = 7
        Top = 8
        Width = 161
        Height = 17
        Caption = 'Criticar CNPJ / CNPF'
        TabOrder = 0
      end
      object bb_master: TBitBtn
        Left = 232
        Top = 40
        Width = 257
        Height = 41
        Caption = '&Salvar Configura'#231#245'es Master'
        TabOrder = 1
        OnClick = bb_masterClick
        Glyph.Data = {
          A6080000424DA608000000000000360000002800000023000000140000000100
          1800000000007008000000000000000000000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFF000000FFFFFFFFFFFFF5F5F5F5F5F5F9F9F9F4F5F5EEEEEEE6E3E0E2E2
          E6DCD8D5DAD6D2DAD3CCDBD0C6E4D2C0EAD5C0ECDFCAEBDBC5EBDBC5ECDFCAE9
          D6C2E4D1BBE1D0BDDCCFC3DAD3CCDAD4CDE4E3E9E0DCDAF1EDE8F0F1F2F3F4F5
          F4F5F6F9F9F9F9FAFAFFFFFFFFFFFF000000F8F8F8EFEFEFF8F7F7F3F3F5ECED
          EEE6E6E7DED5D0D6CCC3D8D1C2EED4B7F8E5CDFFE4C1FEDFBBE7C6A3C8A481B7
          8561B67B5CB57B5CB78660C8A582E8C4A4FBDBBCFFE4C2F8E3C6F2D9BED7CAB6
          D8D0CADED5D2E7E6E8EEECEAF4F3F1F8F8F4EFEBE8FFFFFFFFFFFF000000F6F6
          F6F7F8F8F3F3F4EEEBE9E4E2DFDBD8D7E4D1BDFDF7E1FFE2BFCDA180995D3473
          31076A2B04743915905732A06A43AA7952AB79519C68418C542E723B146A2C06
          7435099A592FC49B7FFFE1B9FFF9E3E5CFB5E0D7CDE4E3E3EBEBE9E9EBEDF9FA
          FCF1F1F1FFFFFF000000F8F8F6F1F3F4E9E9E8E4E0DCE0D2C5EAD3C4EED0AE95
          4B29621D00743911AA7B54CA9C73E0AF87F4BA8EFCB97DFCC492FFC589FFCD9D
          FFC398F7BB8EEDB38ADAA97FC497729F76547A3E10641E00894524EECEA9E8D5
          C5DED2C4E5E0DAEFEDEBE9EAEAF8F9FBFFFFFF000000F3EEEDEBF0F1E6DDD7DF
          D3C7F8E9D6F8E4C96818008C6039B5896CDDAC80E6B087F2B88FFCBF8DFAC48C
          FFF4EDFEFFFEFFFFFFFAF0C0F7E5AEFAD5A6FCCC9CFCC192EDB487E7B281D4A5
          7BAE8267936837691300F8E1C7F8E9D8DFD4C8E5DED8EAECECFBF6F0FFFFFF00
          0000ECEDEDE9E1DCDEDAD3FAEDDDDBB49B732400A67E5CB88764DEAD80E4AD85
          F5BC8EFBBC80F6D7ADFAFFFFF7EFD2F5E3B2FAEADBF4D278FAE9BCF6E5B0F4D6
          A5F7CB9EFAC797ECB58BE5AA83E4B482B07E64A3815C6A2200DCB69CFBEFDEDE
          DAD3EAE1DBEBF0F4FFFFFF000000F0EEEBE6DDD7F2E8D9D7B699762F048C5027
          B78661E0B07EDFA67FEEB688F4B37BF9E8D2FDFBF6FADEB8F5E6BBF9ECC9F8E4
          B2F7EADEF5DA8BF8E5B3F6DDA9F7D19FF8C799F4BD8FEAB587DFA880D8A673B7
          8464935526742F02D2AE94F1E6DAE6DFD9F0ECE7FFFFFF000000ECE9E7F0E7DA
          E5D2C08F4C20804014A57955CC996DD4A179EAB588EDA76FFDEDDEFAECDDF7E5
          C4F9FAEAFDF8F3FCF6ECF5E6BBFBFDFFF9E5BDF3D390F7D7A8F7CE9FF3C395FA
          C396EDB78BE1A884D5A477C49266A478527F3D0F8F4E27E8D4BBEFE4D7EEEDEC
          FFFFFF000000ECE9E9FAF2E6BD997B6F27009E6A3EA6754FC5956FDFA67AD893
          61FFFFFDFFFFFFFADBC3F8D2AFF5C790F1C37DF7D4A5FFFFFFF7E7BDFCF6F2F6
          D3A2F4C689F6CC9CF6C194F5BC91EBB687E4AB82D0A27CCC9971A2744E9F673D
          6D2300BF987CFBF4E8EAE5E4FFFFFF000000F0F4F3F1E5D9A06A497A31029E6C
          42A37754CA976BD0A074E4B18BE2A270EDAA72F3B47EF6BC89F7C392F7C79DF5
          C891F1A969F5C9A5F7DDC0FBF7F4F2BC8FF6B988F6C095EAB485E4AD85DCA87E
          D9A370C79366A273509F6D437D3704996343EFE4D7F1F4F4FFFFFF000000F6F5
          F7EEE3D69B61427E3A089E6C42A3734FC29067D3A170D9A57DDEA980E0AA7FEA
          B388EDB78BF5BC92F6BF93F7C094F5C399FFFBF7FBE5D1F7D2AFFDEFDEEDAE7A
          E6AD7FE5B089D9A277E3AE85C4976BBD8A69A1724B9C683F7D350B9B6446EEE3
          D7F6F7F7FFFFFF000000FBFBF7F0F5F7B38C706D1C00A06A3D9E6C47BA8964C0
          8A66D3A170D7A579DBA87DDEAB81E1AC81E3AD84EBB489EEB689F0B88BEA9F62
          F7E6D1FCF7EFEDD0BFEDD5C4DFA070D8A175E2AF86C29362C18B6AB5865FA06F
          4A9E683A6B1F00B68465F3F8F7F8F4F5FFFFFF000000F3F3F1FFFFFFD3BEB17C
          390B8747189E6A3E9F734BB47F5CC7946EC5916BD19F71D8A374D8A279D8A478
          D8A479E0AA80E4AE82E4AE84DD9965E7C1A7F6EBDFF2E6DAE1C4A8C88E5AC392
          6ACB9570AC7B579F734F9C6A3F8848197D380BD5C2B5FEFCFEF6F7F5FFFFFF00
          0000FFFFFFF0F2F6FFFFFFB0866E6F2000945A2B9E714CA779569E6F4DBD8D65
          C18D68BA8763CC996BD39E6ED39E71D3A074D29F73D39F74D29F73CC8D57DDB5
          94F0E1DAFEF9FBD8B197A9683AA37A5AA07752A6714D935827712200AB806AFF
          FFFFF8F9F6F8F7F7FFFFFF000000FFFFFFFFFFFFFBFFFFFFFFFFA4745B631200
          A16A3D9A6B40A479559A6A49AF7F5ADFA56FD7A06DD39C6BD39C6BD39C6BD39C
          6BD29B6BD39B6AD5A06FCA874CD39C6CEDDAC7FFFFFFC4B29D7C3100AB7D5494
          61346C1B00A07058FFFFFFFBFDFDEAEAECFFFFFFFFFFFF000000FFFFFFFFFFFF
          FCFAF9FBFFFFFFFFFFBF9E88753000995E32985E2D996940B88B67F6D5BAD2A6
          86D7AD8ED9AF90D8AE90D8AE90D8AF90D8AF90D9AE8FD8B092D0A07BDFAF89DE
          C4B7FFFFFFE8DBCB702400843C09BA9988FFFFFFFAFCFBFCFBFBFFFFFFFFFFFF
          FFFFFF000000FFFFFFFFFFFFFFFFFFFFFEFEFBFCFDFFFFFF9B63485C0B007228
          00894E208C4E1CC9A384FFFFFAF1D6C5E4C3ACE0BEA8E1BFA5E1BFA6E1C0A9E7
          C7B1F6DCCCFFFFFACCAD916D24007F3801CEB5AC5800008C523BFFFFFFFBFAFA
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFBF9F93722713661200510000763600C5A685F8EEE4FF
          FFFFFFFFFFFFFFFFFFFFFFE5D9C8B8906D6F26005800006E1C0074270AA87F68
          FFFFFFFFFFFFFEFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0
          EBE6C5A59BA173648C54307A39107E3F1479380D7C3C128E5633A47768C7A99E
          EFEBE7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFF000000}
      end
      object cb_cep: TCheckBox
        Left = 7
        Top = 72
        Width = 161
        Height = 17
        Caption = 'Criticar Cep'
        TabOrder = 2
      end
      object cb_cidade: TCheckBox
        Left = 7
        Top = 55
        Width = 161
        Height = 17
        Caption = 'Criticar Cidade'
        TabOrder = 3
      end
      object cb_telefone: TCheckBox
        Left = 8
        Top = 23
        Width = 161
        Height = 17
        Caption = 'Criticar Telefone'
        TabOrder = 4
      end
      object cb_endereco: TCheckBox
        Left = 8
        Top = 38
        Width = 161
        Height = 17
        Caption = 'Criticar Endere'#231'o'
        TabOrder = 5
      end
      object cb_ver_cnpj: TCheckBox
        Left = 7
        Top = 88
        Width = 186
        Height = 17
        Caption = 'Verificar se j'#225' existe CNPJ / CPF'
        TabOrder = 6
      end
    end
  end
  inherited MANUT: TGroupBox
    Top = 526
    Width = 777
    Align = alNone
    Visible = False
    inherited INCLUIR: TBitBtn
      Width = 130
    end
    inherited ALTERAR: TBitBtn
      Left = 134
      Width = 130
    end
    inherited EXCLUIR: TBitBtn
      Left = 266
      Width = 130
    end
    inherited GRAVAR: TBitBtn
      Left = 398
      Width = 130
      OnClick = GRAVARClick
    end
    inherited CANCELAR: TBitBtn
      Left = 528
      Width = 130
    end
    object bbAniversariantes: TBitBtn
      Left = 657
      Top = 14
      Width = 127
      Height = 19
      Hint = 'Aniversariantes'
      Caption = '&Aniversariantes'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 5
      OnClick = bbAniversariantesClick
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
    object bbExpCli: TBitBtn
      Left = 655
      Top = 32
      Width = 127
      Height = 19
      Hint = 'Aniversariantes'
      Caption = 'Exporta Como Cliente'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 6
      OnClick = bbExpCliClick
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
    Top = 626
    Width = 777
    Align = alNone
    Visible = False
    inherited DBNavigator1: TDBNavigator
      Top = 15
      Width = 520
      Height = 38
    end
    inherited SAIR: TBitBtn
      Left = 655
      Top = 14
      Width = 130
    end
    object bbBloqVend: TBitBtn
      Left = 527
      Top = 15
      Width = 127
      Height = 37
      Hint = 'Aniversariantes'
      Caption = '&Bloqueios'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      OnClick = bbBloqVendClick
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
  object ToolBar1: TToolBar
    Left = 0
    Top = 0
    Width = 777
    Height = 30
    ButtonHeight = 23
    Caption = 'ToolBar1'
    TabOrder = 4
    object btn_novo: TBitBtn
      Left = 0
      Top = 2
      Width = 95
      Height = 23
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
      Height = 23
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
      Height = 23
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
      Height = 23
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
    object btn_cancelar: TBitBtn
      Left = 380
      Top = 2
      Width = 95
      Height = 23
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
      Width = 208
      Height = 23
      Cursor = crHandPoint
      Hint = 'Navega entre os registros selecionados'
      DataSource = DM1.Src_For
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
      Left = 683
      Top = 2
      Width = 95
      Height = 23
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
    Top = 426
    Width = 777
    Height = 26
    Align = alBottom
    BevelInner = bvLowered
    TabOrder = 5
    object BitBtn7: TBitBtn
      Left = 2
      Top = 3
      Width = 127
      Height = 21
      Cursor = crHandPoint
      Hint = 'Aniversariantes'
      Caption = '&Aniversariantes'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      Visible = False
      OnClick = bbAniversariantesClick
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
    object BitBtn8: TBitBtn
      Left = 130
      Top = 3
      Width = 127
      Height = 21
      Cursor = crHandPoint
      Hint = 'Aniversariantes'
      Caption = 'Exporta Como Cliente'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnClick = bbExpCliClick
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
    object bbProxima: TBitBtn
      Left = 709
      Top = 4
      Width = 66
      Height = 19
      Hint = 'Vai para a '#13#10'proxima tela'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      OnClick = bbProximaClick
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
      NumGlyphs = 2
    end
  end
  object src_for: TDataSource
    DataSet = DM1.Tb_For
    OnDataChange = src_forDataChange
    Left = 658
    Top = 213
  end
end
