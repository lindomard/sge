inherited Frm_Tra: TFrm_Tra
  Left = 92
  Top = 88
  Width = 737
  Height = 521
  Caption = 'Manuten'#231#227'o no Cadastro de Transportadoras'
  FormStyle = fsNormal
  OldCreateOrder = True
  Visible = False
  OnCloseQuery = FormCloseQuery
  PixelsPerInch = 96
  TextHeight = 13
  inherited MANUT: TGroupBox [0]
    Top = 315
    Width = 717
    Cursor = crHandPoint
    Align = alNone
    inherited INCLUIR: TBitBtn
      Width = 130
    end
    inherited ALTERAR: TBitBtn
      Left = 135
      Width = 130
    end
    inherited EXCLUIR: TBitBtn
      Left = 396
      Width = 130
    end
    inherited GRAVAR: TBitBtn
      Left = 265
      Width = 130
      OnClick = GRAVARClick
    end
    inherited CANCELAR: TBitBtn
      Left = 528
      Width = 130
    end
  end
  inherited GroupBox2: TGroupBox [1]
    Top = 368
    Width = 717
    Cursor = crHandPoint
    Align = alNone
    inherited DBNavigator1: TDBNavigator
      Top = 15
      Width = 520
      Height = 36
    end
    inherited SAIR: TBitBtn
      Left = 528
      Top = 14
      Width = 130
    end
  end
  inherited Panel1: TPanel [2]
    Top = 30
    Width = 721
    Height = 33
    Cursor = crHandPoint
    inherited lbl_emp: TLabel
      Left = 676
      Height = 31
    end
    inherited Pesquisapor: TLabel
      Top = 13
    end
    inherited BBnAtu: TBitBtn
      Left = 435
      Top = 6
      Height = 22
      OnClick = BBnAtuClick
    end
    inherited CAMPO: TComboBox
      Top = 7
      ItemIndex = 0
      Text = 'Nome'
      Items.Strings = (
        'Nome'
        'C'#243'digo'
        'Fantasia')
    end
    inherited Edit1: TMaskEdit
      Top = 7
      Width = 222
      OnChange = Edit1Change
    end
  end
  inherited PC1: TPageControl [3]
    Top = 63
    Width = 721
    Height = 420
    Cursor = crHandPoint
    ActivePage = TabSheet1
    inherited tsCad: TTabSheet
      object Label4: TLabel
        Left = 3
        Top = 1
        Width = 130
        Height = 13
        Caption = 'C'#243'digo Transportadora'
        FocusControl = edt_codtra
      end
      object Label5: TLabel
        Left = 139
        Top = 1
        Width = 76
        Height = 13
        Caption = 'Razao Social'
        FocusControl = edt_nome
      end
      object Label6: TLabel
        Left = 3
        Top = 40
        Width = 49
        Height = 13
        Caption = 'Fantasia'
        FocusControl = DBEdit3
      end
      object Label8: TLabel
        Left = 2
        Top = 81
        Width = 59
        Height = 13
        Caption = 'Endere'#231'o:'
        FocusControl = DBEdit5
      end
      object Label11: TLabel
        Left = 279
        Top = 81
        Width = 34
        Height = 13
        Caption = 'Bairro'
      end
      object Label15: TLabel
        Left = 392
        Top = 120
        Width = 25
        Height = 13
        Caption = 'CEP'
        FocusControl = DBEdit12
      end
      object Label7: TLabel
        Left = 364
        Top = 121
        Width = 17
        Height = 13
        Caption = 'UF'
      end
      object Label12: TLabel
        Left = 1
        Top = 121
        Width = 40
        Height = 13
        Caption = 'Cidade'
      end
      object Label18: TLabel
        Left = 357
        Top = 162
        Width = 24
        Height = 13
        Caption = 'CPF'
      end
      object Label19: TLabel
        Left = 507
        Top = 162
        Width = 82
        Height = 13
        Caption = 'Registro Geral'
      end
      object Label14: TLabel
        Left = 141
        Top = 162
        Width = 106
        Height = 13
        Caption = 'Inscri'#231'ao Estadual'
        FocusControl = DBEdit11
      end
      object Label13: TLabel
        Left = 2
        Top = 162
        Width = 32
        Height = 13
        Caption = 'CNPJ'
        FocusControl = DBEdit10
      end
      object Label16: TLabel
        Left = 527
        Top = 205
        Width = 100
        Height = 13
        Caption = 'Data do Cadastro'
      end
      object Label21: TLabel
        Left = 403
        Top = 203
        Width = 99
        Height = 13
        Caption = 'UF-Placa Veiculo'
      end
      object Label20: TLabel
        Left = 281
        Top = 205
        Width = 79
        Height = 13
        Caption = 'Placa Veiculo'
      end
      object Label10: TLabel
        Left = 141
        Top = 205
        Width = 21
        Height = 13
        Caption = 'Fax'
        FocusControl = DBEdit7
      end
      object Label9: TLabel
        Left = 1
        Top = 203
        Width = 59
        Height = 13
        Caption = 'Telefone.:'
        FocusControl = DBEdit6
      end
      object Label22: TLabel
        Left = -1
        Top = 240
        Width = 94
        Height = 13
        Caption = 'Endere'#231'o E-Mail'
        FocusControl = DBEdit19
      end
      object Label17: TLabel
        Left = 3
        Top = 278
        Width = 75
        Height = 13
        Caption = 'Observa'#231'oes'
      end
      object Label23: TLabel
        Left = 345
        Top = 243
        Width = 66
        Height = 13
        Caption = 'Home Page'
        FocusControl = DBEdit20
      end
      object edt_codtra: TDBEdit
        Left = 3
        Top = 17
        Width = 134
        Height = 21
        DataField = 'TRCODTRA'
        DataSource = DM1.Src_Tra
        Enabled = False
        TabOrder = 0
        OnExit = edt_codtraExit
      end
      object edt_nome: TDBEdit
        Left = 139
        Top = 17
        Width = 400
        Height = 21
        DataField = 'TRRAZTRA'
        DataSource = DM1.Src_Tra
        TabOrder = 1
      end
      object DBEdit3: TDBEdit
        Left = 3
        Top = 56
        Width = 400
        Height = 21
        DataField = 'TRFANTRA'
        DataSource = DM1.Src_Tra
        TabOrder = 2
      end
      object DBEdit5: TDBEdit
        Left = 2
        Top = 97
        Width = 264
        Height = 21
        DataField = 'TRNLOG'
        DataSource = DM1.Src_Tra
        TabOrder = 3
      end
      object NOMBAI: TDBEdit
        Left = 355
        Top = 97
        Width = 263
        Height = 21
        DataField = 'TRBAIRRO'
        DataSource = DM1.Src_Tra
        TabOrder = 5
      end
      object NOMLOC: TDBEdit
        Left = 77
        Top = 137
        Width = 271
        Height = 21
        DataField = 'TRCIDADE'
        DataSource = DM1.Src_Tra
        TabOrder = 7
      end
      object ESTADO: TDBEdit
        Left = 356
        Top = 137
        Width = 28
        Height = 21
        DataField = 'TRUF'
        DataSource = DM1.Src_Tra
        TabOrder = 8
      end
      object DBEdit12: TDBEdit
        Left = 389
        Top = 136
        Width = 121
        Height = 21
        DataField = 'TRCEP'
        DataSource = DM1.Src_Tra
        TabOrder = 9
      end
      object DBEdit10: TDBEdit
        Left = 2
        Top = 178
        Width = 134
        Height = 21
        DataField = 'TRCNPJ'
        DataSource = DM1.Src_Tra
        TabOrder = 10
      end
      object DBEdit11: TDBEdit
        Left = 141
        Top = 178
        Width = 212
        Height = 21
        DataField = 'TRIE'
        DataSource = DM1.Src_Tra
        TabOrder = 11
      end
      object DBEdit17: TDBEdit
        Left = 356
        Top = 178
        Width = 127
        Height = 21
        DataField = 'TRCNPF'
        DataSource = DM1.Src_Tra
        TabOrder = 12
      end
      object DBEdit18: TDBEdit
        Left = 486
        Top = 178
        Width = 140
        Height = 21
        DataField = 'TRRG'
        DataSource = DM1.Src_Tra
        TabOrder = 13
      end
      object DBEdit9: TDBEdit
        Left = 403
        Top = 221
        Width = 121
        Height = 21
        DataField = 'TRUFPV'
        DataSource = DM1.Src_Tra
        TabOrder = 17
      end
      object DBEdit8: TDBEdit
        Left = 278
        Top = 221
        Width = 121
        Height = 21
        DataField = 'TRPLACAV'
        DataSource = DM1.Src_Tra
        TabOrder = 16
      end
      object DBEdit7: TDBEdit
        Left = 141
        Top = 221
        Width = 134
        Height = 21
        DataField = 'TRFAX'
        DataSource = DM1.Src_Tra
        TabOrder = 15
      end
      object DBEdit6: TDBEdit
        Left = 1
        Top = 219
        Width = 134
        Height = 21
        DataField = 'TRFONE'
        DataSource = DM1.Src_Tra
        TabOrder = 14
      end
      object DBEdit19: TDBEdit
        Left = -1
        Top = 256
        Width = 330
        Height = 21
        DataField = 'TREMAIL'
        DataSource = DM1.Src_Tra
        TabOrder = 18
      end
      object DBEdit20: TDBEdit
        Left = 343
        Top = 259
        Width = 290
        Height = 21
        DataField = 'TRHOME'
        DataSource = DM1.Src_Tra
        TabOrder = 19
      end
      object CODBAI: TDBEdit
        Left = 279
        Top = 97
        Width = 66
        Height = 21
        DataField = 'TRCODBAI'
        DataSource = DM1.Src_Tra
        TabOrder = 4
        OnExit = CODBAIExit
        OnKeyPress = CODBAIKeyPress
      end
      object CODLOC: TDBEdit
        Left = 2
        Top = 136
        Width = 66
        Height = 21
        DataField = 'TRCODLOC'
        DataSource = DM1.Src_Tra
        TabOrder = 6
        OnExit = CODLOCExit
        OnKeyPress = CODLOCKeyPress
      end
      object DBDateEdit1: TDBDateEdit
        Left = 528
        Top = 221
        Width = 103
        Height = 21
        DataField = 'TRDTCAD'
        DataSource = DM1.Src_Tra
        Enabled = False
        NumGlyphs = 2
        TabOrder = 20
      end
      object DBMemo1: TDBMemo
        Left = 0
        Top = 296
        Width = 633
        Height = 93
        DataField = 'TROBS'
        DataSource = DM1.Src_Tra
        TabOrder = 21
      end
    end
    object TabSheet1: TTabSheet [1]
      Caption = 'Controle de Qualidade'
      ImageIndex = 1
      object GroupBox3: TGroupBox
        Left = 2
        Top = 90
        Width = 303
        Height = 36
        Caption = 'Produtos para Sa'#250'de.:'
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 2
        object Label24: TLabel
          Left = 8
          Top = 17
          Width = 48
          Height = 13
          Caption = 'N'#250'mero:'
        end
        object Label25: TLabel
          Left = 140
          Top = 16
          Width = 54
          Height = 13
          Caption = 'Validade:'
        end
        object DBEdit2: TDBEdit
          Left = 59
          Top = 14
          Width = 72
          Height = 19
          Ctl3D = False
          DataField = 'TRNUMPS'
          DataSource = DM1.Src_Tra
          ParentCtl3D = False
          TabOrder = 0
        end
        object DBDateEdit5: TDBDateEdit
          Left = 197
          Top = 13
          Width = 103
          Height = 20
          DataField = 'TRDTVPS'
          DataSource = DM1.Src_Tra
          NumGlyphs = 2
          TabOrder = 1
        end
      end
      object GroupBox4: TGroupBox
        Left = 2
        Top = 130
        Width = 303
        Height = 36
        Caption = 'Produtos Saneantes.:'
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 3
        object Label26: TLabel
          Left = 7
          Top = 17
          Width = 48
          Height = 13
          Caption = 'N'#250'mero:'
        end
        object Label27: TLabel
          Left = 140
          Top = 16
          Width = 54
          Height = 13
          Caption = 'Validade:'
        end
        object DBEdit4: TDBEdit
          Left = 58
          Top = 14
          Width = 72
          Height = 19
          Ctl3D = False
          DataField = 'TRNUMS'
          DataSource = DM1.Src_Tra
          ParentCtl3D = False
          TabOrder = 0
        end
        object DBDateEdit6: TDBDateEdit
          Left = 197
          Top = 13
          Width = 102
          Height = 20
          DataField = 'TRDTVS'
          DataSource = DM1.Src_Tra
          NumGlyphs = 2
          TabOrder = 1
        end
      end
      object gb_forqua: TGroupBox
        Left = 323
        Top = 12
        Width = 200
        Height = 116
        Caption = 'Sobre a Transportadora'
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
        TabOrder = 5
        object Label64: TLabel
          Left = 6
          Top = 59
          Width = 32
          Height = 13
          Caption = 'Data:'
        end
        object Label65: TLabel
          Left = 6
          Top = 81
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
          Top = 15
          Width = 185
          Height = 31
          Caption = 'Qualificado:'
          Columns = 2
          Ctl3D = False
          DataField = 'TRCODBLOQ'
          DataSource = DM1.Src_Tra
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
        end
        object DBMemo2: TDBMemo
          Left = 30
          Top = 78
          Width = 162
          Height = 33
          Ctl3D = False
          DataField = 'TRMOTBLOQ'
          DataSource = DM1.Src_Tra
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 2
        end
        object DBDateEdit3: TDBDateEdit
          Left = 41
          Top = 55
          Width = 151
          Height = 21
          DataField = 'TRDATHOR_BLOQ'
          DataSource = DM1.Src_Tra
          NumGlyphs = 2
          TabOrder = 1
        end
      end
      object GroupBox1: TGroupBox
        Left = 2
        Top = 12
        Width = 303
        Height = 36
        Caption = 'Medicamentos com Controle Especial.:'
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 0
        object Label2: TLabel
          Left = 8
          Top = 16
          Width = 48
          Height = 13
          Caption = 'N'#250'mero:'
        end
        object Label3: TLabel
          Left = 140
          Top = 17
          Width = 54
          Height = 13
          Caption = 'Validade:'
        end
        object DBEdit1: TDBEdit
          Left = 59
          Top = 14
          Width = 72
          Height = 19
          Ctl3D = False
          DataField = 'TRNUMCE'
          DataSource = DM1.Src_Tra
          ParentCtl3D = False
          TabOrder = 0
        end
        object DBDateEdit4: TDBDateEdit
          Left = 197
          Top = 13
          Width = 103
          Height = 20
          DataField = 'TRDTVCE'
          DataSource = DM1.Src_Tra
          NumGlyphs = 2
          TabOrder = 1
        end
      end
      object GB_ALV: TGroupBox
        Left = 2
        Top = 171
        Width = 303
        Height = 36
        Caption = 'Alvar'#225' Sanitario:'
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 4
        object Label1: TLabel
          Left = 7
          Top = 17
          Width = 48
          Height = 13
          Caption = 'N'#250'mero:'
        end
        object Label45: TLabel
          Left = 140
          Top = 16
          Width = 54
          Height = 13
          Caption = 'Validade:'
        end
        object dbnalv: TDBEdit
          Left = 58
          Top = 14
          Width = 72
          Height = 19
          Ctl3D = False
          DataField = 'TRNUM'
          DataSource = DM1.Src_Tra
          ParentCtl3D = False
          TabOrder = 0
        end
        object DBDateEdit2: TDBDateEdit
          Left = 197
          Top = 13
          Width = 102
          Height = 20
          DataField = 'TRDTAVNUM'
          DataSource = DM1.Src_Tra
          NumGlyphs = 2
          TabOrder = 1
        end
      end
      object GroupBox5: TGroupBox
        Left = 2
        Top = 50
        Width = 303
        Height = 36
        Caption = 'Medicamentos com Controle Simples.:'
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 1
        object Label28: TLabel
          Left = 8
          Top = 16
          Width = 48
          Height = 13
          Caption = 'N'#250'mero:'
        end
        object Label29: TLabel
          Left = 140
          Top = 17
          Width = 54
          Height = 13
          Caption = 'Validade:'
        end
        object DBEdit13: TDBEdit
          Left = 59
          Top = 14
          Width = 72
          Height = 19
          Ctl3D = False
          DataField = 'TRNUMCS'
          DataSource = DM1.Src_Tra
          ParentCtl3D = False
          TabOrder = 0
        end
        object DBDateEdit7: TDBDateEdit
          Left = 197
          Top = 13
          Width = 103
          Height = 20
          DataField = 'TRDTVCS'
          DataSource = DM1.Src_Tra
          NumGlyphs = 2
          TabOrder = 1
        end
      end
    end
    inherited tsTab: TTabSheet
      inherited DBGrid1: TDBGrid
        Width = 713
        Height = 392
        OnDblClick = DBGrid1DblClick
        Columns = <
          item
            Expanded = False
            FieldName = 'TRCODTRA'
            Title.Caption = 'C'#243'digo'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TRRAZTRA'
            Title.Caption = 'Raz'#227'o Social'
            Width = 107
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TRCIDADE'
            Title.Caption = 'Cidade'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TRUF'
            Title.Caption = 'UF'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TRFONE'
            Title.Caption = 'Telefone'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TRFAX'
            Title.Caption = 'Fax'
            Visible = True
          end>
      end
    end
  end
  object ToolBar1: TToolBar
    Left = 0
    Top = 0
    Width = 721
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
    object btn_cancelar: TBitBtn
      Left = 170
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
    object btn_excluir: TBitBtn
      Left = 255
      Top = 2
      Width = 85
      Height = 25
      Cursor = crHandPoint
      Hint = 'Exclus'#227'o do registro atual'
      Caption = '&Excluir'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
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
      TabOrder = 2
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
      Width = 208
      Height = 25
      Cursor = crHandPoint
      Hint = 'Navega entre os registros selecionados'
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
      Left = 633
      Top = 2
      Width = 85
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
