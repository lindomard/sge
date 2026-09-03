inherited Frm_Usr: TFrm_Usr
  Left = 381
  Top = 219
  Width = 733
  Height = 386
  BorderIcons = []
  Caption = 'Manuten'#231#227'o no cadastro de usu'#225'rios'
  FormStyle = fsNormal
  OldCreateOrder = True
  Visible = False
  OnCloseQuery = FormCloseQuery
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Top = 30
    Width = 717
    Height = 33
    inherited lbl_emp: TLabel
      Left = 672
      Height = 31
    end
    inherited Pesquisapor: TLabel
      Top = 11
    end
    inherited BBnAtu: TBitBtn
      Top = 5
      OnClick = BBnAtuClick
    end
    inherited CAMPO: TComboBox
      Top = 8
    end
    inherited Edit1: TMaskEdit
      Top = 8
      OnChange = Edit1Change
    end
  end
  inherited PC1: TPageControl
    Top = 63
    Width = 717
    Height = 285
    ActivePage = tsCad
    inherited tsCad: TTabSheet
      object db_codusr: TDBEdit
        Left = 111
        Top = 14
        Width = 55
        Height = 19
        Ctl3D = False
        DataField = 'CODUSR'
        DataSource = DM4.Src_Usr
        ParentCtl3D = False
        TabOrder = 0
        OnExit = db_codusrExit
      end
      object db_cargo: TDBEdit
        Left = 111
        Top = 50
        Width = 55
        Height = 19
        Ctl3D = False
        DataField = 'CODCAR'
        DataSource = DM4.Src_Usr
        ParentCtl3D = False
        TabOrder = 2
        OnExit = db_cargoExit
        OnKeyPress = db_cargoKeyPress
      end
      object DBEdit4: TDBEdit
        Left = 165
        Top = 50
        Width = 199
        Height = 19
        Ctl3D = False
        DataField = 'nomcar'
        DataSource = DM4.Src_Usr
        Enabled = False
        ParentColor = True
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 3
      end
      object DBEdit6: TDBEdit
        Left = 165
        Top = 86
        Width = 198
        Height = 19
        Ctl3D = False
        DataField = 'nomven'
        DataSource = DM4.Src_Usr
        Enabled = False
        ParentColor = True
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 4
      end
      object cb_codven: TDBEdit
        Left = 111
        Top = 86
        Width = 55
        Height = 19
        Ctl3D = False
        DataField = 'CODVEN'
        DataSource = DM4.Src_Usr
        ParentCtl3D = False
        TabOrder = 7
        OnExit = cb_codvenExit
        OnKeyPress = cb_codvenKeyPress
      end
      object db_nomusr: TDBEdit
        Left = 111
        Top = 32
        Width = 201
        Height = 19
        Ctl3D = False
        DataField = 'NOMUSR'
        DataSource = DM4.Src_Usr
        ParentCtl3D = False
        TabOrder = 1
      end
      object db_diaani: TDBEdit
        Left = 111
        Top = 68
        Width = 55
        Height = 19
        Ctl3D = False
        DataField = 'DIANAS'
        DataSource = DM4.Src_Usr
        ParentCtl3D = False
        TabOrder = 5
        OnExit = cb_codvenExit
        OnKeyPress = cb_codvenKeyPress
      end
      object db_mesani: TDBEdit
        Left = 203
        Top = 68
        Width = 55
        Height = 19
        Ctl3D = False
        DataField = 'MESNAS'
        DataSource = DM4.Src_Usr
        ParentCtl3D = False
        TabOrder = 6
        OnExit = cb_codvenExit
        OnKeyPress = cb_codvenKeyPress
      end
      object DBCB_USRSIS: TDBCheckBox
        Left = 376
        Top = 179
        Width = 190
        Height = 17
        Caption = #233' Usu'#225'rio do Sistema'
        DataField = 'USUARIO'
        DataSource = DM4.Src_Usr
        TabOrder = 16
        ValueChecked = '0'
        ValueUnchecked = '1'
      end
      object db_codcai: TDBEdit
        Left = 111
        Top = 122
        Width = 55
        Height = 19
        Ctl3D = False
        DataField = 'USR_CODCAI'
        DataSource = DM4.Src_Usr
        ParentCtl3D = False
        TabOrder = 10
        OnExit = cb_codvenExit
        OnKeyPress = cb_codvenKeyPress
      end
      object GB_BLOQDIV: TGroupBox
        Left = 376
        Top = 11
        Width = 289
        Height = 60
        Caption = 'Previlegios para Liberar Bloqueios Diversos'
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 17
        object DBCheckBox2: TDBCheckBox
          Left = 17
          Top = 19
          Width = 269
          Height = 17
          Caption = 'Previl'#233'gios p/Liberar Bloqueios de Usu'#225'rio'
          DataField = 'USR_PREVLIBSEN'
          DataSource = DM4.Src_Usr
          TabOrder = 0
          ValueChecked = '1'
          ValueUnchecked = '0'
        end
        object DBCheckBox3: TDBCheckBox
          Left = 17
          Top = 37
          Width = 269
          Height = 17
          Caption = 'Manter ativo a verifica'#231#227'o'
          DataField = 'USR_STATUSLIBSEN'
          DataSource = DM4.Src_Usr
          TabOrder = 1
          ValueChecked = '1'
          ValueUnchecked = '0'
        end
      end
      object GB_BLOQPED: TGroupBox
        Left = 376
        Top = 73
        Width = 289
        Height = 60
        Caption = 'Previlegios para Liberar Bloqueios de Pedidos'
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 18
        object DBCheckBox4: TDBCheckBox
          Left = 17
          Top = 19
          Width = 269
          Height = 17
          Caption = 'Previl'#233'gios p/Liberar Bloqueios de Pedido'
          DataField = 'USR_PREVLIBPEDBLQ'
          DataSource = DM4.Src_Usr
          TabOrder = 0
          ValueChecked = '1'
          ValueUnchecked = '0'
        end
        object DBCheckBox5: TDBCheckBox
          Left = 17
          Top = 37
          Width = 269
          Height = 17
          Caption = 'Manter ativo a verifica'#231#227'o'
          DataField = 'USR_STATUSLIBPEDBLQ'
          DataSource = DM4.Src_Usr
          TabOrder = 1
          ValueChecked = '1'
          ValueUnchecked = '0'
        end
      end
      object StaticText1: TStaticText
        Left = 7
        Top = 14
        Width = 105
        Height = 19
        Alignment = taRightJustify
        AutoSize = False
        BorderStyle = sbsSingle
        Caption = 'C'#243'digo:'
        Color = 16754342
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 19
      end
      object StaticText2: TStaticText
        Left = 7
        Top = 32
        Width = 105
        Height = 19
        Alignment = taRightJustify
        AutoSize = False
        BorderStyle = sbsSingle
        Caption = 'Nome do Usu'#225'rio:'
        Color = 16754342
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 20
      end
      object StaticText3: TStaticText
        Left = 7
        Top = 50
        Width = 105
        Height = 19
        Alignment = taRightJustify
        AutoSize = False
        BorderStyle = sbsSingle
        Caption = 'Cargo:'
        Color = 16754342
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 21
      end
      object StaticText4: TStaticText
        Left = 7
        Top = 68
        Width = 105
        Height = 19
        Alignment = taRightJustify
        AutoSize = False
        BorderStyle = sbsSingle
        Caption = 'Anivers'#225'rio dia:'
        Color = 16754342
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 22
      end
      object StaticText5: TStaticText
        Left = 165
        Top = 68
        Width = 39
        Height = 19
        Alignment = taRightJustify
        AutoSize = False
        BorderStyle = sbsSingle
        Caption = 'm'#234's:'
        Color = 16754342
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 23
      end
      object StaticText6: TStaticText
        Left = 7
        Top = 86
        Width = 105
        Height = 19
        Alignment = taRightJustify
        AutoSize = False
        BorderStyle = sbsSingle
        Caption = 'Vendedor:'
        Color = 16754342
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 24
      end
      object StaticText7: TStaticText
        Left = 7
        Top = 122
        Width = 105
        Height = 19
        Alignment = taRightJustify
        AutoSize = False
        BorderStyle = sbsSingle
        Caption = 'Caixa Padr'#227'o:'
        Color = 16754342
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 25
      end
      object StaticText8: TStaticText
        Left = 7
        Top = 104
        Width = 105
        Height = 19
        Alignment = taRightJustify
        AutoSize = False
        BorderStyle = sbsSingle
        Caption = 'Supervisor:'
        Color = 16754342
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 26
      end
      object db_codsup: TDBEdit
        Left = 111
        Top = 104
        Width = 55
        Height = 19
        Ctl3D = False
        DataField = 'CODSUP'
        DataSource = DM4.Src_Usr
        ParentCtl3D = False
        TabOrder = 8
        OnExit = db_codsupExit
        OnKeyPress = db_codsupKeyPress
      end
      object db_nomsup: TDBEdit
        Left = 165
        Top = 104
        Width = 198
        Height = 19
        Ctl3D = False
        DataField = 'nomsup'
        DataSource = DM4.Src_Usr
        Enabled = False
        ParentColor = True
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 9
      end
      object DCB_ESTMIN: TDBCheckBox
        Left = 376
        Top = 139
        Width = 155
        Height = 17
        Caption = 'Emitir Estoque Minimo.'
        DataField = 'USR_ESTMIN'
        DataSource = DM4.Src_Usr
        TabOrder = 27
        ValueChecked = '0'
        ValueUnchecked = '1'
      end
      object DCB_AGENDA: TDBCheckBox
        Left = 377
        Top = 161
        Width = 177
        Height = 17
        Caption = 'Exibir Agenda de Contato.'
        DataField = 'USR_AGENDA'
        DataSource = DM4.Src_Usr
        TabOrder = 28
        ValueChecked = '0'
        ValueUnchecked = '1'
      end
      object StaticText9: TStaticText
        Left = 7
        Top = 158
        Width = 105
        Height = 19
        Alignment = taRightJustify
        AutoSize = False
        BorderStyle = sbsSingle
        Caption = 'Email:'
        Color = 16754342
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 29
      end
      object db_emailusr: TDBEdit
        Left = 111
        Top = 158
        Width = 252
        Height = 19
        Ctl3D = False
        DataField = 'EMAILUSR'
        DataSource = DM4.Src_Usr
        ParentCtl3D = False
        TabOrder = 14
      end
      object StaticText10: TStaticText
        Left = 7
        Top = 176
        Width = 105
        Height = 19
        Alignment = taRightJustify
        AutoSize = False
        BorderStyle = sbsSingle
        Caption = 'Senha do Email:'
        Color = 16754342
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 30
      end
      object dbe_senha_email: TDBEdit
        Left = 111
        Top = 176
        Width = 252
        Height = 19
        Ctl3D = False
        DataField = 'SENHAEMAILUSR'
        DataSource = DM4.Src_Usr
        ParentCtl3D = False
        PasswordChar = '*'
        TabOrder = 15
      end
      object StaticText11: TStaticText
        Left = 7
        Top = 140
        Width = 105
        Height = 19
        Alignment = taRightJustify
        AutoSize = False
        BorderStyle = sbsSingle
        Caption = 'Depto Cx.Padr'#227'o:'
        Color = 16754342
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 31
      end
      object DBE_USR_CODDEP_PADRAO: TDBEdit
        Left = 111
        Top = 140
        Width = 55
        Height = 19
        Ctl3D = False
        DataField = 'USR_CODDEP_PADRAO'
        DataSource = DM4.Src_Usr
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 13
        OnExit = DBE_USR_CODDEP_PADRAOExit
        OnKeyDown = DBE_USR_CODDEP_PADRAOKeyDown
      end
      object GB_USR_SITCAD: TGroupBox
        Left = 9
        Top = 198
        Width = 232
        Height = 41
        Caption = 'Situa'#231#227'o:'
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 32
        object RxDBCB_SITCAD: TRxDBComboBox
          Left = 4
          Top = 13
          Width = 221
          Height = 21
          Style = csDropDownList
          Ctl3D = True
          DataField = 'USR_SITCAD'
          DataSource = DM4.Src_Usr
          EnableValues = True
          ItemHeight = 13
          Items.Strings = (
            '0-Normal'
            '8-Bloqueio Temporario'
            '9-Bloqueio Permanente')
          ParentCtl3D = False
          TabOrder = 0
          Values.Strings = (
            '0'
            '8'
            '9')
        end
      end
      object StaticText12: TStaticText
        Left = 167
        Top = 122
        Width = 141
        Height = 19
        Alignment = taRightJustify
        AutoSize = False
        BorderStyle = sbsSingle
        Caption = 'Desconto Maximo Geral:'
        Color = 16754342
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 33
      end
      object DBE_USR_DESCMAX: TDBEdit
        Left = 308
        Top = 122
        Width = 55
        Height = 19
        Ctl3D = False
        DataField = 'USR_DESCMAX'
        DataSource = DM4.Src_Usr
        ParentCtl3D = False
        TabOrder = 11
        OnExit = cb_codvenExit
        OnKeyPress = cb_codvenKeyPress
      end
      object GB_USR_NIVEL_PDV: TGroupBox
        Left = 248
        Top = 198
        Width = 232
        Height = 41
        Caption = 'Nivel de Acesso ao PDV (CARGO):'
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 34
        object RxDBB_USR_NIVEL_PDV: TRxDBComboBox
          Left = 4
          Top = 13
          Width = 221
          Height = 21
          Style = csDropDownList
          Ctl3D = True
          DataField = 'nivel_pdv'
          DataSource = DM4.Src_Usr
          EnableValues = True
          ItemHeight = 13
          Items.Strings = (
            'Nivel 0'
            'Nivel 1'
            'Nivel 2'
            'Nivel 3'
            'Nivel 4'
            'Nivel 5'
            'Nivel 6'
            'Nivel 7'
            'Nivel 8'
            'Nivel 9')
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 0
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
      end
      object StaticText13: TStaticText
        Left = 166
        Top = 140
        Width = 142
        Height = 19
        Alignment = taRightJustify
        AutoSize = False
        BorderStyle = sbsSingle
        Caption = 'Desconto Master:'
        Color = 16754342
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 35
      end
      object DBE_USR_DESCMAX_MASTER: TDBEdit
        Left = 308
        Top = 140
        Width = 55
        Height = 19
        Ctl3D = False
        DataField = 'USR_DESCMAX_MASTER'
        DataSource = DM4.Src_Usr
        ParentCtl3D = False
        TabOrder = 12
        OnExit = cb_codvenExit
        OnKeyPress = cb_codvenKeyPress
      end
    end
    inherited tsTab: TTabSheet
      inherited DBGrid1: TDBGrid
        Width = 709
        Height = 257
        OnDblClick = DBGrid1DblClick
        Columns = <
          item
            Expanded = False
            FieldName = 'CODUSR'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NOMUSR'
            Title.Caption = 'Nome'
            Width = 163
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CODCAR'
            Width = 101
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'nomcar'
            Width = 109
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CODVEN'
            Title.Caption = 'Cod.Vend'
            Width = 73
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'nomven'
            Width = 140
            Visible = True
          end>
      end
    end
  end
  inherited MANUT: TGroupBox
    Top = 0
    Width = 717
    Height = 30
    Align = alTop
    Caption = ''
    inherited INCLUIR: TBitBtn
      Left = 1
      Top = 1
      Width = 80
      Height = 26
      Cursor = crHandPoint
      Layout = blGlyphLeft
    end
    inherited ALTERAR: TBitBtn
      Left = 80
      Top = 1
      Width = 80
      Height = 26
      Cursor = crHandPoint
      Layout = blGlyphLeft
    end
    inherited EXCLUIR: TBitBtn
      Left = 159
      Top = 1
      Width = 80
      Height = 26
      Cursor = crHandPoint
      Layout = blGlyphLeft
    end
    inherited GRAVAR: TBitBtn
      Left = 238
      Top = 1
      Width = 80
      Height = 26
      Cursor = crHandPoint
      OnClick = GRAVARClick
      Layout = blGlyphLeft
    end
    inherited CANCELAR: TBitBtn
      Left = 317
      Top = 1
      Width = 80
      Height = 26
      Cursor = crHandPoint
      Layout = blGlyphLeft
    end
    object DBNavigator2: TDBNavigator
      Left = 396
      Top = 1
      Width = 244
      Height = 26
      Cursor = crHandPoint
      Hint = 'Navega entre os registros selecionados'
      DataSource = DM4.Src_Usr
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
    object BitBtn1: TBitBtn
      Left = 639
      Top = 1
      Width = 87
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
  inherited GroupBox2: TGroupBox
    Top = 477
    Width = 725
    Align = alNone
    Visible = False
    inherited DBNavigator1: TDBNavigator
      Left = 1
      Width = 520
    end
    inherited SAIR: TBitBtn
      Left = 570
      Top = 16
      Width = 95
      Height = 26
      Layout = blGlyphLeft
    end
  end
  object Src_Usr: TDataSource
    DataSet = DM4.Tb_Usr
    Left = 504
    Top = 80
  end
end
