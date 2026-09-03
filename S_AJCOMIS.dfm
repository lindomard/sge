inherited Frm_AJCOMIS: TFrm_AJCOMIS
  Left = 20
  Top = 22
  Width = 592
  Height = 375
  Caption = 'Manutencao nos Parametros de Ajustes de Comissoes'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Top = 25
    Width = 584
    Height = 35
    inherited lbl_emp: TLabel
      Left = 539
      Height = 33
    end
    inherited Pesquisapor: TLabel
      Top = 13
    end
    inherited BBnAtu: TBitBtn
      Top = 8
      OnClick = BBnAtuClick
    end
    inherited CAMPO: TComboBox
      Top = 10
      Items.Strings = (
        'Fator Inicial'
        'Fator Final'
        'Fator Comissao')
    end
    inherited Edit1: TMaskEdit
      Top = 10
    end
  end
  inherited PC1: TPageControl
    Top = 60
    Width = 584
    Height = 284
    inherited tsCad: TTabSheet
      object Label1: TLabel
        Left = 49
        Top = 11
        Width = 211
        Height = 13
        Caption = 'Fator de desconto/acrescimos Entre:'
      end
      object Label2: TLabel
        Left = 334
        Top = 10
        Width = 8
        Height = 13
        Caption = 'a'
      end
      object Label3: TLabel
        Left = 11
        Top = 30
        Width = 248
        Height = 13
        Caption = '% a ser aumentado/Diminuido na Comissao:'
      end
      object Label4: TLabel
        Left = 2
        Top = 169
        Width = 72
        Height = 13
        Caption = 'Incluido por:'
      end
      object Label5: TLabel
        Left = 370
        Top = 169
        Width = 22
        Height = 13
        Caption = 'Em:'
      end
      object Label6: TLabel
        Left = 2
        Top = 187
        Width = 74
        Height = 13
        Caption = 'Alterado por:'
      end
      object Label7: TLabel
        Left = 370
        Top = 187
        Width = 22
        Height = 13
        Caption = 'Em:'
      end
      object Label8: TLabel
        Left = 424
        Top = 10
        Width = 147
        Height = 13
        Caption = 'colocar sinal - p/negativo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label9: TLabel
        Left = 336
        Top = 31
        Width = 191
        Height = 13
        Caption = 'colocar sinal -(menos) p/negativo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBE_FATOR_INI: TDBEdit
        Left = 260
        Top = 8
        Width = 70
        Height = 19
        Ctl3D = False
        DataField = 'AJC_FATOR_INI'
        DataSource = DM6.Src_AJCOMIS
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 0
      end
      object DBE_FATOR_TER: TDBEdit
        Left = 348
        Top = 8
        Width = 70
        Height = 19
        Ctl3D = False
        DataField = 'AJC_FATOR_TER'
        DataSource = DM6.Src_AJCOMIS
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 1
      end
      object DBE_COMIS: TDBEdit
        Left = 260
        Top = 26
        Width = 70
        Height = 19
        Ctl3D = False
        DataField = 'AJC_COMIS'
        DataSource = DM6.Src_AJCOMIS
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 2
      end
      object gb_conclusao: TGroupBox
        Left = 1
        Top = 58
        Width = 576
        Height = 105
        Caption = 'Conclusao:'
        TabOrder = 3
        object memo_obs: TMemo
          Left = 2
          Top = 15
          Width = 572
          Height = 88
          TabStop = False
          Align = alClient
          Lines.Strings = (
            'memo_obs')
          ReadOnly = True
          TabOrder = 0
        end
      end
      object DBE_USRINC: TDBEdit
        Left = 78
        Top = 166
        Width = 70
        Height = 19
        TabStop = False
        Ctl3D = False
        DataField = 'AJC_USRINC'
        DataSource = DM6.Src_AJCOMIS
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 4
      end
      object NOMUSR_INC: TEdit
        Left = 147
        Top = 166
        Width = 218
        Height = 19
        TabStop = False
        Color = 7995257
        Ctl3D = False
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 5
      end
      object DBE_DATHOR_INC: TDBEdit
        Left = 394
        Top = 166
        Width = 182
        Height = 19
        TabStop = False
        Color = 7995257
        Ctl3D = False
        DataField = 'AJC_DATHOR_INC'
        DataSource = DM6.Src_AJCOMIS
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 6
      end
      object DBE_USRALT: TDBEdit
        Left = 78
        Top = 184
        Width = 70
        Height = 19
        TabStop = False
        Ctl3D = False
        DataField = 'AJC_USRALT'
        DataSource = DM6.Src_AJCOMIS
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 7
      end
      object NOMUSR_ALT: TEdit
        Left = 147
        Top = 184
        Width = 218
        Height = 19
        TabStop = False
        Color = 7995257
        Ctl3D = False
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 8
      end
      object DBE_DATHOR_ALT: TDBEdit
        Left = 394
        Top = 184
        Width = 182
        Height = 19
        TabStop = False
        Color = 7995257
        Ctl3D = False
        DataField = 'AJC_DATHOR_ALT'
        DataSource = DM6.Src_AJCOMIS
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 9
      end
    end
    inherited tsTab: TTabSheet
      inherited DBGrid1: TDBGrid
        Width = 576
        Height = 260
        DataSource = DM6.Src_AJCOMIS
        Columns = <
          item
            Expanded = False
            FieldName = 'AJC_FATOR_INI'
            Width = 90
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'AJC_FATOR_TER'
            Width = 93
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'AJC_COMIS'
            Width = 140
            Visible = True
          end>
      end
    end
  end
  inherited MANUT: TGroupBox
    Top = 0
    Width = 584
    Height = 25
    Align = alTop
    Caption = ''
    inherited INCLUIR: TBitBtn
      Left = 1
      Top = 0
      Width = 75
      Height = 23
      DragCursor = crHandPoint
      Layout = blGlyphLeft
    end
    inherited ALTERAR: TBitBtn
      Left = 76
      Top = 0
      Width = 75
      Height = 23
      DragCursor = crHandPoint
      Layout = blGlyphLeft
    end
    inherited EXCLUIR: TBitBtn
      Left = 151
      Top = 0
      Width = 75
      Height = 23
      DragCursor = crHandPoint
      Layout = blGlyphLeft
    end
    inherited GRAVAR: TBitBtn
      Left = 225
      Top = 0
      Width = 75
      Height = 23
      DragCursor = crHandPoint
      OnClick = GRAVARClick
      Layout = blGlyphLeft
    end
    inherited CANCELAR: TBitBtn
      Left = 300
      Top = 0
      Width = 75
      Height = 23
      DragCursor = crHandPoint
      Layout = blGlyphLeft
    end
    object DBNavigator2: TDBNavigator
      Left = 375
      Top = 0
      Width = 136
      Height = 23
      Hint = 'Navega entre os registros selecionados'
      DataSource = DM6.Src_AJCOMIS
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
    object BitBtn1: TBitBtn
      Left = 511
      Top = 0
      Width = 74
      Height = 23
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
  inherited GroupBox2: TGroupBox
    Top = 348
    Width = 584
    Align = alNone
    Visible = False
    inherited DBNavigator1: TDBNavigator
      Height = 21
      DataSource = DM6.Src_AJCOMIS
    end
    inherited SAIR: TBitBtn
      Top = 16
      Height = 23
      Layout = blGlyphLeft
    end
  end
  object Src_AjComis: TDataSource
    DataSet = DM6.Tb_AJCOMIS
    OnDataChange = Src_AjComisDataChange
    Left = 448
    Top = 32
  end
end
