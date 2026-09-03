object Frm_AjDescPro: TFrm_AjDescPro
  Left = 192
  Top = 114
  Width = 544
  Height = 224
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Ajuste do desconto 01 do produto'
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
  object Label3: TLabel
    Left = 3
    Top = 12
    Width = 111
    Height = 13
    Caption = 'C'#243'digo do Fornecedor.:'
  end
  object Label4: TLabel
    Left = 3
    Top = 34
    Width = 83
    Height = 13
    Caption = 'C'#243'digo do Grupo:'
  end
  object Label5: TLabel
    Left = 4
    Top = 58
    Width = 86
    Height = 13
    Caption = 'Ramo do Produto:'
  end
  object Label9: TLabel
    Left = 4
    Top = 80
    Width = 81
    Height = 13
    Caption = 'Tipo de Controle:'
  end
  object Label12: TLabel
    Left = 3
    Top = 101
    Width = 84
    Height = 13
    Caption = 'Tipo de Produtos:'
  end
  object Label1: TLabel
    Left = 7
    Top = 126
    Width = 103
    Height = 13
    Caption = '% desconto pre'#231'o 01:'
  end
  object CODFOR: TEdit
    Left = 139
    Top = 10
    Width = 60
    Height = 19
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 0
    OnExit = CODFORExit
    OnKeyPress = CODFORKeyPress
  end
  object NOMFOR: TEdit
    Left = 204
    Top = 9
    Width = 295
    Height = 19
    Ctl3D = False
    Enabled = False
    ParentColor = True
    ParentCtl3D = False
    TabOrder = 1
    Text = 'Todos...'
  end
  object NOMGRU: TEdit
    Left = 204
    Top = 31
    Width = 295
    Height = 19
    Ctl3D = False
    Enabled = False
    ParentColor = True
    ParentCtl3D = False
    TabOrder = 2
    Text = 'Todos...'
  end
  object CODGRU: TEdit
    Left = 139
    Top = 32
    Width = 60
    Height = 19
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 3
    OnExit = CODGRUExit
    OnKeyPress = CODGRUKeyPress
  end
  object CODRAM: TEdit
    Left = 140
    Top = 56
    Width = 60
    Height = 19
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 4
    OnExit = CODRAMExit
    OnKeyPress = CODRAMKeyPress
  end
  object NOMRAM: TEdit
    Left = 205
    Top = 55
    Width = 295
    Height = 19
    Ctl3D = False
    Enabled = False
    ParentColor = True
    ParentCtl3D = False
    TabOrder = 5
    Text = 'Todos...'
  end
  object NOMCON: TEdit
    Left = 205
    Top = 77
    Width = 295
    Height = 19
    Ctl3D = False
    Enabled = False
    ParentColor = True
    ParentCtl3D = False
    TabOrder = 6
    Text = 'Todos...'
  end
  object CODCON: TEdit
    Left = 140
    Top = 78
    Width = 60
    Height = 19
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 7
    OnExit = CODCONExit
    OnKeyPress = CODCONKeyPress
  end
  object CODTIP: TEdit
    Left = 140
    Top = 99
    Width = 60
    Height = 19
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 8
    OnExit = CODTIPExit
    OnKeyPress = CODTIPKeyPress
  end
  object NOMTIP: TEdit
    Left = 205
    Top = 98
    Width = 295
    Height = 19
    Ctl3D = False
    Enabled = False
    ParentColor = True
    ParentCtl3D = False
    TabOrder = 9
    Text = 'Todos...'
  end
  object bbAjustar: TBitBtn
    Left = 8
    Top = 145
    Width = 128
    Height = 25
    Caption = 'Ajustar Agora'
    TabOrder = 11
    OnClick = bbAjustarClick
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
    Left = 372
    Top = 143
    Width = 128
    Height = 25
    Caption = '&Sair'
    TabOrder = 12
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
  object PDESC01: TEdit
    Left = 141
    Top = 121
    Width = 60
    Height = 19
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 10
    OnExit = PDESC01Exit
  end
end
