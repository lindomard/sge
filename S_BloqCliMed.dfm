object Frm_BloqCliMed: TFrm_BloqCliMed
  Left = 90
  Top = 177
  Width = 606
  Height = 171
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Gerar Limite de Cr'#233'dito atrav'#233's do Hist'#243'rico'
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
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object CODVEN: TEdit
    Left = 108
    Top = 14
    Width = 59
    Height = 19
    Hint = 'Informe Codigo do Vendedor ou'#13#10'digite o nome p/ Consultar'
    Ctl3D = False
    ParentCtl3D = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 0
    OnExit = CODVENExit
    OnKeyPress = CODVENKeyPress
  end
  object lbx_codven: TListBox
    Left = 166
    Top = 14
    Width = 423
    Height = 42
    Hint = 'Use a Tecla - Delete P/ Remover Codigo Selecionado....'
    Color = 13828095
    Ctl3D = False
    ItemHeight = 13
    ParentCtl3D = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 1
    OnKeyDown = lbx_codvenKeyDown
  end
  object OMITIR_VEN: TCheckBox
    Left = 108
    Top = 36
    Width = 51
    Height = 17
    Caption = 'Omitir'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 2
  end
  object StaticText2: TStaticText
    Left = 9
    Top = 14
    Width = 100
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
    TabOrder = 3
  end
  object StaticText1: TStaticText
    Left = 9
    Top = 55
    Width = 100
    Height = 19
    Alignment = taRightJustify
    AutoSize = False
    BorderStyle = sbsSingle
    Caption = 'Per'#237'odo de'
    Color = 16754342
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    TabOrder = 4
  end
  object MDT1: TMaskEdit
    Left = 108
    Top = 55
    Width = 80
    Height = 19
    Ctl3D = False
    EditMask = '!99/99/9999;1; '
    MaxLength = 10
    ParentCtl3D = False
    TabOrder = 5
    Text = '  /  /    '
    OnExit = MDT1Exit
  end
  object StaticText5: TStaticText
    Left = 187
    Top = 55
    Width = 18
    Height = 19
    Alignment = taCenter
    AutoSize = False
    BorderStyle = sbsSingle
    Caption = #224
    Color = 16754342
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    TabOrder = 6
  end
  object MDT2: TMaskEdit
    Left = 204
    Top = 55
    Width = 80
    Height = 19
    Ctl3D = False
    EditMask = '!99/99/9999;1; '
    MaxLength = 10
    ParentCtl3D = False
    TabOrder = 7
    Text = '  /  /    '
    OnExit = MDT2Exit
  end
  object ST_OBS: TStaticText
    Left = 283
    Top = 55
    Width = 306
    Height = 19
    Alignment = taCenter
    AutoSize = False
    BorderStyle = sbsSingle
    Color = 16754342
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    TabOrder = 8
  end
  object bbAplicar: TBitBtn
    Left = 8
    Top = 77
    Width = 150
    Height = 40
    Caption = '&Aplicar'
    TabOrder = 9
    OnClick = bbAplicarClick
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
    Left = 437
    Top = 77
    Width = 150
    Height = 40
    Caption = '&Sair'
    TabOrder = 10
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
