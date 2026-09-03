object Frm_MCodP: TFrm_MCodP
  Left = 145
  Top = 243
  Width = 616
  Height = 156
  Caption = 'Substituir/Agrupar Produtos'
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
    Left = 38
    Top = 52
    Width = 119
    Height = 13
    Caption = 'Confirma'#231#227'o...........:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 38
    Top = 30
    Width = 118
    Height = 13
    Caption = 'Novo C'#243'digo..........:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label1: TLabel
    Left = 36
    Top = 10
    Width = 118
    Height = 13
    Caption = 'C'#243'digo do Produto..:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object bbEfetivar: TBitBtn
    Left = 37
    Top = 75
    Width = 130
    Height = 40
    Hint = 'Click aqui para '#13#10'efetivar a troca'
    Caption = '&Efetivar a Troca'
    Enabled = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 0
    OnClick = bbEfetivarClick
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000130B0000130B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF003333330B7FFF
      FFB0333333777F3333773333330B7FFFFFB0333333777F3333773333330B7FFF
      FFB0333333777F3333773333330B7FFFFFB03FFFFF777FFFFF77000000000077
      007077777777777777770FFFFFFFF00077B07F33333337FFFF770FFFFFFFF000
      7BB07F3FF3FFF77FF7770F00F000F00090077F77377737777F770FFFFFFFF039
      99337F3FFFF3F7F777FF0F0000F0F09999937F7777373777777F0FFFFFFFF999
      99997F3FF3FFF77777770F00F000003999337F773777773777F30FFFF0FF0339
      99337F3FF7F3733777F30F08F0F0337999337F7737F73F7777330FFFF0039999
      93337FFFF7737777733300000033333333337777773333333333}
    NumGlyphs = 2
  end
  object CODPRO: TEdit
    Left = 148
    Top = 4
    Width = 121
    Height = 19
    Hint = 'C'#243'digo do Produto a Ser'#13#10'Agrudado/Substituido'
    Ctl3D = False
    ParentCtl3D = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 1
    OnExit = CODPROExit
    OnKeyDown = CODPROKeyDown
    OnKeyPress = CODPROKeyPress
  end
  object NCODPRO: TEdit
    Left = 148
    Top = 26
    Width = 120
    Height = 19
    Hint = 'C'#243'digo a Ser Mantido'
    Ctl3D = False
    ParentCtl3D = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 2
    OnExit = NCODPROExit
    OnKeyPress = NCODPROKeyPress
  end
  object CCODPRO: TEdit
    Left = 148
    Top = 48
    Width = 121
    Height = 19
    Hint = 'Confirma'#231#227'o do C'#243'digo'#13#10'a ser Mantido'
    Ctl3D = False
    ParentCtl3D = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 3
    OnExit = CCODPROExit
    OnKeyPress = CCODPROKeyPress
  end
  object NNOMPRO: TEdit
    Left = 267
    Top = 26
    Width = 327
    Height = 19
    Color = 16760799
    Ctl3D = False
    Enabled = False
    ParentCtl3D = False
    TabOrder = 4
  end
  object NOMPRO: TEdit
    Left = 268
    Top = 4
    Width = 327
    Height = 19
    Color = 16760799
    Ctl3D = False
    Enabled = False
    ParentCtl3D = False
    TabOrder = 5
  end
  object bbSair: TBitBtn
    Left = 390
    Top = 74
    Width = 130
    Height = 40
    Hint = 'Fechar Esta Janela'
    Caption = '&Sair do Programa'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 6
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
