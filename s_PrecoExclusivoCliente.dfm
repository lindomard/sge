object Frm_PrecoExclusivoCliente: TFrm_PrecoExclusivoCliente
  Left = 210
  Top = 108
  Width = 890
  Height = 575
  Caption = 'Tabela de Precos Exclisiva por Cliente'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = [fsBold]
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object lbl_cliente: TLabel
    Left = 0
    Top = 0
    Width = 874
    Height = 81
    Align = alTop
    Alignment = taCenter
    AutoSize = False
    Caption = 'Pre'#231'o Exclusivo do Cliente:'
    Color = clBlue
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -20
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    Layout = tlCenter
    WordWrap = True
  end
  object gb_filtros: TGroupBox
    Left = 0
    Top = 81
    Width = 874
    Height = 151
    Align = alTop
    Caption = 'Filtros:'
    TabOrder = 0
    object Label1: TLabel
      Left = 1
      Top = 15
      Width = 65
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Produto:'
    end
    object Label4: TLabel
      Left = 1
      Top = 54
      Width = 65
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Grupo:'
    end
    object Label6: TLabel
      Left = 373
      Top = 14
      Width = 77
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Ramo:'
    end
    object Label2: TLabel
      Left = 373
      Top = 57
      Width = 77
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Tipo Produto:'
    end
    object Label3: TLabel
      Left = 2
      Top = 96
      Width = 128
      Height = 13
      Caption = 'Descri'#231#227'o do Produto:'
    end
    object bbAtualizar: TSpeedButton
      Left = 47
      Top = 118
      Width = 210
      Height = 26
      Cursor = crHandPoint
      Hint = 'Salva as configura'#231#245'es como padr'#227'o'
      Caption = 'Atualizar'
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
      ParentShowHint = False
      ShowHint = True
      OnClick = bbAtualizarClick
    end
    object snbIncluir: TSpeedButton
      Left = 261
      Top = 119
      Width = 373
      Height = 26
      Cursor = crHandPoint
      Hint = 'Salva as configura'#231#245'es como padr'#227'o'
      Caption = 'se nao existir Incluir c/preco 1 de acordo c/os filtros acima'
      Enabled = False
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
      ParentShowHint = False
      ShowHint = True
      OnClick = snbIncluirClick
    end
    object edt_codpro: TEdit
      Left = 67
      Top = 12
      Width = 62
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnExit = edt_codproExit
      OnKeyPress = edt_codproKeyPress
    end
    object lbx_codpro: TListBox
      Left = 128
      Top = 12
      Width = 241
      Height = 42
      Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
      Color = 13828095
      Ctl3D = False
      ItemHeight = 13
      ParentCtl3D = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnKeyDown = lbx_codproKeyDown
    end
    object OMITIR_PRO: TCheckBox
      Left = 68
      Top = 34
      Width = 60
      Height = 17
      Caption = 'Omitir'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
    end
    object edt_codgru: TEdit
      Left = 68
      Top = 53
      Width = 62
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      OnExit = edt_codgruExit
      OnKeyPress = edt_codgruKeyPress
    end
    object lbx_codgru: TListBox
      Left = 129
      Top = 53
      Width = 240
      Height = 42
      Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
      Color = 13828095
      Ctl3D = False
      ItemHeight = 13
      ParentCtl3D = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 4
      OnKeyDown = lbx_codgruKeyDown
    end
    object OMITIR_GRU: TCheckBox
      Left = 69
      Top = 73
      Width = 56
      Height = 17
      Caption = 'Omitir'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 5
    end
    object edt_codram: TEdit
      Left = 451
      Top = 12
      Width = 62
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 6
      OnExit = edt_codramExit
      OnKeyPress = edt_codramKeyPress
    end
    object lbx_codram: TListBox
      Left = 512
      Top = 12
      Width = 336
      Height = 42
      Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
      Color = 13828095
      Ctl3D = False
      ItemHeight = 13
      ParentCtl3D = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 7
      OnKeyDown = lbx_codramKeyDown
    end
    object OMITIR_RAM: TCheckBox
      Left = 451
      Top = 33
      Width = 57
      Height = 17
      Caption = 'Omitir'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 8
    end
    object edt_CODTIP: TEdit
      Left = 451
      Top = 53
      Width = 62
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 9
      OnExit = edt_CODTIPExit
      OnKeyPress = edt_CODTIPKeyPress
    end
    object lbx_codtip: TListBox
      Left = 512
      Top = 53
      Width = 336
      Height = 42
      Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
      Color = 13828095
      Ctl3D = False
      ItemHeight = 13
      ParentCtl3D = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 10
      OnKeyDown = lbx_codtipKeyDown
    end
    object OMITIR_TPRO: TCheckBox
      Left = 454
      Top = 73
      Width = 53
      Height = 17
      Caption = 'Omitir'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 11
    end
    object edt_pdnome: TEdit
      Left = 129
      Top = 94
      Width = 240
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 12
      OnChange = edt_pdnomeChange
    end
    object bbSair: TBitBtn
      Left = 638
      Top = 118
      Width = 210
      Height = 26
      Cursor = crHandPoint
      Hint = 'Sair'
      Caption = '&Sair'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 13
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
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 232
    Width = 874
    Height = 305
    Align = alClient
    Caption = 'Itens Selecionados:'
    TabOrder = 1
    object DBGrid1: TDBGrid
      Left = 2
      Top = 15
      Width = 870
      Height = 247
      Align = alClient
      DataSource = src_cadpro_pcocli
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = [fsBold]
      OnColExit = DBGrid1ColExit
      OnKeyPress = DBGrid1KeyPress
      Columns = <
        item
          Expanded = False
          FieldName = 'PEC_CODPRO'
          Title.Alignment = taCenter
          Width = 85
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PDNOME'
          ReadOnly = True
          Title.Alignment = taCenter
          Width = 371
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PDUND'
          ReadOnly = True
          Title.Alignment = taCenter
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PEC_PRECO'
          Title.Alignment = taCenter
          Width = 129
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PDMARCA'
          ReadOnly = True
          Title.Alignment = taCenter
          Width = 175
          Visible = True
        end>
    end
    object Panel1: TPanel
      Left = 2
      Top = 262
      Width = 870
      Height = 41
      Align = alBottom
      TabOrder = 1
      object SpeedButton1: TSpeedButton
        Left = 330
        Top = 7
        Width = 210
        Height = 26
        Cursor = crHandPoint
        Hint = 'Excluir o item selecionado'
        Caption = 'Excluir '
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
        ParentShowHint = False
        ShowHint = True
        OnClick = SpeedButton1Click
      end
    end
  end
  object Qr_cadpro_pcocli: TQuery
    CachedUpdates = True
    AfterInsert = Qr_cadpro_pcocliAfterInsert
    AfterEdit = Qr_cadpro_pcocliAfterEdit
    BeforePost = Qr_cadpro_pcocliBeforePost
    AfterPost = Qr_cadpro_pcocliAfterPost
    BeforeDelete = Qr_cadpro_pcocliBeforeDelete
    DatabaseName = 'SG_ASSOC'
    UpdateObject = u_cadpro_pcocli
    Left = 760
    Top = 121
    object Qr_cadpro_pcocliPEC_PRECO: TFloatField
      DisplayLabel = 'Preco Unitario'
      FieldName = 'PEC_PRECO'
    end
    object Qr_cadpro_pcocliPEC_CODPRO: TFloatField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'PEC_CODPRO'
    end
    object Qr_cadpro_pcocliPDNOME: TStringField
      DisplayLabel = 'Descri'#231#227'o do Produto'
      FieldName = 'PDNOME'
      Size = 120
    end
    object Qr_cadpro_pcocliPDUND: TStringField
      DisplayLabel = 'Und'
      FieldName = 'PDUND'
      Size = 3
    end
    object Qr_cadpro_pcocliPDMARCA: TStringField
      DisplayLabel = 'Marca'
      FieldName = 'PDMARCA'
      Size = 60
    end
  end
  object u_cadpro_pcocli: TUpdateSQL
    Left = 792
    Top = 121
  end
  object src_cadpro_pcocli: TDataSource
    DataSet = Qr_cadpro_pcocli
    Left = 824
    Top = 121
  end
end
