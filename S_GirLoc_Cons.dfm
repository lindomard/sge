object Frm_GirLoc_Cons: TFrm_GirLoc_Cons
  Left = 18
  Top = 40
  Width = 670
  Height = 448
  ActiveControl = CODGIR_INI
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Consultas de Giros por Cidades'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 0
    Top = 122
    Width = 662
    Height = 150
    Align = alTop
    Caption = 'Giros Existentes:'
    TabOrder = 0
    object DBGrid1: TDBGrid
      Left = 2
      Top = 15
      Width = 658
      Height = 133
      Align = alClient
      DataSource = DM2.Src_GC01
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnDblClick = DBGrid1DblClick
      Columns = <
        item
          Expanded = False
          FieldName = 'GC1CODGIR'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'GC1NOMEGIR'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'GC1QTDCID'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'GC1OBSL01'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'GC1OBSL02'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'GC1OBSL03'
          Visible = True
        end>
    end
  end
  object GroupBox2: TGroupBox
    Left = 0
    Top = 272
    Width = 662
    Height = 142
    Align = alClient
    Caption = 'Cidades do Giro:'
    TabOrder = 1
    object DBGrid2: TDBGrid
      Left = 2
      Top = 15
      Width = 658
      Height = 125
      Align = alClient
      DataSource = DM2.Src_GC02
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'GC2SEQ'
          Width = 55
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'GC2CODLOC'
          Width = 60
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'LNOME'
          Width = 240
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'LUF'
          Width = 28
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CODBAI'
          Width = 53
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NOMBAI'
          Visible = True
        end>
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 662
    Height = 122
    Align = alTop
    TabOrder = 2
    object Label1: TLabel
      Left = 14
      Top = 13
      Width = 82
      Height = 13
      Caption = 'C'#243'digo Inicial:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 228
      Top = 13
      Width = 75
      Height = 13
      Caption = 'C'#243'digo Final:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 58
      Top = 32
      Width = 37
      Height = 13
      Caption = 'Nome:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object CODGIR_INI: TEdit
      Left = 98
      Top = 9
      Width = 54
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 0
      OnExit = CODGIR_INIExit
    end
    object bbAtualizar: TBitBtn
      Left = 68
      Top = 88
      Width = 115
      Height = 25
      Caption = '&Atualizar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
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
    object bbSair: TBitBtn
      Left = 322
      Top = 87
      Width = 115
      Height = 25
      Caption = '&Sair'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
      OnClick = bbSairClick
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
    object CODGIR_FIN: TEdit
      Left = 306
      Top = 9
      Width = 54
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 1
      OnExit = CODGIR_FINExit
    end
    object NOMEGIR: TEdit
      Left = 98
      Top = 27
      Width = 262
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 2
    end
  end
  object Src_GC01: TDataSource
    DataSet = DM2.Tb_GC01
    OnDataChange = Src_GC01DataChange
    Left = 456
    Top = 16
  end
end
