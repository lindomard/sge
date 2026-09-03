object Frm_DM_Exportar: TFrm_DM_Exportar
  Left = 179
  Top = 144
  Width = 696
  Height = 329
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Exportar Dispositivo Movel'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = [fsBold]
  KeyPreview = True
  OldCreateOrder = False
  Position = poDefault
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object Label11: TLabel
    Left = 7
    Top = 6
    Width = 65
    Height = 13
    Caption = 'Supervisor:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label1: TLabel
    Left = 14
    Top = 47
    Width = 59
    Height = 13
    Caption = 'Vendedor:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label5: TLabel
    Left = 27
    Top = 87
    Width = 44
    Height = 13
    Caption = 'Cliente:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbl_duprec: TLabel
    Left = 49
    Top = 209
    Width = 251
    Height = 13
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'Duplicatas Recebidas Somente dos Ultimos:'
  end
  object lbl_duprec2: TLabel
    Left = 341
    Top = 210
    Width = 24
    Height = 13
    Caption = 'dias'
  end
  object Label8: TLabel
    Left = 49
    Top = 228
    Width = 251
    Height = 13
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'Pedidos apenas dos '#250'ltimos :'
  end
  object Label9: TLabel
    Left = 341
    Top = 227
    Width = 24
    Height = 13
    Caption = 'dias'
  end
  object CODSUP: TEdit
    Left = 75
    Top = 6
    Width = 68
    Height = 19
    Hint = 'Digite o C'#243'digo a Ser Filtrado'
    Ctl3D = False
    ParentCtl3D = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 0
    OnExit = CODSUPExit
    OnKeyPress = CODSUPKeyPress
  end
  object lbx_codsup: TListBox
    Left = 142
    Top = 5
    Width = 519
    Height = 43
    Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
    Color = 13828095
    Ctl3D = False
    ItemHeight = 13
    ParentCtl3D = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 1
    OnKeyDown = lbx_codsupKeyDown
  end
  object OMITIR_SUP: TCheckBox
    Left = 75
    Top = 28
    Width = 57
    Height = 17
    Hint = 'Se Marcado os C'#243'digos'#13#10'Selecionados n'#227'o Ser'#227'o'#13#10'Impressos'
    Caption = 'Omitir'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 2
  end
  object CODVEN: TEdit
    Left = 75
    Top = 47
    Width = 68
    Height = 19
    Hint = 'Informe Codigo do Vendedor ou'#13#10'digite o nome p/ Consultar'
    Ctl3D = False
    ParentCtl3D = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 3
    OnExit = CODVENExit
    OnKeyPress = CODVENKeyPress
  end
  object lbx_codven: TListBox
    Left = 142
    Top = 47
    Width = 519
    Height = 42
    Hint = 'Use a Tecla - Delete P/ Remover Codigo Selecionado....'
    Color = 13828095
    Ctl3D = False
    ItemHeight = 13
    ParentCtl3D = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 4
    OnKeyDown = lbx_codvenKeyDown
  end
  object OMITIR_VEN: TCheckBox
    Left = 76
    Top = 72
    Width = 51
    Height = 17
    Caption = 'Omitir'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 5
  end
  object CODCLI: TEdit
    Left = 75
    Top = 88
    Width = 68
    Height = 19
    Hint = 'Informe Codigo do Cliente ou'#13#10'digite o nome p/consultar'
    Ctl3D = False
    ParentCtl3D = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 6
    OnExit = CODCLIExit
    OnKeyPress = CODCLIKeyPress
  end
  object lbx_codcli: TListBox
    Left = 142
    Top = 88
    Width = 519
    Height = 42
    Hint = 'Use a Tecla - Delete P/ Remover Codigo Selecionado....'
    Color = 13828095
    Ctl3D = False
    ItemHeight = 13
    ParentCtl3D = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 7
    OnKeyDown = lbx_codcliKeyDown
  end
  object OMITIR_CLI: TCheckBox
    Left = 79
    Top = 110
    Width = 51
    Height = 17
    Caption = 'Omitir'
    Ctl3D = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentCtl3D = False
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 8
  end
  object duprec: TEdit
    Left = 301
    Top = 206
    Width = 35
    Height = 19
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 9
    Text = '30'
  end
  object diasped: TEdit
    Left = 301
    Top = 224
    Width = 35
    Height = 19
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 10
    Text = '03'
  end
  object Panel1: TPanel
    Left = 0
    Top = 263
    Width = 680
    Height = 28
    Align = alBottom
    TabOrder = 11
    object sb_SalvarPadrao: TSpeedButton
      Left = 217
      Top = 1
      Width = 150
      Height = 25
      Hint = 'Salva as configura'#231#245'es como padr'#227'o'
      Caption = '&Salvar Padr'#227'o'
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
      ParentShowHint = False
      ShowHint = True
    end
    object bbProcessar: TBitBtn
      Left = 1
      Top = 1
      Width = 150
      Height = 25
      Caption = '&Processar Agora'
      TabOrder = 0
      OnClick = bbProcessarClick
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
    object bbSair: TBitBtn
      Left = 432
      Top = 1
      Width = 150
      Height = 25
      Caption = '&Sair'
      TabOrder = 1
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
  object Qr_Temp: TQuery
    DatabaseName = 'SG_ASSOC'
    Left = 168
    Top = 152
  end
  object XMLDocument1: TXMLDocument
    Left = 288
    Top = 152
    DOMVendorDesc = 'MSXML'
  end
end
