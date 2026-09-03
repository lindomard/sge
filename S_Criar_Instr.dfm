object Frm_Criar_Inst: TFrm_Criar_Inst
  Left = 192
  Top = 114
  Width = 561
  Height = 284
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Criar Instru'#231#227'o SQL'
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
    Left = 16
    Top = 59
    Width = 36
    Height = 13
    Caption = 'Tabela:'
  end
  object Label2: TLabel
    Left = 18
    Top = 84
    Width = 32
    Height = 13
    Caption = 'Sa'#237'da:'
  end
  object Label3: TLabel
    Left = 19
    Top = 107
    Width = 31
    Height = 13
    Caption = 'Nome:'
  end
  object Label4: TLabel
    Left = 19
    Top = 130
    Width = 43
    Height = 13
    Caption = 'Carregar:'
  end
  object Label5: TLabel
    Left = 4
    Top = 152
    Width = 81
    Height = 13
    Caption = 'Externa Paradox:'
  end
  object SB01: TSpeedButton
    Left = 395
    Top = 148
    Width = 23
    Height = 22
    OnClick = SB01Click
  end
  object RG_TIPO: TRadioGroup
    Left = 0
    Top = 0
    Width = 545
    Height = 52
    Align = alTop
    Caption = 'Criar instru'#231#227'o SQL do Tipo'
    Columns = 2
    ItemIndex = 0
    Items.Strings = (
      'Inserir'
      'Alterar')
    TabOrder = 0
  end
  object bbCriar: TBitBtn
    Left = 16
    Top = 186
    Width = 130
    Height = 33
    Caption = 'Criar Agora'
    TabOrder = 5
    OnClick = bbCriarClick
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
    Left = 386
    Top = 186
    Width = 130
    Height = 33
    Caption = '&Sair do Programa'
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
  object NOMTAB: TEdit
    Left = 64
    Top = 56
    Width = 329
    Height = 19
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 1
    OnExit = NOMTABExit
  end
  object MSAIDA: TEdit
    Left = 64
    Top = 80
    Width = 329
    Height = 19
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 2
    Text = 'C:\SGE\TXT.TXT'
  end
  object nome: TEdit
    Left = 63
    Top = 103
    Width = 329
    Height = 19
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 3
  end
  object nome2: TEdit
    Left = 63
    Top = 126
    Width = 329
    Height = 19
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 4
  end
  object RG_PARAM: TRadioGroup
    Left = 397
    Top = 53
    Width = 133
    Height = 92
    Caption = 'Parametros Default'
    ItemIndex = 0
    Items.Strings = (
      'Float'
      'String'
      'DateTime'
      'Definir')
    TabOrder = 7
  end
  object TABEXT: TEdit
    Left = 87
    Top = 150
    Width = 305
    Height = 19
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 8
  end
  object OpenDialog1: TOpenDialog
    Left = 416
    Top = 168
  end
end
