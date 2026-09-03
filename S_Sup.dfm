inherited Frm_Sup: TFrm_Sup
  Left = 211
  Top = 142
  VertScrollBar.Range = 0
  BorderStyle = bsSingle
  Caption = 'Cadastro de Supervisores'
  ClientHeight = 478
  ClientWidth = 701
  FormStyle = fsNormal
  OldCreateOrder = True
  Visible = False
  OnCloseQuery = FormCloseQuery
  PixelsPerInch = 96
  TextHeight = 13
  inherited MANUT: TGroupBox [0]
    Top = 367
    Width = 667
    Align = alNone
    inherited INCLUIR: TBitBtn
      Left = 10
      Width = 130
    end
    inherited ALTERAR: TBitBtn
      Left = 141
      Width = 130
    end
    inherited EXCLUIR: TBitBtn
      Left = 272
      Width = 130
    end
    inherited GRAVAR: TBitBtn
      Left = 403
      Width = 130
      OnClick = GRAVARClick
    end
    inherited CANCELAR: TBitBtn
      Left = 534
      Width = 130
    end
  end
  inherited GroupBox2: TGroupBox [1]
    Top = 420
    Width = 667
    Align = alNone
    inherited DBNavigator1: TDBNavigator
      Width = 524
      DataSource = DM1.Src_Sup
    end
    inherited SAIR: TBitBtn
      Left = 534
      Width = 130
    end
  end
  inherited Panel1: TPanel [2]
    Top = 30
    Width = 701
    Height = 33
    inherited lbl_emp: TLabel
      Left = 656
      Height = 31
    end
    inherited Pesquisapor: TLabel
      Top = 11
    end
    inherited BBnAtu: TBitBtn
      Left = 450
      Top = 5
      Height = 22
      OnClick = BBnAtuClick
    end
    inherited CAMPO: TComboBox
      Top = 6
    end
    inherited Edit1: TMaskEdit
      Top = 6
      Width = 236
      OnChange = Edit1Change
    end
  end
  inherited PC1: TPageControl [3]
    Top = 63
    Width = 701
    Height = 415
    inherited tsCad: TTabSheet
      object Label1: TLabel
        Left = 5
        Top = 3
        Width = 122
        Height = 13
        Caption = 'C'#243'digo do Supervisor'
        FocusControl = edt_codsup
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label2: TLabel
        Left = 150
        Top = 3
        Width = 115
        Height = 13
        Caption = 'Nome do Supervisor'
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
        Width = 55
        Height = 13
        Caption = 'Endere'#231'o'
        FocusControl = DBEdit4
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label7: TLabel
        Left = 5
        Top = 80
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
        Left = 5
        Top = 120
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
        Left = 320
        Top = 120
        Width = 17
        Height = 13
        Caption = 'UF'
      end
      object Label9: TLabel
        Left = 4
        Top = 161
        Width = 25
        Height = 13
        Caption = 'CEP'
        FocusControl = DBEdit9
      end
      object Label10: TLabel
        Left = 128
        Top = 161
        Width = 40
        Height = 13
        Caption = 'Celular'
        FocusControl = DBEdit10
      end
      object Label11: TLabel
        Left = 246
        Top = 161
        Width = 99
        Height = 13
        Caption = 'Fone Residencial'
        FocusControl = DBEdit11
      end
      object Label12: TLabel
        Left = 365
        Top = 161
        Width = 110
        Height = 13
        Caption = 'Telefone Comercial'
        FocusControl = DBEdit12
      end
      object Label13: TLabel
        Left = 484
        Top = 160
        Width = 82
        Height = 13
        Caption = 'Data Cadastro'
        FocusControl = DBEdit13
      end
      object Label14: TLabel
        Left = 4
        Top = 199
        Width = 82
        Height = 13
        Caption = 'Registro Geral'
        FocusControl = DBEdit14
      end
      object Label15: TLabel
        Left = 314
        Top = 200
        Width = 24
        Height = 13
        Caption = 'CPF'
        FocusControl = DBEdit15
      end
      object Label16: TLabel
        Left = 5
        Top = 244
        Width = 118
        Height = 13
        Caption = 'Ponto de Referencia'
        FocusControl = DBEdit16
      end
      object Label17: TLabel
        Left = 5
        Top = 286
        Width = 75
        Height = 13
        Caption = 'Observacoes'
        FocusControl = DBMemo1
      end
      object edt_nome: TDBEdit
        Left = 150
        Top = 19
        Width = 300
        Height = 21
        DataField = 'SNOME'
        DataSource = DM1.Src_Sup
        TabOrder = 1
      end
      object edt_codsup: TDBEdit
        Left = 5
        Top = 19
        Width = 134
        Height = 21
        DataField = 'SCODSUP'
        DataSource = DM1.Src_Sup
        Enabled = False
        TabOrder = 0
        OnExit = edt_codsupExit
      end
      object DBEdit4: TDBEdit
        Left = 4
        Top = 57
        Width = 300
        Height = 21
        DataField = 'SENDER'
        DataSource = DM1.Src_Sup
        TabOrder = 2
      end
      object NOMBAI: TDBEdit
        Left = 75
        Top = 96
        Width = 228
        Height = 21
        DataField = 'SBAIRRO'
        DataSource = DM1.Src_Sup
        TabOrder = 4
      end
      object NOMLOC: TDBEdit
        Left = 78
        Top = 136
        Width = 229
        Height = 21
        DataField = 'SCIDADE'
        DataSource = DM1.Src_Sup
        TabOrder = 6
      end
      object ESTADO: TDBEdit
        Left = 308
        Top = 136
        Width = 57
        Height = 21
        DataField = 'SUF'
        DataSource = DM1.Src_Sup
        TabOrder = 7
      end
      object DBEdit13: TDBEdit
        Left = 483
        Top = 176
        Width = 100
        Height = 21
        DataField = 'SDTCAD'
        DataSource = DM1.Src_Sup
        Enabled = False
        ParentColor = True
        ReadOnly = True
        TabOrder = 12
      end
      object DBEdit12: TDBEdit
        Left = 364
        Top = 177
        Width = 115
        Height = 21
        DataField = 'SFONECOM'
        DataSource = DM1.Src_Sup
        TabOrder = 11
      end
      object DBEdit11: TDBEdit
        Left = 245
        Top = 177
        Width = 115
        Height = 21
        DataField = 'SFONERES'
        DataSource = DM1.Src_Sup
        TabOrder = 10
      end
      object DBEdit10: TDBEdit
        Left = 128
        Top = 177
        Width = 115
        Height = 21
        DataField = 'SCELULAR'
        DataSource = DM1.Src_Sup
        TabOrder = 9
      end
      object DBEdit9: TDBEdit
        Left = 4
        Top = 177
        Width = 121
        Height = 21
        DataField = 'SCEP'
        DataSource = DM1.Src_Sup
        TabOrder = 8
      end
      object DBEdit14: TDBEdit
        Left = 3
        Top = 219
        Width = 300
        Height = 21
        DataField = 'SRG'
        DataSource = DM1.Src_Sup
        TabOrder = 13
      end
      object DBEdit15: TDBEdit
        Left = 314
        Top = 220
        Width = 143
        Height = 21
        DataField = 'SCPF'
        DataSource = DM1.Src_Sup
        TabOrder = 14
        OnExit = DBEdit15Exit
        OnKeyPress = DBEdit15KeyPress
      end
      object DBEdit16: TDBEdit
        Left = 4
        Top = 262
        Width = 400
        Height = 21
        DataField = 'SPONTOR'
        DataSource = DM1.Src_Sup
        TabOrder = 15
      end
      object DBMemo1: TDBMemo
        Left = 3
        Top = 303
        Width = 400
        Height = 82
        DataField = 'SOBS'
        DataSource = DM1.Src_Sup
        TabOrder = 16
        OnKeyPress = DBMemo1KeyPress
      end
      object CODBAI: TDBEdit
        Left = 5
        Top = 96
        Width = 71
        Height = 21
        DataField = 'SCODBAI'
        DataSource = DM1.Src_Sup
        TabOrder = 3
        OnExit = CODBAIExit
        OnKeyPress = CODBAIKeyPress
      end
      object CODLOC: TDBEdit
        Left = 5
        Top = 135
        Width = 71
        Height = 21
        DataField = 'SCODLOC'
        DataSource = DM1.Src_Sup
        TabOrder = 5
        OnExit = CODLOCExit
        OnKeyPress = CODLOCKeyPress
      end
      object bbProxima: TBitBtn
        Left = 652
        Top = 337
        Width = 42
        Height = 51
        Cursor = crHandPoint
        Caption = 'Cont...'
        TabOrder = 17
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
      Caption = '&Referencias'
      Enabled = False
      ImageIndex = 2
      object Label18: TLabel
        Left = 8
        Top = 3
        Width = 134
        Height = 13
        Caption = 'Referencias Pessoais 1'
        FocusControl = DBEdit17
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label20: TLabel
        Left = 8
        Top = 41
        Width = 134
        Height = 13
        Caption = 'Referencias Pessoais 2'
        FocusControl = DBEdit19
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label22: TLabel
        Left = 8
        Top = 81
        Width = 134
        Height = 13
        Caption = 'Referencias Pessoais 3'
        FocusControl = DBEdit21
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label24: TLabel
        Left = 8
        Top = 123
        Width = 140
        Height = 13
        Caption = 'Referencias Bancarias 1'
        FocusControl = DBEdit23
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label26: TLabel
        Left = 8
        Top = 163
        Width = 140
        Height = 13
        Caption = 'Referencias Bancarias 2'
        FocusControl = DBEdit25
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label28: TLabel
        Left = 8
        Top = 203
        Width = 140
        Height = 13
        Caption = 'Referencias Bancarias 3'
        FocusControl = DBEdit27
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label30: TLabel
        Left = 8
        Top = 241
        Width = 134
        Height = 13
        Caption = 'Referencias Comerciais'
        FocusControl = DBEdit29
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label32: TLabel
        Left = 8
        Top = 284
        Width = 145
        Height = 13
        Caption = 'Referencias Comerciais 2'
        FocusControl = DBEdit31
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label34: TLabel
        Left = 8
        Top = 328
        Width = 145
        Height = 13
        Caption = 'Referencias Comerciais 3'
        FocusControl = DBEdit33
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label19: TLabel
        Left = 320
        Top = 3
        Width = 51
        Height = 13
        Caption = 'Telefone'
        FocusControl = DBEdit18
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label21: TLabel
        Left = 320
        Top = 41
        Width = 51
        Height = 13
        Caption = 'Telefone'
        FocusControl = DBEdit20
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label23: TLabel
        Left = 320
        Top = 81
        Width = 51
        Height = 13
        Caption = 'Telefone'
        FocusControl = DBEdit22
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label25: TLabel
        Left = 320
        Top = 123
        Width = 55
        Height = 13
        Caption = 'Telefone '
        FocusControl = DBEdit24
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label27: TLabel
        Left = 320
        Top = 162
        Width = 51
        Height = 13
        Caption = 'Telefone'
        FocusControl = DBEdit26
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label29: TLabel
        Left = 320
        Top = 201
        Width = 51
        Height = 13
        Caption = 'Telefone'
        FocusControl = DBEdit28
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label31: TLabel
        Left = 320
        Top = 243
        Width = 51
        Height = 13
        Caption = 'Telefone'
        FocusControl = DBEdit30
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label33: TLabel
        Left = 320
        Top = 291
        Width = 51
        Height = 13
        Caption = 'Telefone'
        FocusControl = DBEdit32
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label35: TLabel
        Left = 320
        Top = 329
        Width = 51
        Height = 13
        Caption = 'Telefone'
        FocusControl = DBEdit34
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBEdit17: TDBEdit
        Left = 8
        Top = 19
        Width = 300
        Height = 21
        DataField = 'SREFP01'
        DataSource = DM1.Src_Sup
        TabOrder = 0
      end
      object DBEdit19: TDBEdit
        Left = 8
        Top = 57
        Width = 300
        Height = 21
        DataField = 'SREFP02'
        DataSource = DM1.Src_Sup
        TabOrder = 2
      end
      object DBEdit21: TDBEdit
        Left = 8
        Top = 97
        Width = 300
        Height = 21
        DataField = 'SREFP03'
        DataSource = DM1.Src_Sup
        TabOrder = 4
      end
      object DBEdit23: TDBEdit
        Left = 8
        Top = 139
        Width = 300
        Height = 21
        DataField = 'SREFB01'
        DataSource = DM1.Src_Sup
        TabOrder = 6
      end
      object DBEdit25: TDBEdit
        Left = 8
        Top = 179
        Width = 300
        Height = 21
        DataField = 'SREFB02'
        DataSource = DM1.Src_Sup
        TabOrder = 8
      end
      object DBEdit27: TDBEdit
        Left = 8
        Top = 217
        Width = 300
        Height = 21
        DataField = 'SREFB03'
        DataSource = DM1.Src_Sup
        TabOrder = 10
      end
      object DBEdit29: TDBEdit
        Left = 8
        Top = 257
        Width = 300
        Height = 21
        DataField = 'SREFC01'
        DataSource = DM1.Src_Sup
        TabOrder = 12
      end
      object DBEdit31: TDBEdit
        Left = 8
        Top = 304
        Width = 300
        Height = 21
        DataField = 'SREFC02'
        DataSource = DM1.Src_Sup
        TabOrder = 14
      end
      object DBEdit33: TDBEdit
        Left = 8
        Top = 345
        Width = 300
        Height = 21
        DataField = 'SREFC03'
        DataSource = DM1.Src_Sup
        TabOrder = 16
      end
      object DBEdit18: TDBEdit
        Left = 320
        Top = 19
        Width = 180
        Height = 21
        DataField = 'SFREFP1'
        DataSource = DM1.Src_Sup
        TabOrder = 1
      end
      object DBEdit20: TDBEdit
        Left = 320
        Top = 57
        Width = 180
        Height = 21
        DataField = 'SFREFP2'
        DataSource = DM1.Src_Sup
        TabOrder = 3
      end
      object DBEdit22: TDBEdit
        Left = 320
        Top = 97
        Width = 180
        Height = 21
        DataField = 'SFREFP3'
        DataSource = DM1.Src_Sup
        TabOrder = 5
      end
      object DBEdit24: TDBEdit
        Left = 320
        Top = 139
        Width = 180
        Height = 21
        DataField = 'SFREFB1'
        DataSource = DM1.Src_Sup
        TabOrder = 7
      end
      object DBEdit26: TDBEdit
        Left = 320
        Top = 179
        Width = 180
        Height = 21
        DataField = 'SFREFB2'
        DataSource = DM1.Src_Sup
        TabOrder = 9
      end
      object DBEdit28: TDBEdit
        Left = 320
        Top = 218
        Width = 180
        Height = 21
        DataField = 'SFREFB3'
        DataSource = DM1.Src_Sup
        TabOrder = 11
      end
      object DBEdit30: TDBEdit
        Left = 320
        Top = 257
        Width = 180
        Height = 21
        DataField = 'SFREFC1'
        DataSource = DM1.Src_Sup
        TabOrder = 13
      end
      object DBEdit32: TDBEdit
        Left = 320
        Top = 304
        Width = 180
        Height = 21
        DataField = 'SFREFC2'
        DataSource = DM1.Src_Sup
        TabOrder = 15
      end
      object DBEdit34: TDBEdit
        Left = 320
        Top = 344
        Width = 180
        Height = 21
        DataField = 'SFREFC3'
        DataSource = DM1.Src_Sup
        TabOrder = 17
      end
    end
    inherited tsTab: TTabSheet
      inherited DBGrid1: TDBGrid
        Width = 691
        Height = 385
        DataSource = DM1.Src_Sup
        OnDblClick = DBGrid1DblClick
        Columns = <
          item
            Expanded = False
            FieldName = 'SCODSUP'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'SNOME'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'SCIDADE'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'SUF'
            Width = 21
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'SCELULAR'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'SFONERES'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'SFONECOM'
            Visible = True
          end>
      end
    end
  end
  object ToolBar1: TToolBar
    Left = 0
    Top = 0
    Width = 701
    Height = 30
    ButtonHeight = 25
    Caption = 'ToolBar1'
    TabOrder = 4
    object btn_incluir: TBitBtn
      Left = 0
      Top = 2
      Width = 90
      Height = 25
      Hint = 'Inclus'#227'o de novos registros'
      Caption = '&Novo'
      DragCursor = crHandPoint
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
      Hint = 'Permite alterar o registro atual'
      Caption = '&Alterar'
      DragCursor = crHandPoint
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
      Hint = 'Exclus'#227'o do registro atual'
      Caption = '&Excluir'
      DragCursor = crHandPoint
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
      Hint = 'Cancela a opera'#231#227'o atual'
      Caption = 'Cance&lar'
      DragCursor = crHandPoint
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
      Left = 360
      Top = 2
      Width = 90
      Height = 25
      Hint = 'Grava o registro atual'
      Caption = '&Gravar'
      DragCursor = crHandPoint
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
    object DBNavigator2: TDBNavigator
      Left = 450
      Top = 2
      Width = 160
      Height = 25
      Hint = 'Navega entre os registros selecionados'
      DataSource = DM1.Src_Sup
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      DragCursor = crHandPoint
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
      Left = 610
      Top = 2
      Width = 90
      Height = 25
      Hint = 'Fecha Esta Janela'
      Caption = '&Sair'
      DragCursor = crHandPoint
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
