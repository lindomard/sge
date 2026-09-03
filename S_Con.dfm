inherited Frm_Con: TFrm_Con
  Left = 129
  Top = 26
  Width = 759
  Height = 490
  Caption = 'Manuten'#231#227'o no Cadastro de Convenios'
  FormStyle = fsNormal
  OldCreateOrder = True
  Visible = False
  OnCloseQuery = FormCloseQuery
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Top = 33
    Width = 743
    Height = 33
    BevelInner = bvLowered
    inherited lbl_emp: TLabel
      Left = 697
      Top = 2
      Height = 29
    end
    inherited Pesquisapor: TLabel
      Top = 11
    end
    inherited BBnAtu: TBitBtn
      Left = 425
      Top = 7
      Height = 22
      OnClick = BBnAtuClick
    end
    inherited CAMPO: TComboBox
      Top = 8
    end
    inherited Edit1: TMaskEdit
      Top = 8
      Width = 212
      OnChange = Edit1Change
    end
  end
  inherited PC1: TPageControl
    Top = 66
    Width = 743
    Height = 386
    inherited tsCad: TTabSheet
      object Label2: TLabel
        Left = 9
        Top = 5
        Width = 125
        Height = 13
        Caption = 'C'#243'digo Convenio......:'
        FocusControl = edt_codcon
      end
      object Label3: TLabel
        Left = 9
        Top = 25
        Width = 128
        Height = 13
        Caption = 'Razao Social............:'
        FocusControl = edt_nomecv
      end
      object Label4: TLabel
        Left = 9
        Top = 46
        Width = 127
        Height = 13
        Caption = 'Nome de Fantasia.....:'
        FocusControl = DBEdit4
      end
      object Label5: TLabel
        Left = 9
        Top = 228
        Width = 128
        Height = 13
        Caption = 'Dia de Vencimento....:'
        FocusControl = DBEdit5
      end
      object Label6: TLabel
        Left = 9
        Top = 67
        Width = 127
        Height = 13
        Caption = 'Endere'#231'o.................:'
        FocusControl = DBEdit6
      end
      object Label8: TLabel
        Left = 395
        Top = 63
        Width = 58
        Height = 13
        Caption = 'Bairro.....:'
        FocusControl = NOMBAIRRO
      end
      object Label10: TLabel
        Left = 9
        Top = 85
        Width = 128
        Height = 13
        Caption = 'Cidade.....................:'
        FocusControl = NOMCID
      end
      object Label11: TLabel
        Left = 395
        Top = 87
        Width = 25
        Height = 13
        Caption = 'UF.:'
        FocusControl = ESTADO
      end
      object Label9: TLabel
        Left = 480
        Top = 87
        Width = 37
        Height = 13
        Caption = 'CEP..:'
        FocusControl = DBEdit9
      end
      object Label13: TLabel
        Left = 397
        Top = 107
        Width = 53
        Height = 13
        Caption = 'Fax.......:'
        FocusControl = DBEdit13
      end
      object Label12: TLabel
        Left = 9
        Top = 104
        Width = 127
        Height = 13
        Caption = 'Telefone..................:'
        FocusControl = DBEdit12
      end
      object Label14: TLabel
        Left = 9
        Top = 126
        Width = 127
        Height = 13
        Caption = 'E mail......................:'
        FocusControl = DBEdit14
      end
      object Label15: TLabel
        Left = 9
        Top = 144
        Width = 126
        Height = 13
        Caption = 'Responsavel............:'
        FocusControl = DBEdit15
      end
      object Label16: TLabel
        Left = 9
        Top = 165
        Width = 128
        Height = 13
        Caption = 'CPF.........................:'
        FocusControl = DBEdit16
      end
      object Label17: TLabel
        Left = 368
        Top = 168
        Width = 86
        Height = 13
        Caption = 'Registro Geral:'
        FocusControl = DBEdit17
      end
      object Label19: TLabel
        Left = 339
        Top = 188
        Width = 114
        Height = 13
        Caption = 'Inscricao Estadual.:'
        FocusControl = DBEdit19
      end
      object Label18: TLabel
        Left = 9
        Top = 185
        Width = 124
        Height = 13
        Caption = 'CNPJ......................:'
        FocusControl = DBEdit18
      end
      object Label27: TLabel
        Left = 9
        Top = 205
        Width = 125
        Height = 13
        Caption = 'C'#243'd Plano Vendas....:'
      end
      object Label28: TLabel
        Left = 332
        Top = 228
        Width = 115
        Height = 13
        Caption = '% Acresc. Financ...:'
        FocusControl = DBEdit27
      end
      object edt_codcon: TDBEdit
        Left = 136
        Top = 0
        Width = 134
        Height = 19
        Ctl3D = False
        DataField = 'CVCODCV'
        DataSource = DM1.Src_CV
        ParentCtl3D = False
        TabOrder = 0
      end
      object edt_nomecv: TDBEdit
        Left = 136
        Top = 20
        Width = 394
        Height = 19
        Ctl3D = False
        DataField = 'CVRAZAO'
        DataSource = DM1.Src_CV
        ParentCtl3D = False
        TabOrder = 1
      end
      object DBEdit4: TDBEdit
        Left = 136
        Top = 41
        Width = 394
        Height = 19
        Ctl3D = False
        DataField = 'CVFANTASIA'
        DataSource = DM1.Src_CV
        ParentCtl3D = False
        TabOrder = 2
      end
      object DBEdit5: TDBEdit
        Left = 136
        Top = 224
        Width = 34
        Height = 19
        Ctl3D = False
        DataField = 'CVDIAV'
        DataSource = DM1.Src_CV
        ParentCtl3D = False
        TabOrder = 20
      end
      object DBEdit6: TDBEdit
        Left = 136
        Top = 62
        Width = 220
        Height = 19
        Ctl3D = False
        DataField = 'CVNLOG'
        DataSource = DM1.Src_CV
        ParentCtl3D = False
        TabOrder = 3
      end
      object NOMBAIRRO: TDBEdit
        Left = 531
        Top = 62
        Width = 200
        Height = 19
        Ctl3D = False
        DataField = 'CVBAIRRO'
        DataSource = DM1.Src_CV
        ParentCtl3D = False
        TabOrder = 5
      end
      object NOMCID: TDBEdit
        Left = 201
        Top = 83
        Width = 188
        Height = 19
        Ctl3D = False
        DataField = 'CVCIDADE'
        DataSource = DM1.Src_CV
        ParentCtl3D = False
        TabOrder = 7
      end
      object ESTADO: TDBEdit
        Left = 432
        Top = 83
        Width = 30
        Height = 19
        Ctl3D = False
        DataField = 'CVUF'
        DataSource = DM1.Src_CV
        ParentCtl3D = False
        TabOrder = 8
      end
      object DBEdit9: TDBEdit
        Left = 534
        Top = 83
        Width = 121
        Height = 19
        Ctl3D = False
        DataField = 'CVCEP'
        DataSource = DM1.Src_CV
        ParentCtl3D = False
        TabOrder = 9
      end
      object DBEdit13: TDBEdit
        Left = 455
        Top = 103
        Width = 200
        Height = 19
        Ctl3D = False
        DataField = 'CVFAX'
        DataSource = DM1.Src_CV
        ParentCtl3D = False
        TabOrder = 11
      end
      object DBEdit12: TDBEdit
        Left = 136
        Top = 103
        Width = 220
        Height = 19
        Ctl3D = False
        DataField = 'CVFONE'
        DataSource = DM1.Src_CV
        ParentCtl3D = False
        TabOrder = 10
      end
      object DBEdit14: TDBEdit
        Left = 136
        Top = 123
        Width = 519
        Height = 19
        Ctl3D = False
        DataField = 'CVEMAIL'
        DataSource = DM1.Src_CV
        ParentCtl3D = False
        TabOrder = 12
      end
      object DBEdit15: TDBEdit
        Left = 136
        Top = 143
        Width = 519
        Height = 19
        Ctl3D = False
        DataField = 'CVRESP'
        DataSource = DM1.Src_CV
        ParentCtl3D = False
        TabOrder = 13
      end
      object DBEdit16: TDBEdit
        Left = 136
        Top = 164
        Width = 220
        Height = 19
        Ctl3D = False
        DataField = 'CVCPF'
        DataSource = DM1.Src_CV
        ParentCtl3D = False
        TabOrder = 14
      end
      object DBEdit17: TDBEdit
        Left = 455
        Top = 164
        Width = 200
        Height = 19
        Ctl3D = False
        DataField = 'CVCVRG'
        DataSource = DM1.Src_CV
        ParentCtl3D = False
        TabOrder = 15
      end
      object DBEdit19: TDBEdit
        Left = 455
        Top = 184
        Width = 200
        Height = 19
        Ctl3D = False
        DataField = 'CVIE'
        DataSource = DM1.Src_CV
        ParentCtl3D = False
        TabOrder = 17
      end
      object DBEdit18: TDBEdit
        Left = 136
        Top = 184
        Width = 134
        Height = 19
        Ctl3D = False
        DataField = 'CVCGC'
        DataSource = DM1.Src_CV
        ParentCtl3D = False
        TabOrder = 16
      end
      object DBEdit27: TDBEdit
        Left = 462
        Top = 225
        Width = 100
        Height = 19
        Ctl3D = False
        DataField = 'CVACFIN'
        DataSource = DM1.Src_CV
        ParentCtl3D = False
        TabOrder = 21
      end
      object GroupBox1: TGroupBox
        Left = 0
        Top = 241
        Width = 735
        Height = 74
        Align = alBottom
        Caption = 'Contatos:'
        TabOrder = 22
        object Label1: TLabel
          Left = 143
          Top = 6
          Width = 33
          Height = 13
          Caption = 'Nome'
        end
        object Label7: TLabel
          Left = 507
          Top = 6
          Width = 55
          Height = 13
          Caption = 'Telefone:'
        end
        object DBEdit20: TDBEdit
          Left = 144
          Top = 18
          Width = 300
          Height = 19
          Ctl3D = False
          DataField = 'CVCONT01'
          DataSource = DM1.Src_CV
          ParentCtl3D = False
          TabOrder = 0
        end
        object DBEdit22: TDBEdit
          Left = 144
          Top = 53
          Width = 300
          Height = 19
          Ctl3D = False
          DataField = 'CVCONT02'
          DataSource = DM1.Src_CV
          ParentCtl3D = False
          TabOrder = 4
        end
        object DBEdit24: TDBEdit
          Left = 144
          Top = 35
          Width = 300
          Height = 19
          Ctl3D = False
          DataField = 'CVCONT03'
          DataSource = DM1.Src_CV
          ParentCtl3D = False
          TabOrder = 2
        end
        object DBEdit25: TDBEdit
          Left = 508
          Top = 18
          Width = 197
          Height = 19
          Ctl3D = False
          DataField = 'CVFONC03'
          DataSource = DM1.Src_CV
          ParentCtl3D = False
          TabOrder = 1
        end
        object DBEdit23: TDBEdit
          Left = 508
          Top = 53
          Width = 197
          Height = 19
          Ctl3D = False
          DataField = 'CVFONC02'
          DataSource = DM1.Src_CV
          ParentCtl3D = False
          TabOrder = 5
        end
        object DBEdit21: TDBEdit
          Left = 508
          Top = 35
          Width = 197
          Height = 19
          Ctl3D = False
          DataField = 'CVFONC01'
          DataSource = DM1.Src_CV
          ParentCtl3D = False
          TabOrder = 3
        end
      end
      object GroupBox3: TGroupBox
        Left = 0
        Top = 315
        Width = 735
        Height = 43
        Align = alBottom
        Caption = 'Observa'#231'oes:'
        TabOrder = 23
        object DBMemo1: TDBMemo
          Left = 2
          Top = 15
          Width = 731
          Height = 26
          Align = alClient
          Ctl3D = False
          DataField = 'CVOBS'
          DataSource = DM1.Src_CV
          ParentCtl3D = False
          TabOrder = 0
        end
      end
      object CODLOC: TDBEdit
        Left = 136
        Top = 83
        Width = 65
        Height = 19
        Ctl3D = False
        DataField = 'CVCODLOC'
        DataSource = DM1.Src_CV
        ParentCtl3D = False
        TabOrder = 6
        OnExit = CODLOCExit
        OnKeyPress = CODLOCKeyPress
      end
      object CODBAI: TDBEdit
        Left = 460
        Top = 62
        Width = 70
        Height = 19
        Ctl3D = False
        DataField = 'CVCODBAI'
        DataSource = DM1.Src_CV
        ParentCtl3D = False
        TabOrder = 4
        OnExit = CODBAIExit
        OnKeyPress = CODBAIKeyPress
      end
      object DBComboBox1: TDBComboBox
        Left = 135
        Top = 203
        Width = 41
        Height = 21
        DataField = 'CVTABPV'
        DataSource = DM1.Src_CV
        ItemHeight = 13
        Items.Strings = (
          'AV'
          'AP'
          'PP')
        TabOrder = 18
      end
      object DBEdit3: TDBEdit
        Left = 177
        Top = 204
        Width = 80
        Height = 19
        Ctl3D = False
        DataField = 'CVCODPV'
        DataSource = DM1.Src_CV
        ParentCtl3D = False
        TabOrder = 19
      end
    end
    inherited tsTab: TTabSheet
      inherited DBGrid1: TDBGrid
        Width = 743
        Height = 351
        OnDblClick = DBGrid1DblClick
        Columns = <
          item
            Expanded = False
            FieldName = 'CVCODCV'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CVRAZAO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CVCIDADE'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CVUF'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CVFONE'
            Visible = True
          end>
      end
    end
  end
  inherited MANUT: TGroupBox
    Top = 471
    Width = 753
    Align = alNone
    Visible = False
    inherited INCLUIR: TBitBtn
      Width = 135
    end
    inherited ALTERAR: TBitBtn
      Left = 139
      Width = 135
    end
    inherited EXCLUIR: TBitBtn
      Left = 274
      Width = 135
    end
    inherited GRAVAR: TBitBtn
      Left = 410
      Width = 135
      OnClick = GRAVARClick
    end
    inherited CANCELAR: TBitBtn
      Left = 546
      Width = 135
    end
  end
  inherited GroupBox2: TGroupBox
    Top = 494
    Width = 753
    Align = alNone
    Visible = False
    inherited DBNavigator1: TDBNavigator
      Left = 5
      Top = 15
      Width = 540
    end
    inherited SAIR: TBitBtn
      Left = 546
      Top = 15
      Width = 135
    end
  end
  object ToolBar1: TToolBar
    Left = 0
    Top = 0
    Width = 743
    Height = 30
    ButtonHeight = 26
    Caption = 'ToolBar1'
    TabOrder = 4
    object btn_novo: TBitBtn
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
      Width = 184
      Height = 26
      Cursor = crHandPoint
      Hint = 'Navega entre os registros selecionados'
      DataSource = DM1.Src_CV
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
      Left = 659
      Top = 2
      Width = 95
      Height = 26
      Cursor = crHandPoint
      Hint = 'Fecha Esta Janela'
      Caption = '&Sair'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 5
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
    Top = 30
    Width = 743
    Height = 3
    Align = alTop
    Color = clActiveCaption
    TabOrder = 5
  end
end
