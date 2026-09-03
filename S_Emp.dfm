inherited Frm_Emp: TFrm_Emp
  Left = 234
  Top = 93
  Width = 805
  Height = 638
  Caption = 'Manuten'#231#227'o no Cadastro de Empresas'
  FormStyle = fsNormal
  OldCreateOrder = True
  Visible = False
  OnCloseQuery = FormCloseQuery
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Top = 34
    Width = 797
    inherited lbl_emp: TLabel
      Left = 752
    end
    inherited BBnAtu: TBitBtn
      OnClick = BBnAtuClick
    end
    inherited Edit1: TMaskEdit
      AutoSelect = True
    end
  end
  inherited PC1: TPageControl
    Top = 63
    Width = 797
    Height = 477
    Cursor = crHandPoint
    inherited tsCad: TTabSheet
      object Label1: TLabel
        Left = 9
        Top = 4
        Width = 122
        Height = 13
        Caption = 'C'#243'digo da Empresa..:'
        FocusControl = DBEdit1
      end
      object Label2: TLabel
        Left = 9
        Top = 22
        Width = 124
        Height = 13
        Caption = 'Razao Social...........:'
        FocusControl = DBEdit2
      end
      object Label3: TLabel
        Left = 9
        Top = 41
        Width = 123
        Height = 13
        Caption = 'Nome de Fantasia....:'
        FocusControl = DBEdit3
      end
      object Label4: TLabel
        Left = 9
        Top = 59
        Width = 123
        Height = 13
        Caption = 'Endereco................:'
        FocusControl = DBEdit4
      end
      object Label5: TLabel
        Left = 9
        Top = 76
        Width = 122
        Height = 13
        Caption = 'Bairro.....................:'
        FocusControl = DBEdit5
      end
      object Label20: TLabel
        Left = 449
        Top = 59
        Width = 56
        Height = 13
        Caption = 'N'#250'mero..:'
        FocusControl = DBEdit20
      end
      object Label17: TLabel
        Left = 451
        Top = 77
        Width = 53
        Height = 13
        Caption = 'CEP......:'
        FocusControl = DBEdit17
      end
      object Label7: TLabel
        Left = 479
        Top = 92
        Width = 25
        Height = 13
        Caption = 'UF.:'
        FocusControl = DBE_UF
      end
      object Label6: TLabel
        Left = 9
        Top = 93
        Width = 124
        Height = 13
        Caption = 'Cidade....................:'
        FocusControl = DBE_CIDADE
      end
      object Label8: TLabel
        Left = 9
        Top = 112
        Width = 120
        Height = 13
        Caption = 'CNPJ.....................:'
        FocusControl = DBEdit8
      end
      object Label9: TLabel
        Left = 291
        Top = 111
        Width = 114
        Height = 13
        Caption = 'Inscricao Estadual.:'
        FocusControl = DBEdit9
      end
      object Label10: TLabel
        Left = 9
        Top = 250
        Width = 123
        Height = 13
        Caption = 'Telefone.................:'
        FocusControl = DBE_FONE
      end
      object Label18: TLabel
        Left = 526
        Top = 248
        Width = 71
        Height = 13
        Caption = 'Televendas:'
        FocusControl = DBEdit18
      end
      object Label12: TLabel
        Left = 9
        Top = 267
        Width = 120
        Height = 13
        Caption = 'E Mail....................:'
        FocusControl = db_email
      end
      object Label13: TLabel
        Left = 9
        Top = 288
        Width = 119
        Height = 13
        Caption = 'Nome do Presidente:'
        FocusControl = DBEdit13
      end
      object Label14: TLabel
        Left = 440
        Top = 284
        Width = 59
        Height = 13
        Caption = 'Telefone.:'
        FocusControl = DBEdit14
      end
      object Label16: TLabel
        Left = 440
        Top = 303
        Width = 59
        Height = 13
        Caption = 'Telefone.:'
        FocusControl = DBEdit16
      end
      object Label15: TLabel
        Left = 9
        Top = 304
        Width = 119
        Height = 13
        Caption = 'Diretor...................:'
        FocusControl = DBEdit15
      end
      object Label19: TLabel
        Left = 9
        Top = 321
        Width = 118
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Responsavel..........:'
        FocusControl = DBEdit19
      end
      object Label11: TLabel
        Left = 9
        Top = 340
        Width = 118
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Fun'#231#227'o..................:'
        FocusControl = DBEdit21
      end
      object Label21: TLabel
        Left = 11
        Top = 143
        Width = 119
        Height = 13
        Caption = 'Inscricao Municipal.:'
        FocusControl = DBE_inscmun
      end
      object Label22: TLabel
        Left = 8
        Top = 377
        Width = 122
        Height = 13
        Caption = 'Certif.Regularidade..:'
        FocusControl = DBEdit23
      end
      object Label23: TLabel
        Left = 443
        Top = 375
        Width = 59
        Height = 13
        Caption = 'Alv.Func.:'
        FocusControl = DBEdit24
      end
      object Label24: TLabel
        Left = 9
        Top = 395
        Width = 120
        Height = 13
        Caption = 'Autoriza'#231#227'o Func....:'
        FocusControl = DBEdit25
      end
      object Label25: TLabel
        Left = 443
        Top = 396
        Width = 57
        Height = 13
        Caption = 'Aut.Esp..:'
        FocusControl = DBEdit26
      end
      object Label26: TLabel
        Left = 383
        Top = 162
        Width = 121
        Height = 13
        Caption = 'No.JUCEG..............:'
        FocusControl = DBE_juceg
      end
      object Label29: TLabel
        Left = 421
        Top = 19
        Width = 86
        Height = 13
        Caption = 'Imp.Relat'#243'rios:'
        FocusControl = DBEdit30
      end
      object Label30: TLabel
        Left = 421
        Top = 39
        Width = 86
        Height = 13
        Caption = 'Imp.Relat'#243'rios:'
        FocusControl = DBEdit31
      end
      object Label31: TLabel
        Left = 10
        Top = 359
        Width = 115
        Height = 13
        Caption = 'Telefone...............:'
        FocusControl = DBE_FoneDir
      end
      object Label32: TLabel
        Left = 311
        Top = 248
        Width = 25
        Height = 13
        Caption = 'Fax:'
        FocusControl = DBE_juceg
      end
      object Label33: TLabel
        Left = 10
        Top = 128
        Width = 121
        Height = 13
        Caption = 'CNPF/Pessoa Fisica:'
        FocusControl = DBEdit8
      end
      object Label34: TLabel
        Left = 313
        Top = 128
        Width = 90
        Height = 13
        Caption = 'Registro Geral.:'
        FocusControl = DBEdit9
      end
      object Label35: TLabel
        Left = 435
        Top = 268
        Width = 70
        Height = 13
        Caption = 'Home Page:'
        FocusControl = db_home
      end
      object Label36: TLabel
        Left = 345
        Top = 148
        Width = 163
        Height = 13
        Caption = 'C'#243'digo do Servi'#231'o Prestado:'
        FocusControl = DBE_codserv
      end
      object Label37: TLabel
        Left = 11
        Top = 161
        Width = 120
        Height = 13
        Caption = 'CNAE da Empresa...:'
        FocusControl = DBE_CNAE
      end
      object Label45: TLabel
        Left = 4
        Top = 184
        Width = 166
        Height = 13
        Caption = 'C'#243'digo do Regime Tributario:'
        FocusControl = DBE_CNAE
      end
      object Label46: TLabel
        Left = 516
        Top = 185
        Width = 51
        Height = 13
        Caption = 'Suframa:'
        FocusControl = DBE_suframa
      end
      object Label47: TLabel
        Left = 4
        Top = 205
        Width = 182
        Height = 13
        Caption = 'tipo de atividade preponderante'
        FocusControl = DBE_CNAE
      end
      object Label54: TLabel
        Left = 389
        Top = 204
        Width = 161
        Height = 13
        Caption = 'Natureza da pessoa jur'#237'dica'
        FocusControl = DBE_CNAE
      end
      object Label55: TLabel
        Left = 443
        Top = 323
        Width = 28
        Height = 13
        Caption = 'CPF:'
        FocusControl = DBEdit6
      end
      object Label57: TLabel
        Left = 9
        Top = 228
        Width = 123
        Height = 13
        Caption = 'WhatsApp...............:'
        FocusControl = DBE_EMP_WHATSAPP_AUTO
      end
      object Label58: TLabel
        Left = 326
        Top = 225
        Width = 70
        Height = 13
        Caption = 'Session ID.:'
        FocusControl = DBE_EMP_WHATSAPP_ID
      end
      object DBEdit1: TDBEdit
        Left = 140
        Top = 0
        Width = 134
        Height = 19
        Ctl3D = False
        DataField = 'CODEMP'
        DataSource = DM2.Src_Emp
        Enabled = False
        ParentCtl3D = False
        TabOrder = 0
        OnExit = DBEdit1Exit
      end
      object DBEdit2: TDBEdit
        Left = 140
        Top = 18
        Width = 275
        Height = 19
        Ctl3D = False
        DataField = 'RAZAO'
        DataSource = DM2.Src_Emp
        ParentCtl3D = False
        TabOrder = 2
      end
      object DBEdit3: TDBEdit
        Left = 140
        Top = 36
        Width = 275
        Height = 19
        Ctl3D = False
        DataField = 'FANTASIA'
        DataSource = DM2.Src_Emp
        ParentCtl3D = False
        TabOrder = 4
      end
      object DBEdit4: TDBEdit
        Left = 140
        Top = 54
        Width = 275
        Height = 19
        Ctl3D = False
        DataField = 'ENDERECO'
        DataSource = DM2.Src_Emp
        ParentCtl3D = False
        TabOrder = 6
      end
      object DBEdit5: TDBEdit
        Left = 140
        Top = 72
        Width = 275
        Height = 19
        Ctl3D = False
        DataField = 'BAIRRO'
        DataSource = DM2.Src_Emp
        ParentCtl3D = False
        TabOrder = 8
      end
      object DBEdit20: TDBEdit
        Left = 512
        Top = 54
        Width = 134
        Height = 19
        Ctl3D = False
        DataField = 'NUMERO'
        DataSource = DM2.Src_Emp
        ParentCtl3D = False
        TabOrder = 7
      end
      object DBEdit17: TDBEdit
        Left = 512
        Top = 72
        Width = 121
        Height = 19
        Ctl3D = False
        DataField = 'CEP'
        DataSource = DM2.Src_Emp
        ParentCtl3D = False
        TabOrder = 9
      end
      object DBE_UF: TDBEdit
        Left = 512
        Top = 90
        Width = 30
        Height = 19
        Ctl3D = False
        DataField = 'UF'
        DataSource = DM2.Src_Emp
        ParentCtl3D = False
        TabOrder = 12
      end
      object DBE_CIDADE: TDBEdit
        Left = 198
        Top = 90
        Width = 217
        Height = 19
        Ctl3D = False
        DataField = 'CIDADE'
        DataSource = DM2.Src_Emp
        ParentCtl3D = False
        TabOrder = 11
      end
      object DBEdit8: TDBEdit
        Left = 140
        Top = 108
        Width = 134
        Height = 19
        Ctl3D = False
        DataField = 'CGC'
        DataSource = DM2.Src_Emp
        ParentCtl3D = False
        TabOrder = 13
      end
      object DBEdit9: TDBEdit
        Left = 407
        Top = 108
        Width = 264
        Height = 19
        Ctl3D = False
        DataField = 'INSCRICAO'
        DataSource = DM2.Src_Emp
        ParentCtl3D = False
        TabOrder = 14
      end
      object DBE_FAX: TDBEdit
        Left = 384
        Top = 245
        Width = 137
        Height = 19
        Ctl3D = False
        DataField = 'FAX'
        DataSource = DM2.Src_Emp
        ParentCtl3D = False
        TabOrder = 29
        OnExit = DBE_FAXExit
      end
      object DBE_FONE: TDBEdit
        Left = 140
        Top = 245
        Width = 169
        Height = 19
        Ctl3D = False
        DataField = 'FONE'
        DataSource = DM2.Src_Emp
        ParentCtl3D = False
        TabOrder = 28
        OnExit = DBE_FONEExit
      end
      object DBEdit18: TDBEdit
        Left = 600
        Top = 245
        Width = 150
        Height = 19
        Ctl3D = False
        DataField = 'TELEVENDAS'
        DataSource = DM2.Src_Emp
        ParentCtl3D = False
        TabOrder = 30
        OnExit = DBEdit18Exit
      end
      object db_email: TDBEdit
        Left = 140
        Top = 263
        Width = 293
        Height = 19
        Ctl3D = False
        DataField = 'E_MAIL'
        DataSource = DM2.Src_Emp
        ParentCtl3D = False
        TabOrder = 31
      end
      object DBEdit13: TDBEdit
        Left = 140
        Top = 281
        Width = 293
        Height = 19
        Ctl3D = False
        DataField = 'PRESID'
        DataSource = DM2.Src_Emp
        ParentCtl3D = False
        TabOrder = 33
      end
      object DBEdit14: TDBEdit
        Left = 503
        Top = 281
        Width = 161
        Height = 19
        Ctl3D = False
        DataField = 'FONEP'
        DataSource = DM2.Src_Emp
        ParentCtl3D = False
        TabOrder = 34
        OnExit = DBEdit14Exit
      end
      object DBEdit16: TDBEdit
        Left = 503
        Top = 299
        Width = 161
        Height = 19
        Ctl3D = False
        DataField = 'FONED'
        DataSource = DM2.Src_Emp
        ParentCtl3D = False
        TabOrder = 36
        OnExit = DBEdit16Exit
      end
      object DBEdit15: TDBEdit
        Left = 140
        Top = 299
        Width = 293
        Height = 19
        Ctl3D = False
        DataField = 'DIRETOR'
        DataSource = DM2.Src_Emp
        ParentCtl3D = False
        TabOrder = 35
      end
      object DBEdit19: TDBEdit
        Left = 140
        Top = 317
        Width = 293
        Height = 19
        Ctl3D = False
        DataField = 'RESPONS'
        DataSource = DM2.Src_Emp
        ParentCtl3D = False
        TabOrder = 37
      end
      object DBEdit21: TDBEdit
        Left = 140
        Top = 335
        Width = 161
        Height = 19
        Ctl3D = False
        DataField = 'FUNCAORES'
        DataSource = DM2.Src_Emp
        ParentCtl3D = False
        TabOrder = 39
      end
      object DBE_inscmun: TDBEdit
        Left = 140
        Top = 144
        Width = 170
        Height = 19
        Ctl3D = False
        DataField = 'INSCMUNIC'
        DataSource = DM2.Src_Emp
        ParentCtl3D = False
        TabOrder = 17
      end
      object DBEdit23: TDBEdit
        Left = 140
        Top = 371
        Width = 293
        Height = 19
        Ctl3D = False
        DataField = 'CERTREG'
        DataSource = DM2.Src_Emp
        ParentCtl3D = False
        TabOrder = 42
      end
      object DBEdit24: TDBEdit
        Left = 503
        Top = 373
        Width = 161
        Height = 19
        Ctl3D = False
        DataField = 'ALVFUNC'
        DataSource = DM2.Src_Emp
        ParentCtl3D = False
        TabOrder = 43
      end
      object DBEdit25: TDBEdit
        Left = 140
        Top = 389
        Width = 293
        Height = 19
        Ctl3D = False
        DataField = 'AUTFUNC'
        DataSource = DM2.Src_Emp
        ParentCtl3D = False
        TabOrder = 44
      end
      object DBEdit26: TDBEdit
        Left = 503
        Top = 391
        Width = 161
        Height = 19
        Ctl3D = False
        DataField = 'AUTESP'
        DataSource = DM2.Src_Emp
        ParentCtl3D = False
        TabOrder = 45
      end
      object DBE_juceg: TDBEdit
        Left = 512
        Top = 162
        Width = 177
        Height = 19
        Ctl3D = False
        DataField = 'JUCEG'
        DataSource = DM2.Src_Emp
        ParentCtl3D = False
        TabOrder = 23
      end
      object DBEdit30: TDBEdit
        Left = 512
        Top = 18
        Width = 239
        Height = 19
        Ctl3D = False
        DataField = 'RAZAO_CAB'
        DataSource = DM2.Src_Emp
        ParentCtl3D = False
        TabOrder = 3
      end
      object DBEdit31: TDBEdit
        Left = 512
        Top = 36
        Width = 239
        Height = 19
        Ctl3D = False
        DataField = 'FANTASIA_CAB'
        DataSource = DM2.Src_Emp
        ParentCtl3D = False
        TabOrder = 5
      end
      object DBCB_Fechamento: TDBCheckBox
        Left = 435
        Top = 356
        Width = 202
        Height = 17
        Caption = 'Permitir Fechamento Mensal'
        DataField = 'FECMEN'
        DataSource = DM2.Src_Emp
        TabOrder = 41
        ValueChecked = '0'
        ValueUnchecked = '1'
      end
      object DBE_FoneDir: TDBEdit
        Left = 140
        Top = 353
        Width = 161
        Height = 19
        Ctl3D = False
        DataField = 'FONERES'
        DataSource = DM2.Src_Emp
        ParentCtl3D = False
        TabOrder = 40
        OnExit = DBE_FoneDirExit
      end
      object DBCheckBox2: TDBCheckBox
        Left = 419
        Top = 0
        Width = 174
        Height = 17
        Caption = 'Movimentos Suspensos'
        DataField = 'BLOQ'
        DataSource = DM2.Src_Emp
        TabOrder = 1
        ValueChecked = '1'
        ValueUnchecked = '0'
      end
      object DBEdit33: TDBEdit
        Left = 140
        Top = 126
        Width = 134
        Height = 19
        Ctl3D = False
        DataField = 'CNPF'
        DataSource = DM2.Src_Emp
        ParentCtl3D = False
        TabOrder = 15
      end
      object DBEdit34: TDBEdit
        Left = 407
        Top = 126
        Width = 264
        Height = 19
        Ctl3D = False
        DataField = 'RG'
        DataSource = DM2.Src_Emp
        ParentCtl3D = False
        TabOrder = 16
      end
      object db_home: TDBEdit
        Left = 503
        Top = 263
        Width = 247
        Height = 19
        Ctl3D = False
        DataField = 'HOMEPAGE'
        DataSource = DM2.Src_Emp
        ParentCtl3D = False
        TabOrder = 32
      end
      object DBE_CODLOC: TDBEdit
        Left = 140
        Top = 90
        Width = 59
        Height = 19
        Ctl3D = False
        DataField = 'CODLOC'
        DataSource = DM2.Src_Emp
        ParentCtl3D = False
        TabOrder = 10
        OnExit = DBE_CODLOCExit
        OnKeyPress = DBE_CODLOCKeyPress
      end
      object DBE_codserv: TDBEdit
        Left = 512
        Top = 144
        Width = 85
        Height = 19
        Ctl3D = False
        DataField = 'CODSERV_PREST'
        DataSource = DM2.Src_Emp
        ParentCtl3D = False
        TabOrder = 18
      end
      object DBE_CNAE: TDBEdit
        Left = 140
        Top = 162
        Width = 211
        Height = 19
        Ctl3D = False
        DataField = 'EMP_CNAE'
        DataSource = DM2.Src_Emp
        ParentCtl3D = False
        TabOrder = 19
      end
      object DBCB_IncCultural: TDBCheckBox
        Left = 602
        Top = 145
        Width = 145
        Height = 17
        Alignment = taLeftJustify
        Caption = 'Incentivador Cultural'
        DataField = 'EMP_INC_CULTURAL'
        DataSource = DM2.Src_Emp
        TabOrder = 20
        ValueChecked = '2'
        ValueUnchecked = '1'
      end
      object RxDBCB_OPTSIMPLES: TRxDBComboBox
        Left = 177
        Top = 180
        Width = 330
        Height = 21
        Style = csDropDownList
        Ctl3D = True
        DataField = 'EMP_OPTSIMPLES'
        DataSource = DM2.Src_Emp
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
        TabOrder = 21
        Values.Strings = (
          '0'
          '1'
          '2'
          '3')
      end
      object DBE_suframa: TDBEdit
        Left = 572
        Top = 180
        Width = 211
        Height = 19
        Ctl3D = False
        DataField = 'EMP_SUFRAMA'
        DataSource = DM2.Src_Emp
        ParentCtl3D = False
        TabOrder = 22
      end
      object RxDBCBIND_ATIV: TRxDBComboBox
        Left = 191
        Top = 201
        Width = 193
        Height = 21
        Style = csDropDownList
        Ctl3D = True
        DataField = 'EMP_IND_ATIV'
        DataSource = DM2.Src_Emp
        EnableValues = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ItemHeight = 13
        Items.Strings = (
          '0 Industrial ou equiparado a industrial;'
          '1 Prestador de servi'#231'os;'
          '2 Atividade de com'#233'rcio;'
          '3 Atividade financeira;'
          '4 Atividade imobili'#225'ria;'
          '9 Outros')
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 24
        Values.Strings = (
          '0 '
          '1 '
          '2 '
          '3 '
          '4 '
          '9 ')
      end
      object RxDBCB_NAT_PJ: TRxDBComboBox
        Left = 556
        Top = 198
        Width = 191
        Height = 21
        Style = csDropDownList
        Ctl3D = True
        DataField = 'EMP_IND_ATIV'
        DataSource = DM2.Src_Emp
        EnableValues = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ItemHeight = 13
        Items.Strings = (
          '0 '#8211' Industrial ou equiparado a industrial;'
          '1 '#8211' Prestador de servi'#231'os;'
          '2 - Atividade de com'#233'rcio;'
          '3 '#8211' Atividade financeira;'
          '4 '#8211' Atividade imobili'#225'ria;'
          '9 '#8211' Outros')
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 25
        Values.Strings = (
          '0 '
          '1 '
          '2 '
          '3 '
          '4 '
          '9 ')
      end
      object DBEdit6: TDBEdit
        Left = 503
        Top = 317
        Width = 161
        Height = 19
        Ctl3D = False
        DataField = 'EMP_CPF_RESPONS'
        DataSource = DM2.Src_Emp
        ParentCtl3D = False
        TabOrder = 38
        OnExit = DBEdit6Exit
      end
      object DBE_EMP_WHATSAPP_AUTO: TDBEdit
        Left = 140
        Top = 224
        Width = 169
        Height = 19
        Ctl3D = False
        DataField = 'EMP_WHATSAPP_AUTO'
        DataSource = DM2.Src_Emp
        ParentCtl3D = False
        TabOrder = 26
        OnExit = DBE_EMP_WHATSAPP_AUTOExit
      end
      object DBE_EMP_WHATSAPP_ID: TDBEdit
        Left = 397
        Top = 221
        Width = 119
        Height = 19
        Ctl3D = False
        DataField = 'EMP_WHATSAPP_ID'
        DataSource = DM2.Src_Emp
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 27
        OnExit = DBE_FONEExit
      end
    end
    object tsContador: TTabSheet [1]
      Caption = 'Dados do Contador'
      Enabled = False
      ImageIndex = 1
      object Label27: TLabel
        Left = 9
        Top = 11
        Width = 122
        Height = 13
        Caption = 'Nome do Contador...:'
        FocusControl = DBE_CONT_NOME
      end
      object Label28: TLabel
        Left = 449
        Top = 14
        Width = 54
        Height = 13
        Caption = 'CRC......:'
        FocusControl = DBE_CONT_CRC
      end
      object Label38: TLabel
        Left = 9
        Top = 31
        Width = 123
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'CPF:'
      end
      object Label48: TLabel
        Left = 444
        Top = 31
        Width = 58
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'CNPJ:'
      end
      object Label39: TLabel
        Left = 260
        Top = 48
        Width = 80
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Endere'#231'o:'
      end
      object Label40: TLabel
        Left = 106
        Top = 67
        Width = 32
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'N'#250'm:'
      end
      object Label49: TLabel
        Left = 236
        Top = 66
        Width = 82
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Complemento:'
      end
      object Label50: TLabel
        Left = 489
        Top = 65
        Width = 51
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Bairro:'
      end
      object Label51: TLabel
        Left = 44
        Top = 85
        Width = 91
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'C'#243'd.Cidade::'
      end
      object Label52: TLabel
        Left = 6
        Top = 103
        Width = 125
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Telefone:'
      end
      object Label53: TLabel
        Left = 374
        Top = 101
        Width = 121
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Fax:'
      end
      object Label41: TLabel
        Left = 6
        Top = 121
        Width = 125
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'E-Mail:'
      end
      object Label42: TLabel
        Left = 7
        Top = 49
        Width = 125
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'CEP:'
      end
      object Label43: TLabel
        Left = 236
        Top = 84
        Width = 53
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Cidade:'
      end
      object Label44: TLabel
        Left = 547
        Top = 84
        Width = 82
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'UF:'
      end
      object Label56: TLabel
        Left = 6
        Top = 201
        Width = 363
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'CNPJ Autorizado  para obter XML:'
      end
      object DBE_CONT_NOME: TDBEdit
        Left = 140
        Top = 9
        Width = 293
        Height = 19
        Ctl3D = False
        DataField = 'CONTADOR'
        DataSource = DM2.Src_Emp
        ParentCtl3D = False
        TabOrder = 0
      end
      object DBE_CONT_CRC: TDBEdit
        Left = 510
        Top = 9
        Width = 161
        Height = 19
        Ctl3D = False
        DataField = 'CRC_CONTADOR'
        DataSource = DM2.Src_Emp
        ParentCtl3D = False
        TabOrder = 1
      end
      object DBE_CONT_CPF: TDBEdit
        Left = 140
        Top = 27
        Width = 293
        Height = 19
        Ctl3D = False
        DataField = 'EMP_CONT_CPF'
        DataSource = DM2.Src_Emp
        ParentCtl3D = False
        TabOrder = 2
      end
      object DBE_CONT_CNPJ: TDBEdit
        Left = 510
        Top = 27
        Width = 161
        Height = 19
        Ctl3D = False
        DataField = 'EMP_CONT_CNPJ'
        DataSource = DM2.Src_Emp
        ParentCtl3D = False
        TabOrder = 3
      end
      object DBE_CONT_ENDERECO: TDBEdit
        Left = 341
        Top = 45
        Width = 330
        Height = 19
        Ctl3D = False
        DataField = 'EMP_CONT_ENDER'
        DataSource = DM2.Src_Emp
        ParentCtl3D = False
        TabOrder = 5
      end
      object DBE_CONT_NUMERO: TDBEdit
        Left = 140
        Top = 63
        Width = 83
        Height = 19
        Ctl3D = False
        DataField = 'EMP_CONT_NUM_END'
        DataSource = DM2.Src_Emp
        ParentCtl3D = False
        TabOrder = 6
      end
      object DBE_CONT_COMPL: TDBEdit
        Left = 320
        Top = 63
        Width = 168
        Height = 19
        Ctl3D = False
        DataField = 'EMP_CONT_COMP_END'
        DataSource = DM2.Src_Emp
        ParentCtl3D = False
        TabOrder = 7
      end
      object DBE_CONT_CEP: TDBEdit
        Left = 140
        Top = 45
        Width = 116
        Height = 19
        Ctl3D = False
        DataField = 'EMP_CONT_CEP'
        DataSource = DM2.Src_Emp
        ParentCtl3D = False
        TabOrder = 4
      end
      object DBE_CONT_CODLOC: TDBEdit
        Left = 140
        Top = 81
        Width = 65
        Height = 19
        Ctl3D = False
        DataField = 'EMP_CONT_CODLOC'
        DataSource = DM2.Src_Emp
        ParentCtl3D = False
        TabOrder = 9
        OnExit = DBE_CONT_CODLOCExit
        OnKeyPress = DBE_CONT_CODLOCKeyPress
      end
      object DBE_CONT_FONE01: TDBEdit
        Left = 140
        Top = 99
        Width = 231
        Height = 19
        Ctl3D = False
        DataField = 'EMP_CONT_FONE'
        DataSource = DM2.Src_Emp
        ParentCtl3D = False
        TabOrder = 12
      end
      object DBE_CONT_FAX: TDBEdit
        Left = 503
        Top = 99
        Width = 168
        Height = 19
        Ctl3D = False
        DataField = 'EMP_CONT_FAX'
        DataSource = DM2.Src_Emp
        ParentCtl3D = False
        TabOrder = 13
      end
      object DBE_CONT_EMAIL: TDBEdit
        Left = 140
        Top = 117
        Width = 231
        Height = 19
        Ctl3D = False
        DataField = 'EMP_CONT_EMAIL'
        DataSource = DM2.Src_Emp
        ParentCtl3D = False
        TabOrder = 14
      end
      object DBE_CONT_BAIRRO: TDBEdit
        Left = 542
        Top = 63
        Width = 129
        Height = 19
        Ctl3D = False
        DataField = 'EMP_CONT_BAIRRO'
        DataSource = DM2.Src_Emp
        ParentCtl3D = False
        TabOrder = 8
      end
      object DBE_CONT_CIDADE: TDBEdit
        Left = 297
        Top = 81
        Width = 237
        Height = 19
        Ctl3D = False
        DataField = 'EMP_CONT_NOMLOC'
        DataSource = DM2.Src_Emp
        ParentCtl3D = False
        TabOrder = 10
      end
      object DBE_CONT_UF: TDBEdit
        Left = 634
        Top = 81
        Width = 37
        Height = 19
        Ctl3D = False
        DataField = 'EMP_CONT_UF'
        DataSource = DM2.Src_Emp
        ParentCtl3D = False
        TabOrder = 11
      end
      object DBE_EMP_AUTXML_CNPJCPF: TDBEdit
        Left = 372
        Top = 197
        Width = 231
        Height = 19
        Ctl3D = False
        DataField = 'EMP_AUTXML_CNPJCPF'
        DataSource = DM2.Src_Emp
        ParentCtl3D = False
        TabOrder = 15
        OnExit = DBE_EMP_AUTXML_CNPJCPFExit
      end
    end
    inherited tsTab: TTabSheet
      inherited DBGrid1: TDBGrid
        Width = 789
        Height = 449
        DataSource = DM2.Src_Emp
        OnDblClick = DBGrid1DblClick
        Columns = <
          item
            Expanded = False
            FieldName = 'CODEMP'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'RAZAO'
            Width = 330
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CIDADE'
            Width = 200
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'UF'
            Width = 64
            Visible = True
          end>
      end
    end
    object TabSheet1: TTabSheet
      Caption = 'TabSheet1'
      ImageIndex = 3
      object Label60: TLabel
        Left = 24
        Top = 56
        Width = 72
        Height = 13
        Caption = 'edtNrToText'
      end
      object lblText: TLabel
        Left = 352
        Top = 168
        Width = 39
        Height = 13
        Caption = 'lblText'
      end
      object Label62: TLabel
        Left = 24
        Top = 104
        Width = 72
        Height = 13
        Caption = 'edtNrToText'
      end
      object lblNumber: TLabel
        Left = 352
        Top = 200
        Width = 39
        Height = 13
        Caption = 'lblText'
      end
      object BitBtn2: TBitBtn
        Left = 240
        Top = 48
        Width = 75
        Height = 25
        Caption = 'BitBtn2'
        TabOrder = 0
        OnClick = BitBtn2Click
      end
      object edtNrToText: TEdit
        Left = 112
        Top = 48
        Width = 121
        Height = 21
        TabOrder = 1
        Text = 'edtNrToText'
      end
      object btnTextToNr: TButton
        Left = 232
        Top = 96
        Width = 75
        Height = 25
        Caption = 'btnTextToNr'
        TabOrder = 2
        OnClick = btnTextToNrClick
      end
      object edtTextToNr: TEdit
        Left = 112
        Top = 96
        Width = 121
        Height = 21
        TabOrder = 3
        Text = 'edtNrToText'
      end
    end
  end
  inherited MANUT: TGroupBox
    Top = 0
    Width = 797
    Height = 34
    Align = alTop
    Caption = ''
    inherited INCLUIR: TBitBtn
      Left = 0
      Top = 6
      Width = 95
      Height = 26
      Cursor = crHandPoint
      Layout = blGlyphLeft
    end
    inherited ALTERAR: TBitBtn
      Left = 94
      Top = 6
      Width = 95
      Height = 26
      Cursor = crHandPoint
      Layout = blGlyphLeft
    end
    inherited EXCLUIR: TBitBtn
      Left = 188
      Top = 6
      Width = 95
      Height = 26
      Cursor = crHandPoint
      Layout = blGlyphLeft
    end
    inherited GRAVAR: TBitBtn
      Left = 282
      Top = 6
      Width = 95
      Height = 26
      Cursor = crHandPoint
      OnClick = GRAVARClick
      Layout = blGlyphLeft
    end
    inherited CANCELAR: TBitBtn
      Left = 376
      Top = 6
      Width = 95
      Height = 26
      Cursor = crHandPoint
      Layout = blGlyphLeft
    end
    object DBNavigator2: TDBNavigator
      Left = 471
      Top = 7
      Width = 200
      Height = 25
      Cursor = crHandPoint
      DataSource = DM2.Src_Emp
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      TabOrder = 5
    end
    object BitBtn1: TBitBtn
      Left = 671
      Top = 7
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
  inherited GroupBox2: TGroupBox
    Top = 540
    Width = 797
    Height = 67
    Caption = ''
    inherited DBNavigator1: TDBNavigator
      Left = 2
      Top = 13
      Width = 260
      Height = 26
      Cursor = crHandPoint
      Visible = False
    end
    inherited SAIR: TBitBtn
      Left = 280
      Top = 12
      Width = 120
      Height = 27
      Cursor = crHandPoint
      Visible = False
      Layout = blGlyphLeft
    end
    object bbCriarParam: TBitBtn
      Left = 110
      Top = 12
      Width = 120
      Height = 27
      Cursor = crHandPoint
      Hint = 'Criar arquivo de parametros da empresa'
      Caption = '&Criar Param.'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      OnClick = bbCriarParamClick
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
    object MUDARC: TBitBtn
      Left = 2
      Top = 12
      Width = 108
      Height = 26
      Cursor = crHandPoint
      Hint = 'Muda o c'#243'digo da empresa atualiza todas as tabelas'
      Caption = 'Mudar C'#243'digo'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      OnClick = MUDARCClick
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
    object GroupBox1: TGroupBox
      Left = 428
      Top = 15
      Width = 367
      Height = 50
      Align = alRight
      Caption = 'WhatsApp:'
      TabOrder = 4
      object Label59: TLabel
        Left = 746
        Top = 18
        Width = 80
        Height = 13
        Caption = 'Fone Destino:'
        Visible = False
      end
      object bbIniciarSessao: TBitBtn
        Left = 140
        Top = 15
        Width = 130
        Height = 25
        Caption = 'Iniciar Sess'#227'o'
        TabOrder = 0
        OnClick = bbIniciarSessaoClick
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000130B0000130B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          33333333333333333333EEEEEEEEEEEEEEE333FFFFFFFFFFFFF3E00000000000
          00E337777777777777F3E0F77777777770E337F33333333337F3E0F333333333
          70E337F3333F333337F3E0F33303333370E337F3337FF33337F3E0F333003333
          70E337F33377FF3337F3E0F33300033370E337F333777FF337F3E0F333000033
          70E337F33377773337F3E0F33300033370E337F33377733337F3E0F333003333
          70E337F33377333337F3E0F33303333370E337F33373333337F3E0F333333333
          70E337F33333333337F3E0FFFFFFFFFFF0E337FFFFFFFFFFF7F3E00000000000
          00E33777777777777733EEEEEEEEEEEEEEE33333333333333333}
        NumGlyphs = 2
      end
      object bbFecharSessao: TBitBtn
        Left = 8
        Top = 15
        Width = 130
        Height = 25
        Caption = 'Fechar Sess'#227'o'
        TabOrder = 1
        OnClick = bbFecharSessaoClick
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          3333333333FFFFF3333333333000003333333333F777773FF333333008877700
          33333337733FFF773F33330887000777033333733F777FFF73F3308800000007
          703337F37777777FF7F33080000000007033373777777777F73F087000111000
          77037F3777333777FF7F08000111110007037F777F3333777F7F0F0001111100
          07037F777F3333777F7F0F000811110008037F777FF33377737F0F7000881000
          780373F777FFF777F373308000000000803337F77777777737F330F800000008
          8033373F777777733733330F8700078803333373FF77733F733333300FFF8800
          3333333773FFFF77333333333000003333333333377777333333}
        NumGlyphs = 2
      end
      object bbEnviarTexto: TBitBtn
        Left = 268
        Top = 14
        Width = 130
        Height = 25
        Caption = 'Enviar texto'
        TabOrder = 2
        Visible = False
        OnClick = bbEnviarTextoClick
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000130B0000130B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          33333333333333333333EEEEEEEEEEEEEEE333FFFFFFFFFFFFF3E00000000000
          00E337777777777777F3E0F77777777770E337F33333333337F3E0F333333333
          70E337F3333F333337F3E0F33303333370E337F3337FF33337F3E0F333003333
          70E337F33377FF3337F3E0F33300033370E337F333777FF337F3E0F333000033
          70E337F33377773337F3E0F33300033370E337F33377733337F3E0F333003333
          70E337F33377333337F3E0F33303333370E337F33373333337F3E0F333333333
          70E337F33333333337F3E0FFFFFFFFFFF0E337FFFFFFFFFFF7F3E00000000000
          00E33777777777777733EEEEEEEEEEEEEEE33333333333333333}
        NumGlyphs = 2
      end
      object bbEnviarArquivo: TBitBtn
        Left = 396
        Top = 14
        Width = 130
        Height = 25
        Caption = 'Enviar Arquivo'
        TabOrder = 3
        Visible = False
        OnClick = bbEnviarArquivoClick
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000130B0000130B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          33333333333333333333EEEEEEEEEEEEEEE333FFFFFFFFFFFFF3E00000000000
          00E337777777777777F3E0F77777777770E337F33333333337F3E0F333333333
          70E337F3333F333337F3E0F33303333370E337F3337FF33337F3E0F333003333
          70E337F33377FF3337F3E0F33300033370E337F333777FF337F3E0F333000033
          70E337F33377773337F3E0F33300033370E337F33377733337F3E0F333003333
          70E337F33377333337F3E0F33303333370E337F33373333337F3E0F333333333
          70E337F33333333337F3E0FFFFFFFFFFF0E337FFFFFFFFFFF7F3E00000000000
          00E33777777777777733EEEEEEEEEEEEEEE33333333333333333}
        NumGlyphs = 2
      end
      object edt_fone_dest: TEdit
        Left = 832
        Top = 16
        Width = 113
        Height = 21
        TabOrder = 4
        Text = '(62) 99653-7196'
        Visible = False
        OnExit = edt_fone_destExit
      end
      object edt_mensagem: TMemo
        Left = 528
        Top = 14
        Width = 209
        Height = 24
        Lines.Strings = (
          'edt_mensagem')
        TabOrder = 5
        Visible = False
      end
    end
  end
  object opd1: TOpenDialog
    Left = 1040
    Top = 547
  end
end
