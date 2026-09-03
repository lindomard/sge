inherited Frm_ComD: TFrm_ComD
  Left = 140
  Top = 216
  Width = 586
  Height = 290
  Caption = 'Cadastro de Comiss'#227'o por desconto'
  OldCreateOrder = True
  OnCloseQuery = FormCloseQuery
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Top = 25
    Width = 578
    Height = 34
    inherited lbl_emp: TLabel
      Left = 533
      Height = 32
    end
    inherited Pesquisapor: TLabel
      Top = 13
    end
    inherited BBnAtu: TBitBtn
      Left = 401
      Top = 9
      Width = 90
      Height = 22
      OnClick = BBnAtuClick
    end
    inherited CAMPO: TComboBox
      Top = 10
      Items.Strings = (
        'Desconto'
        'Comiss'#227'o')
    end
    inherited Edit1: TMaskEdit
      Top = 10
    end
  end
  inherited PC1: TPageControl
    Top = 59
    Width = 578
    Height = 200
    inherited tsCad: TTabSheet
      object Label1: TLabel
        Left = 24
        Top = 40
        Width = 71
        Height = 13
        Caption = '&Desconto...:'
        FocusControl = DBEdit1
      end
      object Label2: TLabel
        Left = 23
        Top = 64
        Width = 70
        Height = 13
        Caption = '&Comiss'#227'o...:'
        FocusControl = DBEdit2
      end
      object DBEdit1: TDBEdit
        Left = 101
        Top = 36
        Width = 121
        Height = 21
        DataField = 'CDDESC'
        DataSource = DM1.Src_ComD
        Enabled = False
        TabOrder = 0
        OnExit = DBEdit1Exit
      end
      object DBEdit2: TDBEdit
        Left = 101
        Top = 58
        Width = 121
        Height = 21
        DataField = 'CDCOMIS'
        DataSource = DM1.Src_ComD
        TabOrder = 1
      end
    end
    inherited tsTab: TTabSheet
      inherited DBGrid1: TDBGrid
        Width = 570
        Height = 176
        DataSource = DM1.Src_ComD
        OnDblClick = DBGrid1DblClick
        Columns = <
          item
            Expanded = False
            FieldName = 'CDDESC'
            Title.Caption = '% Desconto'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CDCOMIS'
            Title.Caption = '% Comiss'#227'o'
            Visible = True
          end>
      end
    end
  end
  inherited MANUT: TGroupBox
    Top = 0
    Width = 578
    Height = 25
    Align = alTop
    Caption = ''
    inherited INCLUIR: TBitBtn
      Left = 1
      Top = 0
      Width = 75
      Height = 23
      Cursor = crHandPoint
      Layout = blGlyphLeft
    end
    inherited ALTERAR: TBitBtn
      Left = 76
      Top = 0
      Width = 75
      Height = 23
      Cursor = crHandPoint
      Layout = blGlyphLeft
    end
    inherited EXCLUIR: TBitBtn
      Left = 151
      Top = 0
      Width = 75
      Height = 23
      Cursor = crHandPoint
      Layout = blGlyphLeft
    end
    inherited GRAVAR: TBitBtn
      Left = 226
      Top = 0
      Width = 75
      Height = 23
      Cursor = crHandPoint
      OnClick = GRAVARClick
      Layout = blGlyphLeft
    end
    inherited CANCELAR: TBitBtn
      Left = 301
      Top = 0
      Width = 75
      Height = 23
      Cursor = crHandPoint
      Layout = blGlyphLeft
    end
    object DBNavigator2: TDBNavigator
      Left = 376
      Top = 0
      Width = 136
      Height = 23
      Cursor = crHandPoint
      Hint = 'Navega entre os registros selecionados'
      DataSource = DM1.Src_ComD
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
      Left = 512
      Top = 0
      Width = 65
      Height = 23
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
    Top = 262
    Width = 578
    Align = alNone
    Visible = False
    inherited DBNavigator1: TDBNavigator
      Width = 136
      Height = 23
      DataSource = DM1.Src_ComD
    end
    inherited SAIR: TBitBtn
      Left = 266
      Height = 23
      Layout = blGlyphLeft
    end
  end
end
