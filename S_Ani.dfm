object Frm_Ani: TFrm_Ani
  Left = 90
  Top = 228
  Width = 697
  Height = 394
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Cadastro de aniversariantes'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 0
    Top = 28
    Width = 689
    Height = 34
    Align = alTop
    Alignment = taCenter
    Caption = 'Aniversariantes'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -30
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    WordWrap = True
  end
  object PC1: TPageControl
    Left = 0
    Top = 62
    Width = 689
    Height = 298
    ActivePage = TsCad
    Align = alClient
    TabOrder = 0
    object TsCad: TTabSheet
      Caption = 'Cadastro'
      Enabled = False
      object Label3: TLabel
        Left = 43
        Top = 24
        Width = 45
        Height = 13
        Caption = 'Telefone:'
      end
      object Label2: TLabel
        Left = 57
        Top = 8
        Width = 31
        Height = 13
        Caption = 'Nome:'
      end
      object Label4: TLabel
        Left = 229
        Top = 24
        Width = 35
        Height = 13
        Caption = 'Celular:'
      end
      object Label5: TLabel
        Left = 61
        Top = 41
        Width = 27
        Height = 13
        Caption = 'CEP.:'
      end
      object Label6: TLabel
        Left = 39
        Top = 59
        Width = 49
        Height = 13
        Caption = 'Endere'#231'o:'
      end
      object Label7: TLabel
        Left = 58
        Top = 77
        Width = 30
        Height = 13
        Caption = 'Bairro:'
      end
      object Label8: TLabel
        Left = 52
        Top = 97
        Width = 36
        Height = 13
        Caption = 'Cidade:'
      end
      object Label9: TLabel
        Left = 289
        Top = 95
        Width = 36
        Height = 13
        Caption = 'Cidade:'
      end
      object Label10: TLabel
        Left = 53
        Top = 114
        Width = 35
        Height = 13
        Caption = 'E_Mail:'
      end
      object Label11: TLabel
        Left = 3
        Top = 132
        Width = 85
        Height = 13
        Caption = 'Data Nascimento:'
      end
      object Label12: TLabel
        Left = 203
        Top = 131
        Width = 82
        Height = 13
        Caption = 'Data Ult.Contato:'
      end
      object Label13: TLabel
        Left = 16
        Top = 150
        Width = 72
        Height = 13
        Caption = 'Anivers'#225'rio dia:'
      end
      object Label14: TLabel
        Left = 121
        Top = 150
        Width = 23
        Height = 13
        Caption = 'M'#234's:'
      end
      object Label15: TLabel
        Left = 16
        Top = 168
        Width = 72
        Height = 13
        Caption = 'Cargo/Fun'#231#227'o:'
      end
      object Label16: TLabel
        Left = 20
        Top = 188
        Width = 69
        Height = 13
        Caption = 'Tipo...............:'
      end
      object TIPO: TLabel
        Left = 93
        Top = 186
        Width = 3
        Height = 13
      end
      object DBEdit1: TDBEdit
        Left = 91
        Top = 2
        Width = 291
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        DataField = 'CA_NOME'
        DataSource = DM4.Src_Ani
        ParentCtl3D = False
        TabOrder = 0
      end
      object DBEdit2: TDBEdit
        Left = 91
        Top = 20
        Width = 112
        Height = 19
        Ctl3D = False
        DataField = 'CA_FONE'
        DataSource = DM4.Src_Ani
        ParentCtl3D = False
        TabOrder = 1
      end
      object DBEdit3: TDBEdit
        Left = 277
        Top = 20
        Width = 105
        Height = 19
        Ctl3D = False
        DataField = 'CA_CELULAR'
        DataSource = DM4.Src_Ani
        ParentCtl3D = False
        TabOrder = 2
      end
      object DBEdit4: TDBEdit
        Left = 91
        Top = 38
        Width = 112
        Height = 19
        Ctl3D = False
        DataField = 'CA_CEP'
        DataSource = DM4.Src_Ani
        ParentCtl3D = False
        TabOrder = 3
      end
      object DBEdit5: TDBEdit
        Left = 91
        Top = 56
        Width = 291
        Height = 19
        Ctl3D = False
        DataField = 'CA_ENDERECO'
        DataSource = DM4.Src_Ani
        ParentCtl3D = False
        TabOrder = 4
      end
      object DBEdit6: TDBEdit
        Left = 91
        Top = 74
        Width = 188
        Height = 19
        Ctl3D = False
        DataField = 'CA_BAIRRO'
        DataSource = DM4.Src_Ani
        ParentCtl3D = False
        TabOrder = 5
      end
      object DBEdit7: TDBEdit
        Left = 91
        Top = 92
        Width = 188
        Height = 19
        Ctl3D = False
        DataField = 'CA_CIDADE'
        DataSource = DM4.Src_Ani
        ParentCtl3D = False
        TabOrder = 6
      end
      object DBEdit8: TDBEdit
        Left = 332
        Top = 92
        Width = 48
        Height = 19
        Ctl3D = False
        DataField = 'CA_UF'
        DataSource = DM4.Src_Ani
        ParentCtl3D = False
        TabOrder = 7
      end
      object DBEdit9: TDBEdit
        Left = 91
        Top = 110
        Width = 289
        Height = 19
        Ctl3D = False
        DataField = 'CA_EMAIL'
        DataSource = DM4.Src_Ani
        ParentCtl3D = False
        TabOrder = 8
      end
      object db_dtnas: TDBEdit
        Left = 91
        Top = 128
        Width = 94
        Height = 19
        Ctl3D = False
        DataField = 'dtnas'
        DataSource = DM4.Src_Ani
        ParentCtl3D = False
        TabOrder = 9
      end
      object db_dtcontato: TDBEdit
        Left = 291
        Top = 128
        Width = 89
        Height = 19
        Ctl3D = False
        DataField = 'dtcontato'
        DataSource = DM4.Src_Ani
        ParentCtl3D = False
        TabOrder = 11
      end
      object DBEdit12: TDBEdit
        Left = 91
        Top = 146
        Width = 26
        Height = 19
        Ctl3D = False
        DataField = 'CA_DIA'
        DataSource = DM4.Src_Ani
        ParentCtl3D = False
        TabOrder = 13
        OnExit = DBEdit12Exit
      end
      object DBEdit13: TDBEdit
        Left = 144
        Top = 146
        Width = 41
        Height = 19
        Ctl3D = False
        DataField = 'CA_MES'
        DataSource = DM4.Src_Ani
        ParentCtl3D = False
        TabOrder = 14
        OnExit = DBEdit13Exit
      end
      object DBEdit14: TDBEdit
        Left = 91
        Top = 164
        Width = 289
        Height = 19
        Ctl3D = False
        DataField = 'CA_CARGO'
        DataSource = DM4.Src_Ani
        ParentCtl3D = False
        TabOrder = 15
      end
      object dtnas: TMaskEdit
        Left = 91
        Top = 128
        Width = 94
        Height = 19
        Ctl3D = False
        EditMask = '!99/99/9999;1; '
        MaxLength = 10
        ParentCtl3D = False
        TabOrder = 10
        Text = '  /  /    '
        Visible = False
        OnExit = dtnasExit
      end
      object dtcontato: TMaskEdit
        Left = 291
        Top = 128
        Width = 89
        Height = 19
        Ctl3D = False
        EditMask = '!99/99/9999;1; '
        MaxLength = 10
        ParentCtl3D = False
        TabOrder = 12
        Text = '  /  /    '
        Visible = False
        OnExit = dtcontatoExit
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Tabela'
      ImageIndex = 1
      object DBGrid1: TDBGrid
        Left = 8
        Top = 42
        Width = 668
        Height = 244
        DataSource = DM4.Src_Ani
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'CA_CODIGO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CA_NOME'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CA_CARGO'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CA_FONE'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CA_CELULAR'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CA_MES'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CA_DIA'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CA_CIDADE'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CA_UF'
            Width = 64
            Visible = True
          end>
      end
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 681
        Height = 41
        Align = alTop
        TabOrder = 1
        object NOME: TEdit
          Left = 9
          Top = 9
          Width = 457
          Height = 21
          TabOrder = 0
          OnChange = NOMEChange
        end
      end
    end
  end
  object GroupBox2: TGroupBox
    Left = 0
    Top = 367
    Width = 689
    Height = 53
    Caption = 'Movimento dos Registros:'
    TabOrder = 2
    Visible = False
    object SAIR: TBitBtn
      Left = 256
      Top = 16
      Width = 64
      Height = 23
      Cursor = crHandPoint
      Hint = 'Sair do Programa'
      Caption = '&Sair'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
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
    object DBNavigator1: TDBNavigator
      Left = 7
      Top = 16
      Width = 180
      Height = 23
      Cursor = crHandPoint
      DataSource = DM4.Src_Ani
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      Hints.Strings = (
        'Primeiro Registro'
        'Registro Anterior'
        'Proximo Registro'
        #218'ltimo Registro')
      TabOrder = 1
    end
  end
  object MANUT: TGroupBox
    Left = 0
    Top = 0
    Width = 689
    Height = 28
    Align = alTop
    TabOrder = 1
    object ALTERAR: TBitBtn
      Left = 76
      Top = 3
      Width = 75
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
    object INCLUIR: TBitBtn
      Left = 1
      Top = 3
      Width = 75
      Height = 23
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
    end
    object EXCLUIR: TBitBtn
      Left = 151
      Top = 3
      Width = 75
      Height = 23
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
    object CANCELAR: TBitBtn
      Left = 301
      Top = 3
      Width = 75
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
    object GRAVAR: TBitBtn
      Left = 226
      Top = 3
      Width = 75
      Height = 23
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
    end
    object BitBtn1: TBitBtn
      Left = 376
      Top = 3
      Width = 75
      Height = 23
      Cursor = crHandPoint
      Hint = 'Cancela a opera'#231#227'o atual'
      Caption = '&Impress'#227'o'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 5
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
    end
    object DBNavigator2: TDBNavigator
      Left = 451
      Top = 3
      Width = 172
      Height = 23
      Cursor = crHandPoint
      DataSource = DM4.Src_Ani
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      Hints.Strings = (
        'Primeiro Registro'
        'Registro Anterior'
        'Proximo Registro'
        #218'ltimo Registro')
      TabOrder = 6
    end
    object BitBtn2: TBitBtn
      Left = 623
      Top = 3
      Width = 64
      Height = 23
      Cursor = crHandPoint
      Hint = 'Sair do Programa'
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
