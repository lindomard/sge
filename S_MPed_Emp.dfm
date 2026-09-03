object Frm_MPed_Emp: TFrm_MPed_Emp
  Left = 82
  Top = 115
  Width = 655
  Height = 205
  Caption = 
    'Trocar o C'#243'digo da Empresa de Pedidos(RESTRITO-PODE DAR PROBLEMA' +
    'S NO ESTOQUE)'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 24
    Top = 19
    Width = 80
    Height = 13
    Caption = 'Empresa Origem:'
  end
  object Label2: TLabel
    Left = 26
    Top = 43
    Width = 83
    Height = 13
    Caption = 'Empresa Destino:'
  end
  object Label3: TLabel
    Left = 27
    Top = 90
    Width = 85
    Height = 13
    Caption = 'Chave do Pedido:'
  end
  object Label4: TLabel
    Left = 187
    Top = 90
    Width = 34
    Height = 13
    Caption = 'Ordem:'
  end
  object Label5: TLabel
    Left = 305
    Top = 89
    Width = 26
    Height = 13
    Caption = 'Data:'
  end
  object Label6: TLabel
    Left = 27
    Top = 63
    Width = 84
    Height = 13
    Caption = 'N'#250'mero da Nota.:'
  end
  object CODEMP_ORI: TEdit
    Left = 118
    Top = 15
    Width = 61
    Height = 19
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 0
    OnExit = CODEMP_ORIExit
    OnKeyPress = CODEMP_ORIKeyPress
  end
  object CODEMP_DEST: TEdit
    Left = 118
    Top = 37
    Width = 61
    Height = 19
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 1
    OnExit = CODEMP_DESTExit
    OnKeyPress = CODEMP_DESTKeyPress
  end
  object NOME_ORI: TEdit
    Left = 181
    Top = 15
    Width = 316
    Height = 19
    Ctl3D = False
    Enabled = False
    ParentColor = True
    ParentCtl3D = False
    TabOrder = 2
  end
  object NOME_DEST: TEdit
    Left = 181
    Top = 37
    Width = 316
    Height = 19
    Ctl3D = False
    Enabled = False
    ParentColor = True
    ParentCtl3D = False
    TabOrder = 3
  end
  object CHAVE: TEdit
    Left = 118
    Top = 86
    Width = 61
    Height = 19
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 5
    OnExit = CHAVEExit
  end
  object ORDEM: TEdit
    Left = 225
    Top = 86
    Width = 41
    Height = 19
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 6
    OnExit = ORDEMExit
  end
  object DATA: TEdit
    Left = 349
    Top = 85
    Width = 148
    Height = 19
    Ctl3D = False
    Enabled = False
    ParentColor = True
    ParentCtl3D = False
    TabOrder = 7
  end
  object bbEfetivar: TBitBtn
    Left = 32
    Top = 136
    Width = 121
    Height = 25
    Caption = 'Efetivar a Troca'
    TabOrder = 8
    OnClick = bbEfetivarClick
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
    Left = 375
    Top = 136
    Width = 121
    Height = 25
    Caption = 'Sair'
    TabOrder = 9
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
  object NUMNF: TEdit
    Left = 117
    Top = 60
    Width = 61
    Height = 19
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 4
    OnExit = NUMNFExit
  end
end
