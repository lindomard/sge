inherited Frm_Ven: TFrm_Ven
  Left = 200
  Top = 126
  Width = 802
  Height = 516
  Caption = 'Manuten'#231#227'o no Cadastro de Vendedores'
  FormStyle = fsNormal
  OldCreateOrder = True
  Visible = False
  OnCloseQuery = FormCloseQuery
  PixelsPerInch = 96
  TextHeight = 13
  inherited GroupBox2: TGroupBox [0]
    Top = 415
    Width = 697
    Align = alNone
    inherited DBNavigator1: TDBNavigator
      Left = 4
      Top = 14
      Width = 460
    end
    inherited SAIR: TBitBtn
      Left = 463
      Top = 14
      Width = 115
    end
  end
  inherited MANUT: TGroupBox [1]
    Top = 417
    Width = 697
    Align = alNone
    inherited INCLUIR: TBitBtn
      Width = 115
    end
    inherited ALTERAR: TBitBtn
      Left = 118
      Width = 115
    end
    inherited EXCLUIR: TBitBtn
      Left = 232
      Width = 115
    end
    inherited GRAVAR: TBitBtn
      Left = 346
      Width = 115
      OnClick = GRAVARClick
    end
    inherited CANCELAR: TBitBtn
      Left = 460
      Width = 115
    end
    object bbBloqueios: TBitBtn
      Left = 574
      Top = 14
      Width = 115
      Height = 37
      Hint = 'Ver Bloqueios'
      Caption = '&Bloqueios'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 5
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
      Layout = blGlyphTop
      NumGlyphs = 2
    end
  end
  inherited Panel1: TPanel [2]
    Top = 30
    Width = 786
    Height = 33
    inherited lbl_emp: TLabel
      Left = 741
      Height = 31
    end
    inherited Pesquisapor: TLabel
      Left = 6
      Top = 14
    end
    inherited BBnAtu: TBitBtn
      Left = 460
      Top = 8
      Width = 107
      Height = 21
      OnClick = BBnAtuClick
    end
    inherited CAMPO: TComboBox
      Top = 8
    end
    inherited Edit1: TMaskEdit
      Top = 8
      Width = 246
      OnChange = Edit1Change
    end
  end
  inherited PC1: TPageControl [3]
    Top = 63
    Width = 786
    Height = 415
    ActivePage = tsCad
    inherited tsCad: TTabSheet
      object Label1: TLabel
        Left = 5
        Top = 3
        Width = 116
        Height = 13
        Caption = 'C'#243'digo do Vendedor'
        FocusControl = edt_codven
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label2: TLabel
        Left = 143
        Top = 3
        Width = 109
        Height = 13
        Caption = 'Nome do Vendedor'
        FocusControl = edt_nome
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label4: TLabel
        Left = 4
        Top = 41
        Width = 59
        Height = 13
        Caption = 'Endere'#231'o:'
        FocusControl = DBEdit4
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label7: TLabel
        Left = 335
        Top = 40
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
      object Label8: TLabel
        Left = 2
        Top = 80
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
      object Label3: TLabel
        Left = 332
        Top = 80
        Width = 17
        Height = 13
        Caption = 'UF'
      end
      object Label13: TLabel
        Left = 359
        Top = 120
        Width = 82
        Height = 13
        Caption = 'Data Cadastro'
        FocusControl = DBEdit13
      end
      object Label12: TLabel
        Left = 240
        Top = 121
        Width = 110
        Height = 13
        Caption = 'Telefone Comercial'
        FocusControl = DBEdit12
      end
      object Label11: TLabel
        Left = 121
        Top = 121
        Width = 99
        Height = 13
        Caption = 'Fone Residencial'
        FocusControl = DBEdit11
      end
      object Label10: TLabel
        Left = 3
        Top = 121
        Width = 40
        Height = 13
        Caption = 'Celular'
        FocusControl = DBEdit10
      end
      object Label9: TLabel
        Left = 382
        Top = 81
        Width = 25
        Height = 13
        Caption = 'CEP'
        FocusControl = DBEdit9
      end
      object Label14: TLabel
        Left = 5
        Top = 160
        Width = 82
        Height = 13
        Caption = 'Registro Geral'
        FocusControl = DBEdit14
      end
      object Label15: TLabel
        Left = 315
        Top = 161
        Width = 24
        Height = 13
        Caption = 'CPF'
        FocusControl = DBEdit15
      end
      object Label38: TLabel
        Left = 429
        Top = 205
        Width = 119
        Height = 13
        Caption = 'Percentual Comiss'#227'o'
        FocusControl = DBEdit37
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label16: TLabel
        Left = 5
        Top = 204
        Width = 118
        Height = 13
        Caption = 'Ponto de Referencia'
        FocusControl = DBEdit16
      end
      object Label36: TLabel
        Left = 5
        Top = 244
        Width = 122
        Height = 13
        Caption = 'C'#243'digo do Supervisor'
        FocusControl = DBE_codsup
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label37: TLabel
        Left = 150
        Top = 244
        Width = 115
        Height = 13
        Caption = 'Nome do Supervisor'
        FocusControl = DBE_nomsup
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label17: TLabel
        Left = 5
        Top = 324
        Width = 75
        Height = 13
        Caption = 'Observacoes'
        FocusControl = DBMemo1
      end
      object Label5: TLabel
        Left = 4
        Top = 284
        Width = 102
        Height = 13
        Caption = 'C'#243'digo da Regiao'
        FocusControl = DBE_codreg
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label6: TLabel
        Left = 149
        Top = 284
        Width = 95
        Height = 13
        Caption = 'Nome da Regiao'
        FocusControl = DBE_nomreg
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object edt_codven: TDBEdit
        Left = 5
        Top = 19
        Width = 134
        Height = 21
        DataField = 'VCODVEN'
        DataSource = DM1.Src_Ven
        TabOrder = 0
        OnExit = edt_codvenExit
      end
      object edt_nome: TDBEdit
        Left = 142
        Top = 19
        Width = 300
        Height = 21
        DataField = 'VNOME'
        DataSource = DM1.Src_Ven
        TabOrder = 1
      end
      object DBEdit4: TDBEdit
        Left = 4
        Top = 57
        Width = 300
        Height = 21
        DataField = 'VLOG'
        DataSource = DM1.Src_Ven
        TabOrder = 2
      end
      object CODBAI: TDBEdit
        Left = 335
        Top = 57
        Width = 56
        Height = 21
        DataField = 'VCODBAI'
        DataSource = DM1.Src_Ven
        TabOrder = 3
        OnExit = CODBAIExit
        OnKeyPress = CODBAIKeyPress
      end
      object NOMLOC: TDBEdit
        Left = 69
        Top = 95
        Width = 234
        Height = 21
        DataField = 'VCIDADE'
        DataSource = DM1.Src_Ven
        TabOrder = 6
      end
      object ESTADO: TDBEdit
        Left = 325
        Top = 96
        Width = 53
        Height = 21
        DataField = 'VUF'
        DataSource = DM1.Src_Ven
        TabOrder = 7
      end
      object DBEdit13: TDBEdit
        Left = 358
        Top = 136
        Width = 100
        Height = 21
        DataField = 'VDTCAD'
        DataSource = DM1.Src_Ven
        Enabled = False
        ParentColor = True
        ReadOnly = True
        TabOrder = 18
      end
      object DBEdit12: TDBEdit
        Left = 239
        Top = 137
        Width = 115
        Height = 21
        DataField = 'VFONECOM'
        DataSource = DM1.Src_Ven
        TabOrder = 11
      end
      object DBEdit11: TDBEdit
        Left = 120
        Top = 137
        Width = 115
        Height = 21
        DataField = 'VFONERES'
        DataSource = DM1.Src_Ven
        TabOrder = 10
      end
      object DBEdit10: TDBEdit
        Left = 3
        Top = 137
        Width = 115
        Height = 21
        DataField = 'VCELULAR'
        DataSource = DM1.Src_Ven
        TabOrder = 9
      end
      object DBEdit9: TDBEdit
        Left = 382
        Top = 97
        Width = 121
        Height = 21
        DataField = 'VCEP'
        DataSource = DM1.Src_Ven
        TabOrder = 8
      end
      object DBEdit14: TDBEdit
        Left = 5
        Top = 176
        Width = 300
        Height = 21
        DataField = 'VRG'
        DataSource = DM1.Src_Ven
        TabOrder = 12
      end
      object DBEdit15: TDBEdit
        Left = 315
        Top = 177
        Width = 143
        Height = 21
        DataField = 'VCPF'
        DataSource = DM1.Src_Ven
        TabOrder = 13
        OnExit = DBEdit15Exit
        OnKeyPress = DBEdit15KeyPress
      end
      object DBEdit37: TDBEdit
        Left = 429
        Top = 221
        Width = 116
        Height = 21
        DataField = 'VCOMIS'
        DataSource = DM1.Src_Ven
        TabOrder = 15
        OnExit = DBEdit37Exit
        OnKeyPress = DBEdit37KeyPress
      end
      object DBEdit16: TDBEdit
        Left = 5
        Top = 221
        Width = 400
        Height = 21
        DataField = 'VPONTOR'
        DataSource = DM1.Src_Ven
        TabOrder = 14
      end
      object DBE_codsup: TDBEdit
        Left = 5
        Top = 260
        Width = 134
        Height = 21
        DataField = 'VCODSUP'
        DataSource = DM1.Src_Ven
        TabOrder = 16
        OnExit = DBE_codsupExit
        OnKeyPress = DBE_codsupKeyPress
      end
      object DBE_nomsup: TDBEdit
        Left = 150
        Top = 260
        Width = 300
        Height = 21
        DataField = 'nomsup'
        DataSource = DM1.Src_Ven
        Enabled = False
        ParentColor = True
        TabOrder = 17
      end
      object DBMemo1: TDBMemo
        Left = 5
        Top = 340
        Width = 400
        Height = 34
        DataField = 'VOBS'
        DataSource = DM1.Src_Ven
        TabOrder = 21
        OnKeyPress = DBMemo1KeyPress
      end
      object NOMBAI: TDBEdit
        Left = 392
        Top = 57
        Width = 205
        Height = 21
        DataField = 'VBAIRRO'
        DataSource = DM1.Src_Ven
        TabOrder = 4
      end
      object CODLOC: TDBEdit
        Left = 3
        Top = 95
        Width = 66
        Height = 21
        DataField = 'VCODLOC'
        DataSource = DM1.Src_Ven
        TabOrder = 5
        OnExit = CODLOCExit
        OnKeyPress = CODLOCKeyPress
      end
      object DBE_codreg: TDBEdit
        Left = 4
        Top = 300
        Width = 134
        Height = 21
        DataField = 'VCODREG'
        DataSource = DM1.Src_Ven
        TabOrder = 19
        OnExit = DBE_codregExit
        OnKeyPress = DBE_codregKeyPress
      end
      object DBE_nomreg: TDBEdit
        Left = 149
        Top = 300
        Width = 300
        Height = 21
        DataField = 'nomreg'
        DataSource = DM1.Src_Ven
        Enabled = False
        ParentColor = True
        TabOrder = 20
      end
      object gb_dispositivo: TGroupBox
        Left = 556
        Top = 79
        Width = 225
        Height = 280
        Caption = 'Sobre Disp.M'#243'vel/Pedido Eletronico:'
        Color = 8454016
        Ctl3D = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 23
        object Label18: TLabel
          Left = 7
          Top = 41
          Width = 142
          Height = 13
          Caption = 'Desconto M'#225'x.Permitido:'
          FocusControl = DBEdit7
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label19: TLabel
          Left = 3
          Top = 59
          Width = 146
          Height = 13
          Caption = 'Acr'#233'scimo M'#225'x.Permitido:'
          FocusControl = DBEdit8
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label165: TLabel
          Left = 8
          Top = 77
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
          Left = 12
          Top = 119
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
        object Label152: TLabel
          Left = 13
          Top = 164
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
        object DBCheckBox1: TDBCheckBox
          Left = 5
          Top = 19
          Width = 208
          Height = 17
          Alignment = taLeftJustify
          Caption = 'Aceitar Pre'#231'o Extra(digitado)'
          DataField = 'VDM_PCOEXTRA'
          DataSource = DM1.Src_Ven
          TabOrder = 0
          ValueChecked = '1'
          ValueUnchecked = '0'
        end
        object DBEdit7: TDBEdit
          Left = 149
          Top = 37
          Width = 66
          Height = 19
          DataField = 'VDM_DESCMAXITEM'
          DataSource = DM1.Src_Ven
          TabOrder = 1
        end
        object DBEdit8: TDBEdit
          Left = 149
          Top = 55
          Width = 66
          Height = 19
          DataField = 'VDM_ACREMAXITEM'
          DataSource = DM1.Src_Ven
          TabOrder = 2
        end
        object DBCb_pedele_pcopad: TDBComboBox
          Left = 8
          Top = 93
          Width = 205
          Height = 21
          DataField = 'VPEDELE_PRECO_PADRAO'
          DataSource = DM1.Src_Ven
          ItemHeight = 13
          Items.Strings = (
            'Pre'#231'o 01'
            'Pre'#231'o 01'
            'Pre'#231'o 02')
          TabOrder = 3
        end
        object dbe_acres: TDBEdit
          Left = 10
          Top = 137
          Width = 206
          Height = 19
          DataField = 'VPEDELE_AJUSTE_PRECO'
          DataSource = DM1.Src_Ven
          TabOrder = 4
        end
        object edt_senha: TEdit
          Left = 11
          Top = 184
          Width = 102
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          PasswordChar = '*'
          TabOrder = 5
        end
        object bbMostrar: TBitBtn
          Left = 129
          Top = 179
          Width = 88
          Height = 25
          Cursor = crHandPoint
          Caption = 'Mostrar Senha'
          TabOrder = 6
          TabStop = False
          Visible = False
          OnClick = bbMostrarClick
        end
        object DBCB_PEDELE_BLOQ: TDBCheckBox
          Left = 11
          Top = 207
          Width = 97
          Height = 17
          Caption = 'Bloqueado'
          DataField = 'VPEDELE_BLOQUEIO'
          DataSource = DM1.Src_Ven
          TabOrder = 7
          ValueChecked = 'S'
          ValueUnchecked = 'N'
        end
        object GroupBox4: TGroupBox
          Left = 1
          Top = 224
          Width = 223
          Height = 55
          Align = alBottom
          Caption = 'Motivo Bloqueio:'
          TabOrder = 8
          object DBMemo2: TDBMemo
            Left = 1
            Top = 14
            Width = 221
            Height = 40
            Align = alClient
            DataField = 'VPEDELE_MOT_BLOQUEIO'
            DataSource = DM1.Src_Ven
            TabOrder = 0
          end
        end
      end
      object bbProxima: TBitBtn
        Left = 664
        Top = 360
        Width = 115
        Height = 25
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
        NumGlyphs = 2
      end
      object gb_farmacia_popular: TGroupBox
        Left = 602
        Top = 1
        Width = 175
        Height = 73
        Caption = 'Farmacia Popuar'
        Color = 16754856
        Ctl3D = False
        ParentColor = False
        ParentCtl3D = False
        TabOrder = 22
        object Label20: TLabel
          Left = 8
          Top = 24
          Width = 48
          Height = 13
          Caption = 'Usu'#225'rio:'
        end
        object Label21: TLabel
          Left = 8
          Top = 44
          Width = 41
          Height = 13
          Caption = 'Senha:'
        end
        object DBE_FCIA_POPULAR_USUARIO: TDBEdit
          Left = 61
          Top = 20
          Width = 110
          Height = 19
          Ctl3D = False
          DataField = 'VFCIA_POPULAR_USUARIO'
          DataSource = DM1.Src_Ven
          ParentCtl3D = False
          TabOrder = 0
        end
        object edt_fp_senha: TEdit
          Left = 61
          Top = 38
          Width = 109
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          PasswordChar = '*'
          TabOrder = 1
        end
      end
    end
    object Tab_Ad: TTabSheet [1]
      Caption = '&Referencias'
      ImageIndex = 2
      object GroupBox1: TGroupBox
        Left = 3
        Top = 1
        Width = 539
        Height = 101
        Caption = 'Pessoais:'
        TabOrder = 0
        object HeaderControl1: THeaderControl
          Left = 2
          Top = 15
          Width = 535
          Height = 17
          Sections = <
            item
              ImageIndex = -1
              Text = 'Nome'
              Width = 350
            end
            item
              ImageIndex = -1
              Text = 'Telefone'
              Width = 200
            end>
        end
        object DBEdit17: TDBEdit
          Left = 2
          Top = 31
          Width = 348
          Height = 21
          DataField = 'VREFP01'
          DataSource = DM1.Src_Ven
          TabOrder = 1
        end
        object DBEdit18: TDBEdit
          Left = 350
          Top = 32
          Width = 186
          Height = 21
          DataField = 'VFREFP1'
          DataSource = DM1.Src_Ven
          TabOrder = 2
        end
        object DBEdit19: TDBEdit
          Left = 2
          Top = 53
          Width = 349
          Height = 21
          DataField = 'VREFP02'
          DataSource = DM1.Src_Ven
          TabOrder = 3
        end
        object DBEdit20: TDBEdit
          Left = 350
          Top = 54
          Width = 186
          Height = 21
          DataField = 'VFREFP2'
          DataSource = DM1.Src_Ven
          TabOrder = 4
        end
        object DBEdit21: TDBEdit
          Left = 2
          Top = 75
          Width = 349
          Height = 21
          DataField = 'VREFP03'
          DataSource = DM1.Src_Ven
          TabOrder = 5
        end
        object DBEdit22: TDBEdit
          Left = 350
          Top = 75
          Width = 186
          Height = 21
          DataField = 'VFREFP3'
          DataSource = DM1.Src_Ven
          TabOrder = 6
        end
      end
      object GB_Bancarias: TGroupBox
        Left = 3
        Top = 105
        Width = 539
        Height = 101
        Caption = 'Bancarias'
        TabOrder = 1
        object HeaderControl2: THeaderControl
          Left = 2
          Top = 15
          Width = 535
          Height = 17
          Sections = <
            item
              ImageIndex = -1
              Text = 'Nome'
              Width = 350
            end
            item
              ImageIndex = -1
              Text = 'Telefone'
              Width = 200
            end>
        end
        object DBEdit3: TDBEdit
          Left = 2
          Top = 31
          Width = 348
          Height = 21
          DataField = 'VREFB01'
          DataSource = DM1.Src_Ven
          TabOrder = 1
        end
        object DBEdit5: TDBEdit
          Left = 350
          Top = 32
          Width = 186
          Height = 21
          DataField = 'VFREFB1'
          DataSource = DM1.Src_Ven
          TabOrder = 2
        end
        object DBEdit6: TDBEdit
          Left = 2
          Top = 53
          Width = 348
          Height = 21
          DataField = 'VREFB02'
          DataSource = DM1.Src_Ven
          TabOrder = 3
        end
        object DBEdit35: TDBEdit
          Left = 350
          Top = 54
          Width = 186
          Height = 21
          DataField = 'VFREFB2'
          DataSource = DM1.Src_Ven
          TabOrder = 4
        end
        object DBEdit36: TDBEdit
          Left = 2
          Top = 75
          Width = 348
          Height = 21
          DataField = 'VREFB03'
          DataSource = DM1.Src_Ven
          TabOrder = 5
        end
        object DBEdit38: TDBEdit
          Left = 350
          Top = 75
          Width = 186
          Height = 21
          DataField = 'VFREFB3'
          DataSource = DM1.Src_Ven
          TabOrder = 6
        end
      end
      object gb_comerciais: TGroupBox
        Left = 3
        Top = 213
        Width = 540
        Height = 101
        Caption = 'Comerciais:'
        TabOrder = 2
        object HeaderControl3: THeaderControl
          Left = 2
          Top = 15
          Width = 536
          Height = 17
          Sections = <
            item
              ImageIndex = -1
              Text = 'Nome'
              Width = 350
            end
            item
              ImageIndex = -1
              Text = 'Telefone'
              Width = 200
            end>
        end
        object DBEdit23: TDBEdit
          Left = 2
          Top = 31
          Width = 348
          Height = 21
          DataField = 'VREFC01'
          DataSource = DM1.Src_Ven
          TabOrder = 1
        end
        object DBEdit24: TDBEdit
          Left = 350
          Top = 32
          Width = 186
          Height = 21
          DataField = 'VFREFC1'
          DataSource = DM1.Src_Ven
          TabOrder = 2
        end
        object DBEdit25: TDBEdit
          Left = 2
          Top = 53
          Width = 348
          Height = 21
          DataField = 'VREFC02'
          DataSource = DM1.Src_Ven
          TabOrder = 3
        end
        object DBEdit26: TDBEdit
          Left = 350
          Top = 54
          Width = 186
          Height = 21
          DataField = 'VFREFC2'
          DataSource = DM1.Src_Ven
          TabOrder = 4
        end
        object DBEdit27: TDBEdit
          Left = 2
          Top = 75
          Width = 348
          Height = 21
          DataField = 'VREFC03'
          DataSource = DM1.Src_Ven
          TabOrder = 5
        end
        object DBEdit28: TDBEdit
          Left = 350
          Top = 75
          Width = 186
          Height = 21
          DataField = 'VFREFC3'
          DataSource = DM1.Src_Ven
          TabOrder = 6
        end
      end
    end
    inherited tsTab: TTabSheet
      inherited DBGrid1: TDBGrid
        Width = 778
        Height = 387
        DataSource = DM1.Src_Ven
        OnDblClick = DBGrid1DblClick
        Columns = <
          item
            Expanded = False
            FieldName = 'VCODVEN'
            Width = 44
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VNOME'
            Width = 135
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VFONECOM'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VCIDADE'
            Title.Caption = 'Cidade'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VUF'
            Title.Caption = 'UF'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VCELULAR'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VFONERES'
            Width = 64
            Visible = True
          end>
      end
    end
  end
  object ToolBar1: TToolBar
    Left = 0
    Top = 0
    Width = 786
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
      TabOrder = 3
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
      TabOrder = 4
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
    object btn_bloqueio: TBitBtn
      Left = 425
      Top = 2
      Width = 85
      Height = 25
      Cursor = crHandPoint
      Hint = 'Ver Bloqueios'
      Caption = '&Bloqueios'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 5
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
    object DBNavigator2: TDBNavigator
      Left = 510
      Top = 2
      Width = 164
      Height = 25
      Cursor = crHandPoint
      Hint = 'Navega entre os registros selecionados'
      DataSource = DM1.Src_Ven
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      Hints.Strings = (
        'Primeiro Registro'
        'Registro Anterior'
        'Proximo Registro'
        #218'ltimo Registro')
      ParentShowHint = False
      ShowHint = True
      TabOrder = 6
    end
    object btn_sair: TBitBtn
      Left = 674
      Top = 2
      Width = 85
      Height = 25
      Cursor = crHandPoint
      Hint = 'Fecha Esta Janela'
      Caption = '&Sair'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 7
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
