object Frm_PcoLotAP: TFrm_PcoLotAP
  Left = 136
  Top = 210
  Width = 759
  Height = 432
  ActiveControl = CODFOR
  Caption = 'Adicionar Produtos para altera'#231#227'o de Pre'#231'os'
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
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 34
    Top = 10
    Width = 57
    Height = 13
    Caption = 'Fornecedor:'
  end
  object Label2: TLabel
    Left = 59
    Top = 49
    Width = 32
    Height = 13
    Caption = 'Grupo:'
  end
  object Label6: TLabel
    Left = 4
    Top = 92
    Width = 91
    Height = 13
    Caption = 'Ramo(Sub-Grupo) :'
  end
  object Label3: TLabel
    Left = 45
    Top = 133
    Width = 42
    Height = 13
    Caption = 'Controle:'
  end
  object Label4: TLabel
    Left = 29
    Top = 175
    Width = 64
    Height = 13
    Caption = 'Tipo Produto:'
  end
  object Label11: TLabel
    Left = 7
    Top = 213
    Width = 86
    Height = 13
    Caption = 'Nome do Produto:'
  end
  object Label12: TLabel
    Left = 59
    Top = 231
    Width = 33
    Height = 13
    Caption = 'Marca:'
  end
  object Label15: TLabel
    Left = 472
    Top = 219
    Width = 75
    Height = 13
    Alignment = taCenter
    Caption = 'E s t o q u e '
    Color = 16776176
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
  end
  object Panel1: TPanel
    Left = 0
    Top = 343
    Width = 743
    Height = 51
    Align = alBottom
    TabOrder = 1
    object BitBtn1: TBitBtn
      Left = 16
      Top = 8
      Width = 120
      Height = 40
      Caption = '&Confirmar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = BitBtn1Click
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
    object BitBtn2: TBitBtn
      Left = 578
      Top = 8
      Width = 120
      Height = 40
      Caption = '&Fechar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = BitBtn2Click
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
  object RG_Tipo: TRadioGroup
    Left = 574
    Top = 108
    Width = 169
    Height = 46
    Caption = 'Tipo:'
    Columns = 2
    Ctl3D = False
    ItemIndex = 0
    Items.Strings = (
      'Substituir'
      'Adicionar')
    ParentCtl3D = False
    TabOrder = 0
  end
  object CODFOR: TEdit
    Left = 95
    Top = 7
    Width = 62
    Height = 19
    Ctl3D = False
    ParentCtl3D = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 2
    OnExit = CODFORExit
    OnKeyPress = CODFORKeyPress
  end
  object lbx_codfor: TListBox
    Left = 156
    Top = 7
    Width = 415
    Height = 42
    Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
    Color = 13828095
    Ctl3D = False
    ItemHeight = 13
    ParentCtl3D = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 3
    OnKeyDown = lbx_codforKeyDown
  end
  object OMITIR_FOR: TCheckBox
    Left = 96
    Top = 30
    Width = 51
    Height = 17
    Caption = 'Omitir'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 4
  end
  object CODGRU: TEdit
    Left = 95
    Top = 48
    Width = 62
    Height = 19
    Ctl3D = False
    ParentCtl3D = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 5
    OnExit = CODGRUExit
    OnKeyPress = CODGRUKeyPress
  end
  object lbx_codgru: TListBox
    Left = 156
    Top = 48
    Width = 415
    Height = 42
    Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
    Color = 13828095
    Ctl3D = False
    ItemHeight = 13
    ParentCtl3D = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 6
    OnKeyDown = lbx_codgruKeyDown
  end
  object OMITIR_GRU: TCheckBox
    Left = 96
    Top = 68
    Width = 56
    Height = 17
    Caption = 'Omitir'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 7
  end
  object CODRAM: TEdit
    Left = 96
    Top = 89
    Width = 62
    Height = 19
    Ctl3D = False
    ParentCtl3D = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 8
    OnExit = CODRAMExit
    OnKeyPress = CODRAMKeyPress
  end
  object lbx_codram: TListBox
    Left = 156
    Top = 89
    Width = 415
    Height = 42
    Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
    Color = 13828095
    Ctl3D = False
    ItemHeight = 13
    ParentCtl3D = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 9
    OnKeyDown = lbx_codramKeyDown
  end
  object OMITIR_RAM: TCheckBox
    Left = 96
    Top = 112
    Width = 57
    Height = 17
    Caption = 'Omitir'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 10
  end
  object CODCON: TEdit
    Left = 95
    Top = 130
    Width = 62
    Height = 19
    Ctl3D = False
    ParentCtl3D = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 11
    OnExit = CODCONExit
    OnKeyPress = CODCONKeyPress
  end
  object lbx_codcon: TListBox
    Left = 156
    Top = 130
    Width = 415
    Height = 42
    Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
    Color = 13828095
    Ctl3D = False
    ItemHeight = 13
    ParentCtl3D = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 12
    OnKeyDown = lbx_codconKeyDown
  end
  object OMITIR_CON: TCheckBox
    Left = 97
    Top = 153
    Width = 53
    Height = 17
    Caption = 'Omitir'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 13
  end
  object CODTIP: TEdit
    Left = 95
    Top = 171
    Width = 62
    Height = 19
    Ctl3D = False
    ParentCtl3D = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 14
    OnExit = CODTIPExit
    OnKeyPress = CODTIPKeyPress
  end
  object lbx_codtip: TListBox
    Left = 156
    Top = 171
    Width = 415
    Height = 42
    Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
    Color = 13828095
    Ctl3D = False
    ItemHeight = 13
    ParentCtl3D = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 15
    OnKeyDown = lbx_codtipKeyDown
  end
  object OMITIR_TPRO: TCheckBox
    Left = 96
    Top = 193
    Width = 53
    Height = 17
    Caption = 'Omitir'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 16
  end
  object GB_AJUSTAR: TGroupBox
    Left = 575
    Top = 162
    Width = 136
    Height = 51
    Caption = 'Ajustar Pre'#231'os'
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 17
    Visible = False
    object AJUSTARPCO: TEdit
      Left = 4
      Top = 20
      Width = 62
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnExit = AJUSTARPCOExit
    end
    object CB_DIMINUIR: TCheckBox
      Left = 69
      Top = 20
      Width = 62
      Height = 17
      Caption = 'Diminuir'
      TabOrder = 1
    end
  end
  object StaticText2: TStaticText
    Left = 572
    Top = 6
    Width = 156
    Height = 17
    Alignment = taCenter
    AutoSize = False
    BorderStyle = sbsSunken
    Caption = 'Status Produto'
    Color = 16776176
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    TabOrder = 18
  end
  object CLB_STATUS: TCheckListBox
    Left = 572
    Top = 26
    Width = 156
    Height = 61
    Color = 16776176
    Columns = 3
    Ctl3D = False
    ItemHeight = 13
    Items.Strings = (
      '0'
      '1'
      '2'
      '3'
      '4'
      '5'
      '6'
      '7'
      '8'
      '9'
      'Todos')
    ParentCtl3D = False
    Style = lbOwnerDrawFixed
    TabOrder = 19
    OnClick = CLB_STATUSClick
  end
  object OMITIR_STATUS: TCheckBox
    Left = 572
    Top = 93
    Width = 157
    Height = 17
    Caption = 'Omitir Status Selecionado'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 20
  end
  object Gb_param: TGroupBox
    Left = 0
    Top = 282
    Width = 743
    Height = 61
    Align = alBottom
    Caption = 'Parametros Pre-Fixados:'
    TabOrder = 24
    Visible = False
    object Label5: TLabel
      Left = 19
      Top = 18
      Width = 56
      Height = 13
      Caption = 'Desc. 01:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label7: TLabel
      Left = 110
      Top = 18
      Width = 52
      Height = 13
      Caption = 'Desc. 02'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label8: TLabel
      Left = 195
      Top = 18
      Width = 52
      Height = 13
      Caption = 'Desc. 03'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label9: TLabel
      Left = 277
      Top = 18
      Width = 55
      Height = 13
      Caption = 'Desc. Fin'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label10: TLabel
      Left = 358
      Top = 18
      Width = 54
      Height = 13
      Caption = 'Comiss'#227'o'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label13: TLabel
      Left = 630
      Top = 20
      Width = 49
      Height = 13
      Caption = '% Ajuste'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Visible = False
    end
    object Label14: TLabel
      Left = 440
      Top = 18
      Width = 91
      Height = 13
      Caption = 'Tipo de Pre'#231'os:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DESC01: TEdit
      Left = 18
      Top = 33
      Width = 62
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnExit = DESC01Exit
    end
    object DESC02: TEdit
      Left = 108
      Top = 33
      Width = 62
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnExit = DESC02Exit
    end
    object DESC03: TEdit
      Left = 194
      Top = 33
      Width = 62
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      OnExit = DESC03Exit
    end
    object DESCFIN: TEdit
      Left = 276
      Top = 33
      Width = 62
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      OnExit = DESCFINExit
    end
    object COMIS: TEdit
      Left = 354
      Top = 33
      Width = 62
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 4
      OnExit = COMISExit
    end
    object edt_percAjuste: TEdit
      Left = 626
      Top = 35
      Width = 62
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 5
      Visible = False
      OnExit = edt_percAjusteExit
    end
    object cb_tipopreco: TComboBox
      Left = 440
      Top = 32
      Width = 145
      Height = 21
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 6
      Text = 'Preco 1'
      Items.Strings = (
        'Preco 1'
        'Preco 2'
        'Preco 3'
        'Preco Custo'
        'Preco Fabrica')
    end
  end
  object edt_nompro: TEdit
    Left = 97
    Top = 212
    Width = 351
    Height = 19
    Ctl3D = False
    ParentCtl3D = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 21
  end
  object edt_marca: TEdit
    Left = 97
    Top = 230
    Width = 351
    Height = 19
    Ctl3D = False
    ParentCtl3D = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 22
  end
  object CLBEstoque: TCheckListBox
    Left = 471
    Top = 232
    Width = 225
    Height = 40
    Color = 16776176
    Columns = 2
    ItemHeight = 13
    Items.Strings = (
      'c/Estoque'
      's/Estoque'
      'Estoque Negativo'
      'Todos')
    Style = lbOwnerDrawFixed
    TabOrder = 23
    OnClick = CLBEstoqueClick
  end
end
