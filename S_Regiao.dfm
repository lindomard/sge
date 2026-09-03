inherited Frm_Regiao: TFrm_Regiao
  Left = 48
  Top = 36
  Width = 673
  Height = 421
  Caption = 'Manutencao no Cadastro de Regiao'
  FormStyle = fsNormal
  OldCreateOrder = True
  Visible = False
  OnCloseQuery = FormCloseQuery
  PixelsPerInch = 96
  TextHeight = 13
  inherited MANUT: TGroupBox [0]
    Top = 328
    Align = alNone
    inherited GRAVAR: TBitBtn
      OnClick = GRAVARClick
    end
  end
  inherited GroupBox2: TGroupBox [1]
    Top = 300
    Align = alNone
  end
  inherited Panel1: TPanel [2]
    Top = 30
    Width = 665
    Height = 32
    inherited lbl_emp: TLabel
      Left = 620
      Height = 30
    end
    inherited Pesquisapor: TLabel
      Top = 12
    end
    inherited BBnAtu: TBitBtn
      Left = 445
      Top = 6
      Height = 21
      OnClick = BBnAtuClick
    end
    inherited CAMPO: TComboBox
      Top = 6
    end
    inherited Edit1: TMaskEdit
      Top = 6
      Width = 232
    end
  end
  inherited PC1: TPageControl [3]
    Top = 62
    Width = 665
    Height = 325
    Align = alTop
    inherited tsCad: TTabSheet
      object Label1: TLabel
        Left = 5
        Top = 6
        Width = 40
        Height = 13
        Caption = 'Codigo'
        FocusControl = edt_codreg
      end
      object Label2: TLabel
        Left = 93
        Top = 6
        Width = 77
        Height = 13
        Caption = 'Nome Regiao'
        FocusControl = edt_nome
      end
      object Label3: TLabel
        Left = 5
        Top = 54
        Width = 78
        Height = 13
        Caption = '% Acrescimos'
        FocusControl = DBEdit3
      end
      object Label4: TLabel
        Left = 93
        Top = 54
        Width = 74
        Height = 13
        Caption = '% Descontos'
        FocusControl = DBEdit4
      end
      object Label5: TLabel
        Left = 5
        Top = 110
        Width = 66
        Height = 13
        Caption = 'Incluido em'
        FocusControl = DBEdit5
      end
      object Label6: TLabel
        Left = 149
        Top = 110
        Width = 44
        Height = 13
        Caption = 'Usuario'
        FocusControl = DBEdit6
      end
      object Label7: TLabel
        Left = 245
        Top = 110
        Width = 110
        Height = 13
        Caption = 'Ultima Manutencao'
        FocusControl = DBEdit7
      end
      object Label8: TLabel
        Left = 391
        Top = 110
        Width = 44
        Height = 13
        Caption = 'Usuario'
        FocusControl = DBEdit8
      end
      object edt_codreg: TDBEdit
        Left = 5
        Top = 22
        Width = 80
        Height = 21
        DataField = 'CR_CODREG'
        DataSource = DM6.Src_Regiao
        TabOrder = 0
        OnExit = edt_codregExit
      end
      object edt_nome: TDBEdit
        Left = 93
        Top = 22
        Width = 360
        Height = 21
        DataField = 'CR_NOMREG'
        DataSource = DM6.Src_Regiao
        TabOrder = 1
      end
      object DBEdit3: TDBEdit
        Left = 5
        Top = 70
        Width = 80
        Height = 21
        DataField = 'CR_ACREREG'
        DataSource = DM6.Src_Regiao
        TabOrder = 2
      end
      object DBEdit4: TDBEdit
        Left = 93
        Top = 70
        Width = 80
        Height = 21
        DataField = 'CR_DESREG'
        DataSource = DM6.Src_Regiao
        TabOrder = 3
      end
      object DBEdit5: TDBEdit
        Left = 5
        Top = 126
        Width = 142
        Height = 21
        TabStop = False
        Color = 14483385
        DataField = 'CR_DATINC'
        DataSource = DM6.Src_Regiao
        ReadOnly = True
        TabOrder = 4
      end
      object DBEdit6: TDBEdit
        Left = 149
        Top = 125
        Width = 55
        Height = 21
        TabStop = False
        Color = 14483385
        DataField = 'CR_USRINC'
        DataSource = DM6.Src_Regiao
        ReadOnly = True
        TabOrder = 5
      end
      object DBEdit7: TDBEdit
        Left = 245
        Top = 126
        Width = 142
        Height = 21
        TabStop = False
        Color = 14483385
        DataField = 'CR_DATALT'
        DataSource = DM6.Src_Regiao
        ReadOnly = True
        TabOrder = 6
      end
      object DBEdit8: TDBEdit
        Left = 390
        Top = 126
        Width = 54
        Height = 21
        TabStop = False
        Color = 14483385
        DataField = 'CR_USRALT'
        DataSource = DM6.Src_Regiao
        ReadOnly = True
        TabOrder = 7
      end
    end
    inherited tsTab: TTabSheet
      inherited DBGrid1: TDBGrid
        Width = 657
        Height = 297
        OnDblClick = DBGrid1DblClick
        Columns = <
          item
            Expanded = False
            FieldName = 'CR_CODREG'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CR_NOMREG'
            Width = 169
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CR_DESREG'
            Width = 77
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CR_ACREREG'
            Visible = True
          end>
      end
    end
  end
  object ToolBar1: TToolBar
    Left = 0
    Top = 0
    Width = 665
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
      Width = 156
      Height = 25
      Cursor = crHandPoint
      Hint = 'Navega entre os registros selecionados'
      DataSource = DM6.Src_Regiao
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
      Left = 581
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
