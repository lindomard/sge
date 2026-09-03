object Frm_PPR_AjustarDesc: TFrm_PPR_AjustarDesc
  Left = 70
  Top = 109
  Width = 650
  Height = 399
  Caption = 'Ajustar Descontos da Promo'#231#227'o'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poScreenCenter
  Visible = True
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 19
    Top = 230
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
  object Label2: TLabel
    Left = 110
    Top = 230
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
  object Label3: TLabel
    Left = 195
    Top = 230
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
  object Label4: TLabel
    Left = 277
    Top = 230
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
  object Label5: TLabel
    Left = 358
    Top = 230
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
  object Label6: TLabel
    Left = 43
    Top = 10
    Width = 69
    Height = 13
    Caption = 'Fornecedor:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label7: TLabel
    Left = 72
    Top = 49
    Width = 39
    Height = 13
    Caption = 'Grupo:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label8: TLabel
    Left = 3
    Top = 92
    Width = 109
    Height = 13
    Caption = 'Ramo(Sub-Grupo) :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label9: TLabel
    Left = 58
    Top = 133
    Width = 52
    Height = 13
    Caption = 'Controle:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label10: TLabel
    Left = 32
    Top = 172
    Width = 78
    Height = 13
    Caption = 'Tipo Produto:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object GB_AJUSTAR: TGroupBox
    Left = 279
    Top = 264
    Width = 136
    Height = 51
    Caption = 'Ajustar Pre'#231'os'
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 20
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
  object DESC01: TEdit
    Left = 18
    Top = 245
    Width = 62
    Height = 19
    Ctl3D = False
    ParentCtl3D = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 15
    OnExit = DESC01Exit
  end
  object DESC02: TEdit
    Left = 108
    Top = 245
    Width = 62
    Height = 19
    Ctl3D = False
    ParentCtl3D = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 16
    OnExit = DESC02Exit
  end
  object DESC03: TEdit
    Left = 194
    Top = 245
    Width = 62
    Height = 19
    Ctl3D = False
    ParentCtl3D = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 17
    OnExit = DESC03Exit
  end
  object DESCFIN: TEdit
    Left = 276
    Top = 245
    Width = 62
    Height = 19
    Ctl3D = False
    ParentCtl3D = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 18
    OnExit = DESCFINExit
  end
  object COMIS: TEdit
    Left = 354
    Top = 245
    Width = 62
    Height = 19
    Ctl3D = False
    ParentCtl3D = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 19
    OnExit = COMISExit
  end
  object CODFOR: TEdit
    Left = 113
    Top = 7
    Width = 62
    Height = 19
    Ctl3D = False
    ParentCtl3D = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 0
    OnExit = CODFORExit
    OnKeyPress = CODFORKeyPress
  end
  object lbx_codfor: TListBox
    Left = 174
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
    TabOrder = 1
    OnKeyDown = lbx_codforKeyDown
  end
  object OMITIR_FOR: TCheckBox
    Left = 114
    Top = 30
    Width = 51
    Height = 17
    Caption = 'Omitir'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 2
  end
  object CODGRU: TEdit
    Left = 113
    Top = 48
    Width = 62
    Height = 19
    Ctl3D = False
    ParentCtl3D = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 3
    OnExit = CODGRUExit
    OnKeyPress = CODGRUKeyPress
  end
  object lbx_codgru: TListBox
    Left = 174
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
    TabOrder = 4
    OnKeyDown = lbx_codgruKeyDown
  end
  object OMITIR_GRU: TCheckBox
    Left = 114
    Top = 68
    Width = 56
    Height = 17
    Caption = 'Omitir'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 5
  end
  object CODRAM: TEdit
    Left = 114
    Top = 89
    Width = 62
    Height = 19
    Ctl3D = False
    ParentCtl3D = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 6
    OnExit = CODRAMExit
    OnKeyPress = CODRAMKeyPress
  end
  object lbx_codram: TListBox
    Left = 174
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
    TabOrder = 7
    OnKeyDown = lbx_codramKeyDown
  end
  object OMITIR_RAM: TCheckBox
    Left = 114
    Top = 112
    Width = 57
    Height = 17
    Caption = 'Omitir'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 8
  end
  object CODCON: TEdit
    Left = 113
    Top = 130
    Width = 62
    Height = 19
    Ctl3D = False
    ParentCtl3D = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 9
    OnExit = CODCONExit
    OnKeyPress = CODCONKeyPress
  end
  object lbx_codcon: TListBox
    Left = 174
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
    TabOrder = 10
    OnKeyDown = lbx_codconKeyDown
  end
  object OMITIR_CON: TCheckBox
    Left = 115
    Top = 153
    Width = 53
    Height = 17
    Caption = 'Omitir'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 11
  end
  object CODTIP: TEdit
    Left = 113
    Top = 171
    Width = 62
    Height = 19
    Ctl3D = False
    ParentCtl3D = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 12
    OnExit = CODTIPExit
    OnKeyPress = CODTIPKeyPress
  end
  object lbx_codtip: TListBox
    Left = 174
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
    TabOrder = 13
    OnKeyDown = lbx_codtipKeyDown
  end
  object OMITIR_TPRO: TCheckBox
    Left = 114
    Top = 193
    Width = 53
    Height = 17
    Caption = 'Omitir'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 14
  end
  object CB_ATUPCO: TCheckBox
    Left = 21
    Top = 270
    Width = 251
    Height = 17
    Caption = 'Ajustar os Pre'#231'os de Acordo com a Tabela Atual'
    TabOrder = 21
  end
  object BitBtn1: TBitBtn
    Left = 16
    Top = 318
    Width = 120
    Height = 40
    Caption = '&Confirmar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 22
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
    Left = 509
    Top = 318
    Width = 120
    Height = 40
    Caption = '&Fechar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 23
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
