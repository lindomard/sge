inherited Frm_Assessor: TFrm_Assessor
  Top = 175
  VertScrollBar.Range = 0
  BorderStyle = bsSingle
  Caption = 'Manuten'#231#227'o no Cadastro de Assessor'
  ClientHeight = 358
  ClientWidth = 768
  Font.Style = []
  FormStyle = fsNormal
  OldCreateOrder = True
  Visible = False
  OnCloseQuery = FormCloseQuery
  PixelsPerInch = 96
  TextHeight = 13
  inherited GroupBox2: TGroupBox [0]
    Top = 297
    Width = 768
    Align = alNone
    inherited DBNavigator1: TDBNavigator
      Width = 556
    end
    inherited SAIR: TBitBtn
      Left = 565
      Width = 140
    end
  end
  inherited MANUT: TGroupBox [1]
    Top = 244
    Width = 768
    Align = alNone
    inherited INCLUIR: TBitBtn
      Width = 140
    end
    inherited ALTERAR: TBitBtn
      Left = 144
      Width = 140
    end
    inherited EXCLUIR: TBitBtn
      Left = 284
      Width = 140
    end
    inherited GRAVAR: TBitBtn
      Left = 424
      Width = 140
      OnClick = GRAVARClick
    end
    inherited CANCELAR: TBitBtn
      Left = 565
      Width = 140
    end
  end
  inherited Panel1: TPanel [2]
    Top = 30
    Width = 768
    Height = 33
    inherited lbl_emp: TLabel
      Left = 731
      Width = 36
      Height = 31
    end
    inherited Pesquisapor: TLabel
      Left = 7
      Top = 13
      Width = 67
    end
    inherited BBnAtu: TBitBtn
      Left = 455
      Top = 6
      Height = 22
      OnClick = BBnAtuClick
    end
    inherited CAMPO: TComboBox
      Top = 7
      Items.Strings = (
        'Nome'
        'C'#243'digo'
        'CNPJ'
        'CNPF'
        'Cidade'
        'Bairro'
        'Denomina'#231#227'o')
    end
    inherited Edit1: TMaskEdit
      Top = 7
      Width = 241
    end
  end
  inherited PC1: TPageControl [3]
    Top = 63
    Width = 768
    Height = 295
    ActivePage = tsCad
    Align = alTop
    inherited tsCad: TTabSheet
      object Label1: TLabel
        Left = 79
        Top = 15
        Width = 36
        Height = 13
        Caption = 'C'#243'digo:'
        FocusControl = edt_codas
      end
      object RAZAO: TLabel
        Left = 14
        Top = 35
        Width = 99
        Height = 13
        Caption = 'Nome/Raz'#227'o Social:'
        FocusControl = edt_nome
      end
      object NOMFAN: TLabel
        Left = 386
        Top = 37
        Width = 89
        Height = 13
        Caption = 'Nome de Fantasia:'
      end
      object Label3: TLabel
        Left = 60
        Top = 54
        Width = 52
        Height = 13
        Caption = 'Endereco.:'
      end
      object Label7: TLabel
        Left = 445
        Top = 52
        Width = 30
        Height = 13
        Caption = 'Bairro:'
      end
      object Label8: TLabel
        Left = 18
        Top = 71
        Width = 93
        Height = 13
        Caption = 'Localidade/Cidade:'
      end
      object Label4: TLabel
        Left = 430
        Top = 72
        Width = 45
        Height = 13
        Caption = 'Estado...:'
        FocusControl = DBEdit9
      end
      object Label9: TLabel
        Left = 612
        Top = 70
        Width = 27
        Height = 13
        Caption = 'CEP.:'
        FocusControl = DBEdit9
      end
      object Label55: TLabel
        Left = 22
        Top = 90
        Width = 89
        Height = 13
        Caption = 'Ponto Refer'#234'ncia.:'
      end
      object Label11: TLabel
        Left = 65
        Top = 108
        Width = 45
        Height = 13
        Caption = 'Fone 01.:'
      end
      object Label12: TLabel
        Left = 286
        Top = 107
        Width = 42
        Height = 13
        Caption = 'Fone 02:'
      end
      object Label51: TLabel
        Left = 451
        Top = 107
        Width = 20
        Height = 13
        Caption = 'Fax:'
      end
      object CNPJ: TLabel
        Left = 79
        Top = 126
        Width = 30
        Height = 13
        Caption = 'CNPJ:'
      end
      object IE: TLabel
        Left = 379
        Top = 126
        Width = 96
        Height = 13
        Caption = 'Inscricao Estadual..:'
      end
      object CNPF: TLabel
        Left = 84
        Top = 145
        Width = 23
        Height = 13
        Caption = 'CPF:'
        FocusControl = DB_CNPF
      end
      object rg: TLabel
        Left = 403
        Top = 141
        Width = 73
        Height = 13
        Caption = 'Registro Geral: '
      end
      object Label54: TLabel
        Left = 422
        Top = 169
        Width = 52
        Height = 13
        Caption = 'Natural de:'
      end
      object Label56: TLabel
        Left = 705
        Top = 169
        Width = 17
        Height = 13
        Caption = 'UF:'
      end
      object Label39: TLabel
        Left = 423
        Top = 187
        Width = 85
        Height = 13
        Caption = 'Data Nascimento:'
      end
      object Label2: TLabel
        Left = 423
        Top = 205
        Width = 48
        Height = 13
        Caption = 'Comiss'#227'o:'
      end
      object Label5: TLabel
        Left = 77
        Top = 226
        Width = 32
        Height = 13
        Caption = 'EMail.:'
      end
      object Label6: TLabel
        Left = 54
        Top = 243
        Width = 59
        Height = 13
        Caption = 'Home Page:'
      end
      object edt_codas: TDBEdit
        Left = 118
        Top = 14
        Width = 64
        Height = 19
        Ctl3D = False
        DataField = 'CACODASS'
        DataSource = DM2.Src_Assessor
        Enabled = False
        ParentCtl3D = False
        TabOrder = 0
        OnExit = edt_codasExit
      end
      object DBRadioGroup1: TDBRadioGroup
        Left = 265
        Top = -1
        Width = 257
        Height = 30
        Caption = 'Tipo de Pessoa:'
        Columns = 2
        Ctl3D = False
        DataField = 'CATPPESSOA'
        DataSource = DM2.Src_Assessor
        Items.Strings = (
          'F'#237'sica'
          'Juridica')
        ParentCtl3D = False
        TabOrder = 1
        Values.Strings = (
          '0'
          '1')
      end
      object edt_nome: TDBEdit
        Left = 118
        Top = 32
        Width = 244
        Height = 19
        Ctl3D = False
        DataField = 'CARAZAO'
        DataSource = DM2.Src_Assessor
        ParentCtl3D = False
        TabOrder = 2
      end
      object FANTASIA: TDBEdit
        Left = 481
        Top = 32
        Width = 197
        Height = 19
        Ctl3D = False
        DataField = 'CADENOM'
        DataSource = DM2.Src_Assessor
        ParentCtl3D = False
        TabOrder = 3
      end
      object DBEdit4: TDBEdit
        Left = 118
        Top = 50
        Width = 244
        Height = 19
        Ctl3D = False
        DataField = 'CAENDERECO'
        DataSource = DM2.Src_Assessor
        ParentCtl3D = False
        TabOrder = 4
      end
      object CODBAI: TDBEdit
        Left = 481
        Top = 50
        Width = 60
        Height = 19
        Ctl3D = False
        DataField = 'CACODBAI'
        DataSource = DM2.Src_Assessor
        ParentCtl3D = False
        TabOrder = 5
        Visible = False
        OnExit = CODBAIExit
        OnKeyPress = CODBAIKeyPress
      end
      object NOMBAI: TDBEdit
        Left = 546
        Top = 50
        Width = 195
        Height = 19
        Ctl3D = False
        DataField = 'CABAIRRO'
        DataSource = DM2.Src_Assessor
        ParentCtl3D = False
        TabOrder = 6
      end
      object CODLOC: TDBEdit
        Left = 118
        Top = 68
        Width = 60
        Height = 19
        Ctl3D = False
        DataField = 'CACODLOC'
        DataSource = DM2.Src_Assessor
        ParentCtl3D = False
        TabOrder = 7
        Visible = False
        OnExit = CODLOCExit
        OnKeyPress = CODLOCKeyPress
      end
      object NOMCID: TDBEdit
        Left = 177
        Top = 68
        Width = 185
        Height = 19
        Ctl3D = False
        DataField = 'CACIDADE'
        DataSource = DM2.Src_Assessor
        ParentCtl3D = False
        TabOrder = 8
      end
      object ESTADO: TDBEdit
        Left = 481
        Top = 68
        Width = 39
        Height = 19
        Ctl3D = False
        DataField = 'CAUF'
        DataSource = DM2.Src_Assessor
        ParentCtl3D = False
        TabOrder = 9
        OnExit = ESTADOExit
        OnKeyDown = ESTADOKeyDown
        OnKeyPress = ESTADOKeyPress
      end
      object DBEdit9: TDBEdit
        Left = 659
        Top = 68
        Width = 82
        Height = 19
        Ctl3D = False
        DataField = 'CACEP'
        DataSource = DM2.Src_Assessor
        ParentCtl3D = False
        TabOrder = 10
      end
      object DBEdit54: TDBEdit
        Left = 118
        Top = 86
        Width = 364
        Height = 19
        Ctl3D = False
        DataField = 'CAPONTOR'
        DataSource = DM2.Src_Assessor
        ParentCtl3D = False
        TabOrder = 11
      end
      object DBEdit5: TDBEdit
        Left = 118
        Top = 104
        Width = 106
        Height = 19
        Ctl3D = False
        DataField = 'CAFONE01'
        DataSource = DM2.Src_Assessor
        ParentCtl3D = False
        TabOrder = 12
      end
      object DBEdit10: TDBEdit
        Left = 335
        Top = 104
        Width = 106
        Height = 19
        Ctl3D = False
        DataField = 'CAFONE02'
        DataSource = DM2.Src_Assessor
        ParentCtl3D = False
        TabOrder = 13
      end
      object DBEdit93: TDBEdit
        Left = 481
        Top = 104
        Width = 112
        Height = 19
        Ctl3D = False
        DataField = 'CAFAX'
        DataSource = DM2.Src_Assessor
        ParentCtl3D = False
        TabOrder = 14
      end
      object DB_CNPJ: TDBEdit
        Left = 118
        Top = 122
        Width = 147
        Height = 19
        Ctl3D = False
        DataField = 'CACNPJ'
        DataSource = DM2.Src_Assessor
        ParentCtl3D = False
        TabOrder = 15
        OnExit = DB_CNPJExit
      end
      object DBEdit12: TDBEdit
        Left = 481
        Top = 122
        Width = 167
        Height = 19
        Ctl3D = False
        DataField = 'CAIE'
        DataSource = DM2.Src_Assessor
        ParentCtl3D = False
        TabOrder = 16
        OnExit = DBEdit12Exit
      end
      object DB_CNPF: TDBEdit
        Left = 118
        Top = 140
        Width = 147
        Height = 19
        Ctl3D = False
        DataField = 'CACPF'
        DataSource = DM2.Src_Assessor
        ParentCtl3D = False
        TabOrder = 17
        OnExit = DB_CNPFExit
      end
      object DBEdit20: TDBEdit
        Left = 481
        Top = 139
        Width = 167
        Height = 19
        Ctl3D = False
        DataField = 'CARG'
        DataSource = DM2.Src_Assessor
        ParentCtl3D = False
        TabOrder = 18
      end
      object GroupBox13: TGroupBox
        Left = 0
        Top = 161
        Width = 412
        Height = 58
        Caption = 'Filia'#231#227'o:'
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 19
        object Label10: TLabel
          Left = 8
          Top = 17
          Width = 18
          Height = 13
          Caption = 'Pai:'
        end
        object Label53: TLabel
          Left = 8
          Top = 37
          Width = 24
          Height = 13
          Caption = 'M'#227'e:'
        end
        object DBEdit11: TDBEdit
          Left = 41
          Top = 16
          Width = 366
          Height = 19
          Ctl3D = False
          DataField = 'CAFIL_PAI'
          DataSource = DM2.Src_Assessor
          ParentCtl3D = False
          TabOrder = 0
        end
        object DBEdit96: TDBEdit
          Left = 41
          Top = 34
          Width = 366
          Height = 19
          Ctl3D = False
          DataField = 'CAFIL_MAE'
          DataSource = DM2.Src_Assessor
          ParentCtl3D = False
          TabOrder = 1
        end
      end
      object DBEdit97: TDBEdit
        Left = 480
        Top = 166
        Width = 208
        Height = 19
        Ctl3D = False
        DataField = 'CANATURAL'
        DataSource = DM2.Src_Assessor
        ParentCtl3D = False
        TabOrder = 20
      end
      object DBEdit98: TDBEdit
        Left = 726
        Top = 166
        Width = 33
        Height = 19
        Ctl3D = False
        DataField = 'CANAT_UF'
        DataSource = DM2.Src_Assessor
        ParentCtl3D = False
        TabOrder = 21
      end
      object DBEdit65: TDBEdit
        Left = 520
        Top = 184
        Width = 100
        Height = 19
        Ctl3D = False
        DataField = 'datnas'
        DataSource = DM2.Src_Assessor
        ParentCtl3D = False
        TabOrder = 23
      end
      object DBEdit3: TDBEdit
        Left = 480
        Top = 202
        Width = 57
        Height = 19
        Ctl3D = False
        DataField = 'CACOMIS'
        DataSource = DM2.Src_Assessor
        ParentCtl3D = False
        TabOrder = 24
      end
      object DBEdit6: TDBEdit
        Left = 118
        Top = 222
        Width = 364
        Height = 19
        Ctl3D = False
        DataField = 'CAEMAIL'
        DataSource = DM2.Src_Assessor
        ParentCtl3D = False
        TabOrder = 25
      end
      object DBEdit7: TDBEdit
        Left = 118
        Top = 239
        Width = 364
        Height = 19
        Ctl3D = False
        DataField = 'CAHOME'
        DataSource = DM2.Src_Assessor
        ParentCtl3D = False
        TabOrder = 26
      end
      object dtnas: TMaskEdit
        Left = 534
        Top = 184
        Width = 99
        Height = 19
        Ctl3D = False
        EditMask = '!99/99/9999;1; '
        MaxLength = 10
        ParentCtl3D = False
        TabOrder = 22
        Text = '  /  /    '
        Visible = False
        OnExit = dtnasExit
      end
      object bbProxima: TBitBtn
        Left = 722
        Top = 220
        Width = 38
        Height = 47
        Cursor = crHandPoint
        Caption = 'Cont...'
        TabOrder = 27
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
    end
    object tab_ad: TTabSheet [1]
      Caption = '&Adicionais'
      Enabled = False
      ImageIndex = 1
      object GroupBox8: TGroupBox
        Left = 0
        Top = -1
        Width = 379
        Height = 92
        Caption = 'Referencias Comerciais:'
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 0
        object DBEdit39: TDBEdit
          Left = 3
          Top = 13
          Width = 371
          Height = 19
          Ctl3D = False
          DataField = 'CAREFCOM01'
          DataSource = DM2.Src_Assessor
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -10
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 0
        end
        object DBEdit45: TDBEdit
          Left = 3
          Top = 31
          Width = 371
          Height = 19
          Ctl3D = False
          DataField = 'CAREFCOM02'
          DataSource = DM2.Src_Assessor
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -10
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 1
        end
        object DBEdit46: TDBEdit
          Left = 3
          Top = 49
          Width = 371
          Height = 19
          Ctl3D = False
          DataField = 'CAREFCOM03'
          DataSource = DM2.Src_Assessor
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -10
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 2
        end
        object DBEdit47: TDBEdit
          Left = 3
          Top = 67
          Width = 371
          Height = 19
          Ctl3D = False
          DataField = 'CAREFCOM04'
          DataSource = DM2.Src_Assessor
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -10
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 3
        end
      end
      object GroupBox7: TGroupBox
        Left = 380
        Top = -1
        Width = 378
        Height = 92
        Caption = 'Referencias Bancarias:'
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 1
        object DBEdit48: TDBEdit
          Left = 3
          Top = 13
          Width = 371
          Height = 19
          Ctl3D = False
          DataField = 'CAREFBAN01'
          DataSource = DM2.Src_Assessor
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -10
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 0
        end
        object DBEdit49: TDBEdit
          Left = 3
          Top = 31
          Width = 371
          Height = 19
          Ctl3D = False
          DataField = 'CAREFBAN02'
          DataSource = DM2.Src_Assessor
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -10
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 1
        end
        object DBEdit50: TDBEdit
          Left = 3
          Top = 48
          Width = 371
          Height = 19
          Ctl3D = False
          DataField = 'CAREFBAN03'
          DataSource = DM2.Src_Assessor
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -10
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 2
        end
        object DBEdit51: TDBEdit
          Left = 3
          Top = 66
          Width = 371
          Height = 19
          Ctl3D = False
          DataField = 'CAREFBAN04'
          DataSource = DM2.Src_Assessor
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -10
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 3
        end
      end
      object GroupBox6: TGroupBox
        Left = 0
        Top = 92
        Width = 379
        Height = 92
        Caption = 'Referencias Pessoais:'
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 2
        object DBEdit52: TDBEdit
          Left = 3
          Top = 13
          Width = 371
          Height = 19
          Ctl3D = False
          DataField = 'CAREFPES01'
          DataSource = DM2.Src_Assessor
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -10
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 0
        end
        object DBEdit53: TDBEdit
          Left = 3
          Top = 31
          Width = 371
          Height = 19
          Ctl3D = False
          DataField = 'CAREFPES02'
          DataSource = DM2.Src_Assessor
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -10
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 1
        end
        object DBEdit55: TDBEdit
          Left = 3
          Top = 48
          Width = 371
          Height = 19
          Ctl3D = False
          DataField = 'CAREFPES03'
          DataSource = DM2.Src_Assessor
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -10
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 2
        end
        object DBEdit56: TDBEdit
          Left = 3
          Top = 66
          Width = 371
          Height = 19
          Ctl3D = False
          DataField = 'CAREFPES04'
          DataSource = DM2.Src_Assessor
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -10
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 3
        end
      end
      object GroupBox9: TGroupBox
        Left = 381
        Top = 91
        Width = 379
        Height = 92
        Caption = 'Observa'#231#245'es:'
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 3
        object DBEdit57: TDBEdit
          Left = 3
          Top = 13
          Width = 371
          Height = 19
          Ctl3D = False
          DataField = 'CAOBS01'
          DataSource = DM2.Src_Assessor
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -10
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 0
        end
        object DBEdit58: TDBEdit
          Left = 3
          Top = 31
          Width = 371
          Height = 19
          Ctl3D = False
          DataField = 'CAOBS02'
          DataSource = DM2.Src_Assessor
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -10
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 1
        end
        object DBEdit59: TDBEdit
          Left = 3
          Top = 48
          Width = 371
          Height = 19
          Ctl3D = False
          DataField = 'CAOBS03'
          DataSource = DM2.Src_Assessor
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -10
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 2
        end
        object DBEdit60: TDBEdit
          Left = 3
          Top = 66
          Width = 371
          Height = 19
          Ctl3D = False
          DataField = 'CAOBS04'
          DataSource = DM2.Src_Assessor
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -10
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 3
        end
      end
      object GroupBox10: TGroupBox
        Left = 1
        Top = 185
        Width = 379
        Height = 71
        Caption = 'Configura'#231#245'es do caixa para Pagamentos'
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 4
        object Label21: TLabel
          Left = 10
          Top = 31
          Width = 85
          Height = 13
          Caption = 'Centro de Custo..:'
        end
        object Label23: TLabel
          Left = 10
          Top = 15
          Width = 85
          Height = 13
          Caption = 'Departamento.....:'
        end
        object Label24: TLabel
          Left = 11
          Top = 49
          Width = 88
          Height = 13
          Caption = 'Desc.movimento..:'
        end
        object DBEdit22: TDBEdit
          Left = 116
          Top = 13
          Width = 68
          Height = 19
          Ctl3D = False
          DataField = 'CACODDEPD'
          DataSource = DM2.Src_Assessor
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 0
        end
        object DBEdit23: TDBEdit
          Left = 116
          Top = 31
          Width = 68
          Height = 19
          Ctl3D = False
          DataField = 'CACODCCD'
          DataSource = DM2.Src_Assessor
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 1
        end
        object DBEdit24: TDBEdit
          Left = 116
          Top = 49
          Width = 257
          Height = 19
          Ctl3D = False
          DataField = 'CADESCMVD'
          DataSource = DM2.Src_Assessor
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 2
        end
        object DBEdit25: TDBEdit
          Left = 185
          Top = 13
          Width = 188
          Height = 19
          Ctl3D = False
          DataField = 'CANOMDEPD'
          DataSource = DM2.Src_Assessor
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = True
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 3
        end
        object DBEdit26: TDBEdit
          Left = 185
          Top = 31
          Width = 166
          Height = 19
          Ctl3D = False
          DataField = 'CANOMCCD'
          DataSource = DM2.Src_Assessor
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = True
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 4
        end
        object DBEdit8: TDBEdit
          Left = 350
          Top = 31
          Width = 23
          Height = 19
          Ctl3D = False
          DataField = 'CANATDCD'
          DataSource = DM2.Src_Assessor
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = True
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 5
        end
      end
      object GroupBox11: TGroupBox
        Left = 384
        Top = 185
        Width = 376
        Height = 70
        Caption = 'Configura'#231#245'es do caixa Recebimentos'
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 5
        object Label32: TLabel
          Left = 11
          Top = 50
          Width = 88
          Height = 13
          Caption = 'Desc.movimento..:'
        end
        object Label33: TLabel
          Left = 10
          Top = 32
          Width = 85
          Height = 13
          Caption = 'Centro de Custo..:'
        end
        object Label34: TLabel
          Left = 10
          Top = 14
          Width = 85
          Height = 13
          Caption = 'Departamento.....:'
        end
        object DBEdit33: TDBEdit
          Left = 116
          Top = 12
          Width = 68
          Height = 19
          Ctl3D = False
          DataField = 'CACODDEPC'
          DataSource = DM2.Src_Assessor
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 0
        end
        object DBEdit34: TDBEdit
          Left = 116
          Top = 30
          Width = 68
          Height = 19
          Ctl3D = False
          DataField = 'CACODCCC'
          DataSource = DM2.Src_Assessor
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 1
        end
        object DBEdit35: TDBEdit
          Left = 116
          Top = 48
          Width = 257
          Height = 19
          Ctl3D = False
          DataField = 'CADESCMVC'
          DataSource = DM2.Src_Assessor
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 2
        end
        object DBEdit36: TDBEdit
          Left = 187
          Top = 12
          Width = 186
          Height = 19
          Ctl3D = False
          DataField = 'CANOMDEPC'
          DataSource = DM2.Src_Assessor
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = True
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 3
        end
        object DBEdit44: TDBEdit
          Left = 187
          Top = 30
          Width = 164
          Height = 19
          Ctl3D = False
          DataField = 'CANOMCCC'
          DataSource = DM2.Src_Assessor
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = True
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 4
        end
        object DBEdit13: TDBEdit
          Left = 350
          Top = 30
          Width = 23
          Height = 19
          Ctl3D = False
          DataField = 'CANATDCC'
          DataSource = DM2.Src_Assessor
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = True
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 5
        end
      end
    end
    inherited tsTab: TTabSheet
      inherited DBGrid1: TDBGrid
        Width = 760
        Height = 267
        DataSource = DM2.Src_Assessor
        TitleFont.Style = []
        OnDblClick = DBGrid1DblClick
        Columns = <
          item
            Expanded = False
            FieldName = 'CACODASS'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CARAZAO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CACIDADE'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CAUF'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CAFONE01'
            Width = 64
            Visible = True
          end>
      end
    end
  end
  object ToolBar1: TToolBar
    Left = 0
    Top = 0
    Width = 768
    Height = 30
    ButtonHeight = 25
    Caption = 'ToolBar1'
    TabOrder = 4
    object btn_incluir: TBitBtn
      Left = 0
      Top = 2
      Width = 90
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
      Left = 90
      Top = 2
      Width = 90
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
      Left = 180
      Top = 2
      Width = 90
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
      Left = 270
      Top = 2
      Width = 90
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
      Left = 360
      Top = 2
      Width = 90
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
      Left = 450
      Top = 2
      Width = 228
      Height = 25
      Cursor = crHandPoint
      Hint = 'Navega entre os registros selecionados'
      DataSource = DM2.Src_Assessor
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
      Left = 678
      Top = 2
      Width = 90
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
end
