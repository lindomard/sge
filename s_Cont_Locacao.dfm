object Frm_Cont_Locacao: TFrm_Cont_Locacao
  Left = 164
  Top = 245
  Width = 768
  Height = 537
  Caption = 'Contrato de Loca'#231#227'o'
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
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel_navegar: TPanel
    Left = 0
    Top = 41
    Width = 760
    Height = 45
    Align = alTop
    BevelInner = bvLowered
    Color = 10813439
    TabOrder = 0
    object INCLUIR: TBitBtn
      Left = 2
      Top = 3
      Width = 85
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
      NumGlyphs = 2
      Spacing = 2
    end
    object ALTERAR: TBitBtn
      Left = 86
      Top = 3
      Width = 85
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
      NumGlyphs = 2
      Spacing = 2
    end
    object EXCLUIR: TBitBtn
      Left = 170
      Top = 3
      Width = 85
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
      NumGlyphs = 2
      Spacing = 2
    end
    object GRAVAR: TBitBtn
      Left = 254
      Top = 3
      Width = 85
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
      NumGlyphs = 2
      Spacing = 2
    end
    object CANCELAR: TBitBtn
      Left = 338
      Top = 3
      Width = 85
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
      NumGlyphs = 2
      Spacing = 2
    end
    object IMPRIMIR: TBitBtn
      Left = 422
      Top = 3
      Width = 85
      Height = 40
      Cursor = crHandPoint
      Hint = 'Visualiza o Contrato de Loca'#231#227'o'
      Caption = 'V&isualizar'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 6
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
      Left = 506
      Top = 3
      Width = 272
      Height = 40
      Cursor = crHandPoint
      DataSource = Src_Loca01
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      Hints.Strings = (
        'Primeiro Registro'
        'Registro Anterior'
        'Proximo Registro'
        #218'ltimo Registro')
      TabOrder = 1
    end
  end
  object Panel4: TPanel
    Left = 0
    Top = 0
    Width = 760
    Height = 41
    Align = alTop
    BevelInner = bvLowered
    Color = 12713921
    TabOrder = 1
    object Label4: TLabel
      Left = 26
      Top = 12
      Width = 83
      Height = 13
      Caption = 'Pesquisar Por:'
    end
    object CB_TIPO: TComboBox
      Left = 110
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
        'N'#250'mero do Contrato'
        'Pedido Origem')
    end
    object NOME: TEdit
      Left = 256
      Top = 8
      Width = 299
      Height = 21
      TabOrder = 1
    end
    object bbAtualizar: TBitBtn
      Left = 558
      Top = 9
      Width = 103
      Height = 21
      Cursor = crHandPoint
      Caption = '&Atualizar'
      TabOrder = 2
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
    object SAIR: TBitBtn
      Left = 677
      Top = 9
      Width = 103
      Height = 21
      Cursor = crHandPoint
      Hint = 'Sair do Programa'
      Caption = '&Sair'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
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
      Spacing = 2
    end
  end
  object PC1: TPageControl
    Left = 0
    Top = 86
    Width = 760
    Height = 420
    ActivePage = TsCad
    Align = alClient
    TabOrder = 2
    object TsCad: TTabSheet
      Caption = 'Dados Gerais'
      object Panel_CAB: TPanel
        Left = 0
        Top = 0
        Width = 752
        Height = 34
        Align = alTop
        Color = 16764108
        Enabled = False
        TabOrder = 0
        object Label1: TLabel
          Left = 140
          Top = 9
          Width = 32
          Height = 13
          Caption = 'Data:'
        end
        object Label2: TLabel
          Left = 293
          Top = 8
          Width = 105
          Height = 13
          Caption = 'Pedido de Origem:'
        end
        object Label3: TLabel
          Left = 528
          Top = 8
          Width = 118
          Height = 13
          Caption = 'N'#250'mero do Contrato:'
        end
        object Label12: TLabel
          Left = 5
          Top = 9
          Width = 41
          Height = 13
          Caption = 'Chave:'
        end
        object DBE_DATA: TDBDateEdit
          Left = 176
          Top = 6
          Width = 112
          Height = 21
          DataField = 'LC01_DATA'
          DataSource = Src_Loca01
          Ctl3D = False
          NumGlyphs = 2
          ParentCtl3D = False
          TabOrder = 0
        end
        object dbe_CHAVEPED: TDBEdit
          Left = 401
          Top = 7
          Width = 121
          Height = 19
          Ctl3D = False
          DataField = 'LC01_CHAVEPED'
          DataSource = Src_Loca01
          ParentCtl3D = False
          TabOrder = 1
          OnEnter = dbe_CHAVEPEDEnter
          OnExit = dbe_CHAVEPEDExit
        end
        object DBE_NUMCON: TDBEdit
          Left = 648
          Top = 7
          Width = 121
          Height = 19
          Ctl3D = False
          DataField = 'LC01_NUMCON'
          DataSource = Src_Loca01
          ParentCtl3D = False
          TabOrder = 2
        end
        object DBE_CHAVE: TDBEdit
          Left = 48
          Top = 7
          Width = 83
          Height = 19
          TabStop = False
          Color = 16764831
          Ctl3D = False
          DataField = 'LC01_CHAVE'
          DataSource = Src_Loca01
          ParentCtl3D = False
          TabOrder = 3
        end
      end
      object gb_cab: TGroupBox
        Left = 0
        Top = 34
        Width = 752
        Height = 216
        Align = alTop
        Caption = 'Dados do Locat'#225'rio:'
        Color = 16764108
        Ctl3D = False
        Enabled = False
        ParentColor = False
        ParentCtl3D = False
        TabOrder = 1
        object Label5: TLabel
          Left = 104
          Top = 20
          Width = 44
          Height = 13
          Caption = 'C'#243'digo:'
        end
        object Label6: TLabel
          Left = 89
          Top = 39
          Width = 59
          Height = 13
          Caption = 'Endere'#231'o:'
        end
        object Label7: TLabel
          Left = 75
          Top = 73
          Width = 73
          Height = 13
          Caption = 'Localiza'#231#227'o:'
        end
        object Label8: TLabel
          Left = 98
          Top = 111
          Width = 50
          Height = 13
          Caption = 'Per'#237'odo:'
        end
        object Label9: TLabel
          Left = 271
          Top = 110
          Width = 8
          Height = 13
          Caption = #224
        end
        object Label10: TLabel
          Left = 519
          Top = 111
          Width = 104
          Height = 13
          Caption = 'Valor do Contrato:'
        end
        object Label11: TLabel
          Left = 0
          Top = 129
          Width = 149
          Height = 13
          Caption = 'Condi'#231#245'es de Pagamento:'
        end
        object Label32: TLabel
          Left = 67
          Top = 146
          Width = 81
          Height = 13
          Caption = 'Observa'#231#227'o..:'
        end
        object DBE_CODCLI: TDBEdit
          Left = 150
          Top = 18
          Width = 104
          Height = 19
          Ctl3D = False
          DataField = 'LC01_CODCLI'
          DataSource = Src_Loca01
          ParentCtl3D = False
          TabOrder = 0
          OnExit = DBE_CODCLIExit
          OnKeyPress = DBE_CODCLIKeyPress
        end
        object DBE_NOMCLI: TDBEdit
          Left = 253
          Top = 18
          Width = 493
          Height = 19
          TabStop = False
          Color = 16764831
          Ctl3D = False
          DataField = 'CRAZAO'
          DataSource = Src_Loca01
          ParentCtl3D = False
          TabOrder = 1
        end
        object DBMemo1: TDBMemo
          Left = 150
          Top = 36
          Width = 596
          Height = 36
          TabStop = False
          Color = 16764831
          DataField = 'endereco'
          DataSource = Src_Loca01
          TabOrder = 2
        end
        object DBDateEdit2: TDBDateEdit
          Left = 150
          Top = 107
          Width = 112
          Height = 19
          DataField = 'LC01_DATA_INI'
          DataSource = Src_Loca01
          Ctl3D = False
          NumGlyphs = 2
          ParentCtl3D = False
          TabOrder = 3
        end
        object DBDateEdit3: TDBDateEdit
          Left = 286
          Top = 107
          Width = 112
          Height = 19
          DataField = 'LC01_DATA_FIN'
          DataSource = Src_Loca01
          Ctl3D = False
          NumGlyphs = 2
          ParentCtl3D = False
          TabOrder = 4
        end
        object DBE_VALCON: TDBEdit
          Left = 625
          Top = 107
          Width = 121
          Height = 19
          Ctl3D = False
          DataField = 'LC01_VALOR'
          DataSource = Src_Loca01
          ParentCtl3D = False
          TabOrder = 5
        end
        object DBE_FPGTO: TDBEdit
          Left = 150
          Top = 125
          Width = 596
          Height = 19
          Ctl3D = False
          DataField = 'LC01_FPGTO'
          DataSource = Src_Loca01
          ParentCtl3D = False
          TabOrder = 6
        end
        object DBMemo3: TDBMemo
          Left = 150
          Top = 143
          Width = 596
          Height = 68
          DataField = 'LC01_OBSERVACAO'
          DataSource = Src_Loca01
          MaxLength = 1000
          TabOrder = 7
        end
        object DBMemo2: TDBMemo
          Left = 150
          Top = 71
          Width = 596
          Height = 37
          DataField = 'LC01_LOCALIZACAO'
          DataSource = Src_Loca01
          MaxLength = 1000
          TabOrder = 8
        end
      end
      object gb_itens: TGroupBox
        Left = 0
        Top = 250
        Width = 752
        Height = 142
        Align = alClient
        Caption = #205'tens Locado:'
        TabOrder = 2
        object DBGrid1_Itens: TDBGrid
          Left = 2
          Top = 15
          Width = 748
          Height = 125
          Align = alClient
          DataSource = Src_Loca02
          PopupMenu = pop_excluir
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = [fsBold]
          OnColEnter = DBGrid1_ItensColEnter
          OnColExit = DBGrid1_ItensColExit
          OnExit = DBGrid1_ItensExit
          OnKeyPress = DBGrid1_ItensKeyPress
          Columns = <
            item
              Expanded = False
              FieldName = 'LC02_CODPRO'
              Width = 59
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'LC02_QUANT'
              Width = 74
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'LC02_NOME'
              Width = 365
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'LC02_COMPLEMENTO'
              Width = 218
              Visible = True
            end>
        end
      end
    end
    object tsLista: TTabSheet
      Caption = 'Lista'
      ImageIndex = 1
      object DBGrid1: TDBGrid
        Left = 0
        Top = 0
        Width = 774
        Height = 389
        Align = alClient
        DataSource = Src_Loca01
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
            FieldName = 'LC01_CHAVE'
            Width = 59
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CRAZAO'
            Width = 268
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'LC01_DATA'
            Width = 82
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'LC01_VALOR'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'LC01_NUMCON'
            Width = 89
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CCIDADE'
            Width = 141
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CUF'
            Width = 20
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CFONE01'
            Width = 101
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CFONE02'
            Width = 101
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'LC01_DATA_FIN'
            Width = 83
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'LC01_FPGTO'
            Visible = True
          end>
      end
    end
    object TsConfiguracoes: TTabSheet
      Caption = 'Configuracoes'
      ImageIndex = 2
      object Label13: TLabel
        Left = 0
        Top = 8
        Width = 155
        Height = 13
        Caption = 'Configura'#231#245'es do Relatorio'
      end
      object Label14: TLabel
        Left = 2
        Top = 30
        Width = 110
        Height = 13
        Caption = 'Nome do Relatorio:'
      end
      object Label15: TLabel
        Left = 114
        Top = 30
        Width = 299
        Height = 13
        Caption = 'pasta SGE\PASTADOCS\LOCACAO.RTF do servidor'
      end
      object gb_subst: TGroupBox
        Left = 8
        Top = 45
        Width = 393
        Height = 340
        Caption = 'Legenda de Textos a Serem Substituidos:'
        Color = 12303359
        ParentColor = False
        TabOrder = 0
        object Label16: TLabel
          Left = 8
          Top = 18
          Width = 275
          Height = 13
          Caption = '[RAZSOC] - Raz'#227'o Social ou Nome do Locatario'
        end
        object Label17: TLabel
          Left = 8
          Top = 34
          Width = 359
          Height = 13
          Caption = '[ENDERECO01] - Endere'#231'o Cidade-Uf, Endereco, Bairro e CEP'
        end
        object Label18: TLabel
          Left = 8
          Top = 49
          Width = 188
          Height = 13
          Caption = '[NUMCON] - N'#250'mero do Contrato'
        end
        object Label19: TLabel
          Left = 8
          Top = 65
          Width = 244
          Height = 13
          Caption = '[LOCALIZACAO] - Localiza'#231#227'o da Loca'#231#227'o'
        end
        object Label20: TLabel
          Left = 8
          Top = 81
          Width = 193
          Height = 13
          Caption = '[PERIODO] - Per'#237'odo da Loca'#231#227'o'
        end
        object Label21: TLabel
          Left = 8
          Top = 96
          Width = 161
          Height = 13
          Caption = '[VALOR] - Valor do Contrato'
        end
        object Label22: TLabel
          Left = 8
          Top = 112
          Width = 297
          Height = 13
          Caption = '[VALOR_EXTENSO] - Valor por Extenso do Contrato'
        end
        object Label23: TLabel
          Left = 8
          Top = 126
          Width = 224
          Height = 13
          Caption = '[FORMA_PGTO] - Forma de Pagamento'
        end
        object Label24: TLabel
          Left = 8
          Top = 140
          Width = 217
          Height = 13
          Caption = '[DATA_EXTENSO] - Data por Extenso'
        end
        object Label28: TLabel
          Left = 8
          Top = 155
          Width = 176
          Height = 13
          Caption = '[DOCUMENTO] - CNPJ ou CPF'
        end
        object Label29: TLabel
          Left = 8
          Top = 188
          Width = 254
          Height = 13
          Caption = '[FONES] - Numero ou Numeros de Telefones'
        end
        object Label30: TLabel
          Left = 8
          Top = 171
          Width = 199
          Height = 13
          Caption = '[DOCUMENTO2] - Inscri'#231#227'o ou RG'
        end
        object Label31: TLabel
          Left = 8
          Top = 204
          Width = 269
          Height = 13
          Caption = '[CELULAR] - Numero ou Numeros de Telefones'
        end
        object Label33: TLabel
          Left = 9
          Top = 218
          Width = 242
          Height = 13
          Caption = '[OBSERVACAO] - Observa'#231#227'o do Contrato'
        end
        object Label34: TLabel
          Left = 9
          Top = 234
          Width = 179
          Height = 13
          Caption = '[DATA_ENT] - Data de Entrega'
        end
        object Label35: TLabel
          Left = 9
          Top = 250
          Width = 196
          Height = 13
          Caption = '[DATA_DEV] - Data da Devolu'#231#227'o'
        end
        object Label38: TLabel
          Left = 9
          Top = 266
          Width = 184
          Height = 13
          Caption = '[DATA_CON] - Data do Contrato'
        end
      end
      object gb_macros: TGroupBox
        Left = 406
        Top = 46
        Width = 445
        Height = 339
        Caption = 'Indicadores a Serem Inseridos no Texto:'
        Color = 16751515
        ParentColor = False
        TabOrder = 1
        object Label27: TLabel
          Left = 6
          Top = 18
          Width = 340
          Height = 13
          Caption = '[ITENS_MODELO01] - Grade Com '#205'tens Locados Modelo 01'
        end
      end
    end
    object tsRelatorio1: TTabSheet
      Caption = 'Contrato de Loca'#231#227'o'
      ImageIndex = 3
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 766
        Height = 51
        Align = alTop
        TabOrder = 0
        object Label25: TLabel
          Left = 327
          Top = 4
          Width = 8
          Height = 13
          Caption = 'a'
        end
        object Label26: TLabel
          Left = 128
          Top = 6
          Width = 114
          Height = 13
          Caption = 'Selecionar Paginas:'
        end
        object txt_pagini: TEdit
          Left = 259
          Top = 3
          Width = 41
          Height = 19
          Ctl3D = False
          Enabled = False
          ParentCtl3D = False
          TabOrder = 0
        end
        object txt_pagfin: TEdit
          Left = 372
          Top = 3
          Width = 40
          Height = 19
          Ctl3D = False
          Enabled = False
          ParentCtl3D = False
          TabOrder = 1
        end
        object BitBtn1: TBitBtn
          Left = 427
          Top = 2
          Width = 241
          Height = 23
          Cursor = crHandPoint
          Hint = 'Imprimir a Licita'#231#227'o'
          Caption = '&Imprimir Somente Selcionadas'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 2
          OnClick = BitBtn1Click
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
      end
    end
    object tsRelatorio2: TTabSheet
      Caption = 'Montagem / Desmontagem'
      ImageIndex = 4
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 766
        Height = 51
        Align = alTop
        TabOrder = 0
        object Label36: TLabel
          Left = 327
          Top = 4
          Width = 8
          Height = 13
          Caption = 'a'
        end
        object Label37: TLabel
          Left = 128
          Top = 6
          Width = 114
          Height = 13
          Caption = 'Selecionar Paginas:'
        end
        object txt_pagini2: TEdit
          Left = 259
          Top = 3
          Width = 41
          Height = 19
          Ctl3D = False
          Enabled = False
          ParentCtl3D = False
          TabOrder = 0
        end
        object txt_pagfin2: TEdit
          Left = 372
          Top = 3
          Width = 40
          Height = 19
          Ctl3D = False
          Enabled = False
          ParentCtl3D = False
          TabOrder = 1
        end
        object BitBtn2: TBitBtn
          Left = 427
          Top = 2
          Width = 241
          Height = 23
          Cursor = crHandPoint
          Hint = 'Imprimir a Licita'#231#227'o'
          Caption = '&Imprimir Somente Selcionadas'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 2
          OnClick = BitBtn2Click
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
      end
    end
  end
  object Qr_Loca01: TQuery
    CachedUpdates = True
    OnCalcFields = Qr_Loca01CalcFields
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select * from CADLOCA01')
    UpdateObject = U_Loca01
    Left = 284
    Top = 296
    object Qr_Loca01endereco: TStringField
      FieldKind = fkCalculated
      FieldName = 'endereco'
      Size = 200
      Calculated = True
    end
    object Qr_Loca01documento: TStringField
      FieldKind = fkCalculated
      FieldName = 'documento'
      Size = 60
      Calculated = True
    end
    object Qr_Loca01fone: TStringField
      FieldKind = fkCalculated
      FieldName = 'fone'
      Size = 40
      Calculated = True
    end
    object Qr_Loca01documento2: TStringField
      FieldKind = fkCalculated
      FieldName = 'documento2'
      Size = 30
      Calculated = True
    end
    object Qr_Loca01LC01_CODEMP: TFloatField
      FieldName = 'LC01_CODEMP'
      Origin = 'SG_ASSOC.CADLOCA01.LC01_CODEMP'
    end
    object Qr_Loca01LC01_CHAVE: TFloatField
      FieldName = 'LC01_CHAVE'
      Origin = 'SG_ASSOC.CADLOCA01.LC01_CHAVE'
    end
    object Qr_Loca01LC01_NUMCON: TStringField
      FieldName = 'LC01_NUMCON'
      Origin = 'SG_ASSOC.CADLOCA01.LC01_NUMCON'
    end
    object Qr_Loca01LC01_DATA: TDateTimeField
      FieldName = 'LC01_DATA'
      Origin = 'SG_ASSOC.CADLOCA01.LC01_DATA'
    end
    object Qr_Loca01LC01_DATA_INI: TDateTimeField
      FieldName = 'LC01_DATA_INI'
      Origin = 'SG_ASSOC.CADLOCA01.LC01_DATA_INI'
    end
    object Qr_Loca01LC01_DATA_FIN: TDateTimeField
      FieldName = 'LC01_DATA_FIN'
      Origin = 'SG_ASSOC.CADLOCA01.LC01_DATA_FIN'
    end
    object Qr_Loca01LC01_DATA_DEV: TDateTimeField
      FieldName = 'LC01_DATA_DEV'
      Origin = 'SG_ASSOC.CADLOCA01.LC01_DATA_DEV'
    end
    object Qr_Loca01LC01_CODUSR_DEV: TFloatField
      FieldName = 'LC01_CODUSR_DEV'
      Origin = 'SG_ASSOC.CADLOCA01.LC01_CODUSR_DEV'
    end
    object Qr_Loca01LC01_CODCLI: TFloatField
      FieldName = 'LC01_CODCLI'
      Origin = 'SG_ASSOC.CADLOCA01.LC01_CODCLI'
    end
    object Qr_Loca01LC01_OBSERVACAO: TMemoField
      FieldName = 'LC01_OBSERVACAO'
      Origin = 'SG_ASSOC.CADLOCA01.LC01_OBSERVACAO'
      BlobType = ftMemo
      Size = 500
    end
    object Qr_Loca01LC01_CHAVEPED: TFloatField
      FieldName = 'LC01_CHAVEPED'
      Origin = 'SG_ASSOC.CADLOCA01.LC01_CHAVEPED'
    end
    object Qr_Loca01LC01_VALOR: TFloatField
      FieldName = 'LC01_VALOR'
      Origin = 'SG_ASSOC.CADLOCA01.LC01_VALOR'
    end
    object Qr_Loca01LC01_FPGTO: TStringField
      FieldName = 'LC01_FPGTO'
      Origin = 'SG_ASSOC.CADLOCA01.LC01_FPGTO'
      Size = 100
    end
    object Qr_Loca01LC01_DATHOR_INC: TDateTimeField
      FieldName = 'LC01_DATHOR_INC'
      Origin = 'SG_ASSOC.CADLOCA01.LC01_DATHOR_INC'
    end
    object Qr_Loca01LC01_CODUSR_INC: TFloatField
      FieldName = 'LC01_CODUSR_INC'
      Origin = 'SG_ASSOC.CADLOCA01.LC01_CODUSR_INC'
    end
    object Qr_Loca01LC01_DATHOR_ALT: TDateTimeField
      FieldName = 'LC01_DATHOR_ALT'
      Origin = 'SG_ASSOC.CADLOCA01.LC01_DATHOR_ALT'
    end
    object Qr_Loca01LC01_CODUSR_ALT: TFloatField
      FieldName = 'LC01_CODUSR_ALT'
      Origin = 'SG_ASSOC.CADLOCA01.LC01_CODUSR_ALT'
    end
    object Qr_Loca01LC01_LOCALIZACAO: TMemoField
      FieldName = 'LC01_LOCALIZACAO'
      Origin = 'SG_ASSOC.CADLOCA01.LC01_LOCALIZACAO'
      BlobType = ftMemo
      Size = 500
    end
    object Qr_Loca01CLOG: TStringField
      FieldKind = fkCalculated
      FieldName = 'CLOG'
      Size = 60
      Calculated = True
    end
    object Qr_Loca01CBAIRRO: TStringField
      FieldKind = fkCalculated
      FieldName = 'CBAIRRO'
      Size = 60
      Calculated = True
    end
    object Qr_Loca01CCIDADE: TStringField
      FieldKind = fkCalculated
      FieldName = 'CCIDADE'
      Size = 60
      Calculated = True
    end
    object Qr_Loca01CUF: TStringField
      FieldKind = fkCalculated
      FieldName = 'CUF'
      Size = 2
      Calculated = True
    end
    object Qr_Loca01CCEP: TStringField
      FieldKind = fkCalculated
      FieldName = 'CCEP'
      Size = 10
      Calculated = True
    end
    object Qr_Loca01CCNPJ: TFloatField
      FieldKind = fkCalculated
      FieldName = 'CCNPJ'
      Calculated = True
    end
    object Qr_Loca01CIE: TStringField
      FieldKind = fkCalculated
      FieldName = 'CIE'
      Size = 30
      Calculated = True
    end
    object Qr_Loca01CCPF: TFloatField
      FieldKind = fkCalculated
      FieldName = 'CCPF'
      Calculated = True
    end
    object Qr_Loca01CRG: TStringField
      FieldKind = fkCalculated
      FieldName = 'CRG'
      Size = 30
      Calculated = True
    end
    object Qr_Loca01CFONE01: TStringField
      FieldKind = fkCalculated
      FieldName = 'CFONE01'
      Calculated = True
    end
    object Qr_Loca01CFONE02: TStringField
      FieldKind = fkCalculated
      FieldName = 'CFONE02'
      Calculated = True
    end
    object Qr_Loca01CRAZAO: TStringField
      FieldKind = fkCalculated
      FieldName = 'CRAZAO'
      Size = 60
      Calculated = True
    end
    object Qr_Loca01CCELULAR: TStringField
      FieldKind = fkCalculated
      FieldName = 'CCELULAR'
      Calculated = True
    end
  end
  object Qr_Loca02: TQuery
    CachedUpdates = True
    AfterInsert = Qr_Loca02AfterInsert
    BeforeEdit = Qr_Loca02BeforeEdit
    BeforePost = Qr_Loca02BeforePost
    AfterPost = Qr_Loca02AfterPost
    BeforeCancel = Qr_Loca02BeforeCancel
    BeforeDelete = Qr_Loca02BeforeDelete
    AfterDelete = c
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select * from CADLOCA02')
    UpdateObject = U_Loca02
    Left = 420
    Top = 158
    object Qr_Loca02LC02_CODEMP: TFloatField
      FieldName = 'LC02_CODEMP'
      Origin = 'SG_ASSOC.CADLOCA02.LC02_CODEMP'
    end
    object Qr_Loca02LC02_CHAVE: TFloatField
      FieldName = 'LC02_CHAVE'
      Origin = 'SG_ASSOC.CADLOCA02.LC02_CHAVE'
    end
    object Qr_Loca02LC02_ITEM: TFloatField
      FieldName = 'LC02_ITEM'
      Origin = 'SG_ASSOC.CADLOCA02.LC02_ITEM'
    end
    object Qr_Loca02LC02_CODPRO: TFloatField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'LC02_CODPRO'
      Origin = 'SG_ASSOC.CADLOCA02.LC02_CODPRO'
    end
    object Qr_Loca02LC02_QUANT: TFloatField
      DisplayLabel = 'Quantidade'
      FieldName = 'LC02_QUANT'
      Origin = 'SG_ASSOC.CADLOCA02.LC02_QUANT'
    end
    object Qr_Loca02LC02_NOME: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'LC02_NOME'
      Origin = 'SG_ASSOC.CADLOCA02.LC02_NOME'
      Size = 100
    end
    object Qr_Loca02LC02_COMPLEMENTO: TStringField
      DisplayLabel = 'Complemento'
      FieldName = 'LC02_COMPLEMENTO'
      Origin = 'SG_ASSOC.CADLOCA02.LC02_COMPLEMENTO'
      Size = 100
    end
    object Qr_Loca02LC02_PU: TFloatField
      FieldName = 'LC02_PU'
      Origin = 'SG_ASSOC.CADLOCA02.LC02_PU'
    end
  end
  object Src_Loca01: TDataSource
    DataSet = Qr_Loca01
    OnDataChange = Src_Loca01DataChange
    Left = 324
    Top = 312
  end
  object Src_Loca02: TDataSource
    DataSet = Qr_Loca02
    Left = 516
    Top = 144
  end
  object pop_excluir: TPopupMenu
    Left = 567
    Top = 384
    object ExluirItem1: TMenuItem
      Caption = 'Exluir Item'
      OnClick = ExluirItem1Click
    end
  end
  object U_Loca02: TUpdateSQL
    ModifySQL.Strings = (
      'update CADLOCA02'
      'set'
      '  LC02_CODEMP = :LC02_CODEMP,'
      '  LC02_CHAVE = :LC02_CHAVE,'
      '  LC02_ITEM = :LC02_ITEM,'
      '  LC02_CODPRO = :LC02_CODPRO,'
      '  LC02_QUANT = :LC02_QUANT,'
      '  LC02_NOME = :LC02_NOME,'
      '  LC02_COMPLEMENTO = :LC02_COMPLEMENTO,'
      '  LC02_PU = :LC02_PU'
      'where'
      '  LC02_CODEMP = :OLD_LC02_CODEMP and'
      '  LC02_CHAVE = :OLD_LC02_CHAVE and'
      '  LC02_ITEM = :OLD_LC02_ITEM')
    InsertSQL.Strings = (
      'insert into CADLOCA02'
      '  (LC02_CODEMP, LC02_CHAVE, LC02_ITEM, LC02_CODPRO, LC02_QUANT, '
      'LC02_NOME, '
      '   LC02_COMPLEMENTO, LC02_PU)'
      'values'
      
        '  (:LC02_CODEMP, :LC02_CHAVE, :LC02_ITEM, :LC02_CODPRO, :LC02_QU' +
        'ANT, '
      ':LC02_NOME, '
      '   :LC02_COMPLEMENTO, :LC02_PU)')
    DeleteSQL.Strings = (
      'delete from CADLOCA02'
      'where'
      '  LC02_CODEMP = :OLD_LC02_CODEMP and'
      '  LC02_CHAVE = :OLD_LC02_CHAVE and'
      '  LC02_ITEM = :OLD_LC02_ITEM')
    Left = 544
    Top = 144
  end
  object U_Loca01: TUpdateSQL
    ModifySQL.Strings = (
      'update CADLOCA01'
      'set'
      '  LC01_CODEMP = :LC01_CODEMP,'
      '  LC01_CHAVE = :LC01_CHAVE,'
      '  LC01_NUMCON = :LC01_NUMCON,'
      '  LC01_DATA = :LC01_DATA,'
      '  LC01_DATA_INI = :LC01_DATA_INI,'
      '  LC01_DATA_FIN = :LC01_DATA_FIN,'
      '  LC01_DATA_DEV = :LC01_DATA_DEV,'
      '  LC01_CODUSR_DEV = :LC01_CODUSR_DEV,'
      '  LC01_CODCLI = :LC01_CODCLI,'
      '  LC01_OBSERVACAO = :LC01_OBSERVACAO,'
      '  LC01_CHAVEPED = :LC01_CHAVEPED,'
      '  LC01_VALOR = :LC01_VALOR,'
      '  LC01_FPGTO = :LC01_FPGTO,'
      '  LC01_DATHOR_INC = :LC01_DATHOR_INC,'
      '  LC01_CODUSR_INC = :LC01_CODUSR_INC,'
      '  LC01_DATHOR_ALT = :LC01_DATHOR_ALT,'
      '  LC01_CODUSR_ALT = :LC01_CODUSR_ALT,'
      '  LC01_LOCALIZACAO = :LC01_LOCALIZACAO'
      'where'
      '  LC01_CODEMP = :OLD_LC01_CODEMP and'
      '  LC01_CHAVE = :OLD_LC01_CHAVE and'
      '  LC01_DATA = :OLD_LC01_DATA and'
      '  LC01_CODCLI = :OLD_LC01_CODCLI')
    InsertSQL.Strings = (
      'insert into CADLOCA01'
      
        '  (LC01_CODEMP, LC01_CHAVE, LC01_NUMCON, LC01_DATA, LC01_DATA_IN' +
        'I, '
      'LC01_DATA_FIN, '
      
        '   LC01_DATA_DEV, LC01_CODUSR_DEV, LC01_CODCLI, LC01_OBSERVACAO,' +
        ' '
      'LC01_CHAVEPED, '
      '   LC01_VALOR, LC01_FPGTO, LC01_DATHOR_INC, LC01_CODUSR_INC, '
      'LC01_DATHOR_ALT, '
      '   LC01_CODUSR_ALT, LC01_LOCALIZACAO)'
      'values'
      '  (:LC01_CODEMP, :LC01_CHAVE, :LC01_NUMCON, :LC01_DATA, '
      ':LC01_DATA_INI, '
      
        '   :LC01_DATA_FIN, :LC01_DATA_DEV, :LC01_CODUSR_DEV, :LC01_CODCL' +
        'I, '
      ':LC01_OBSERVACAO, '
      '   :LC01_CHAVEPED, :LC01_VALOR, :LC01_FPGTO, :LC01_DATHOR_INC, '
      ':LC01_CODUSR_INC, '
      '   :LC01_DATHOR_ALT, :LC01_CODUSR_ALT, :LC01_LOCALIZACAO)')
    DeleteSQL.Strings = (
      'delete from CADLOCA01'
      'where'
      '  LC01_CODEMP = :OLD_LC01_CODEMP and'
      '  LC01_CHAVE = :OLD_LC01_CHAVE and'
      '  LC01_DATA = :OLD_LC01_DATA and'
      '  LC01_CODCLI = :OLD_LC01_CODCLI')
    Left = 364
    Top = 304
  end
end
