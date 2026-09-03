object Frm_AjuCCu: TFrm_AjuCCu
  Left = 239
  Top = 170
  Width = 563
  Height = 129
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Ajusta o Caixa de Acordo com o Centro de Custo'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = [fsBold]
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poScreenCenter
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 6
    Top = 16
    Width = 156
    Height = 13
    Caption = 'Ajustar Entre o Per'#237'odo de:'
  end
  object Label2: TLabel
    Left = 249
    Top = 15
    Width = 8
    Height = 13
    Caption = #224
  end
  object Label3: TLabel
    Left = 7
    Top = 39
    Width = 156
    Height = 13
    Caption = 'Centro de Custo...............:'
  end
  object BitBtn1: TBitBtn
    Left = 274
    Top = 60
    Width = 130
    Height = 25
    Cursor = crHandPoint
    Hint = 'Processar Ajuste de Caixa com o Centro de Custo'
    Caption = '&Processar'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 4
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
  object MDT1: TMaskEdit
    Left = 163
    Top = 12
    Width = 76
    Height = 19
    Ctl3D = False
    EditMask = '!99/99/9999;1; '
    MaxLength = 10
    ParentCtl3D = False
    TabOrder = 0
    Text = '  /  /    '
    OnExit = MDT1Exit
  end
  object MDT2: TMaskEdit
    Left = 266
    Top = 13
    Width = 76
    Height = 19
    Ctl3D = False
    EditMask = '!99/99/9999;1; '
    MaxLength = 10
    ParentCtl3D = False
    TabOrder = 1
    Text = '  /  /    '
    OnExit = MDT2Exit
  end
  object CODCCU: TEdit
    Left = 163
    Top = 35
    Width = 81
    Height = 19
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 2
    OnExit = CODCCUExit
    OnKeyPress = CODCCUKeyPress
  end
  object NOMCCU: TEdit
    Left = 245
    Top = 34
    Width = 275
    Height = 21
    Enabled = False
    ParentColor = True
    TabOrder = 3
    Text = 'Todos...'
  end
  object BitBtn2: TBitBtn
    Left = 430
    Top = 60
    Width = 91
    Height = 25
    Cursor = crHandPoint
    Hint = 'Fechar Formulario'
    Caption = '&Sair'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 5
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
