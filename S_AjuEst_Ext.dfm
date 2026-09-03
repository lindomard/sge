object Frm_AjuEst_Ext: TFrm_AjuEst_Ext
  Left = 205
  Top = 114
  Width = 467
  Height = 250
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Ajusta o Estoque do Produto de Acordo com o Extrato'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object lbl_estant: TLabel
    Left = 114
    Top = 70
    Width = 74
    Height = 13
    Caption = 'Estoque do dia:'
    Visible = False
  end
  object Label1: TLabel
    Left = 105
    Top = 113
    Width = 61
    Height = 13
    Caption = 'So o C'#243'digo:'
  end
  object Label2: TLabel
    Left = 107
    Top = 134
    Width = 57
    Height = 13
    Caption = 'So o Grupo:'
  end
  object lbl_dataini: TLabel
    Left = 110
    Top = 92
    Width = 93
    Height = 13
    Caption = 'Documento a partir:'
    Visible = False
  end
  object BitBtn1: TBitBtn
    Left = 112
    Top = 158
    Width = 201
    Height = 25
    Caption = 'Ajustar Agora'
    TabOrder = 6
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
  object bbSair: TBitBtn
    Left = 111
    Top = 187
    Width = 201
    Height = 25
    Caption = '&Sair do Programa'
    TabOrder = 7
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
  object RG_ESTOQUE: TRadioGroup
    Left = 56
    Top = 6
    Width = 343
    Height = 36
    Caption = 'Tipo de Estoque'
    Columns = 4
    ItemIndex = 0
    Items.Strings = (
      'Normal'
      'Consignados'
      'Revenda'
      'Terceiros')
    TabOrder = 0
  end
  object cb_invant: TCheckBox
    Left = 113
    Top = 48
    Width = 200
    Height = 17
    Caption = 'Entrar na estatistica estoque anterior'
    TabOrder = 1
    OnClick = cb_invantClick
  end
  object MDT1: TMaskEdit
    Left = 207
    Top = 66
    Width = 96
    Height = 19
    Ctl3D = False
    EditMask = '!99/99/9999;1; '
    MaxLength = 10
    ParentCtl3D = False
    TabOrder = 2
    Text = '  /  /    '
    Visible = False
    OnExit = MDT1Exit
  end
  object CODPRO: TEdit
    Left = 173
    Top = 112
    Width = 142
    Height = 19
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 4
    OnExit = CODPROExit
  end
  object CODGRU: TEdit
    Left = 173
    Top = 130
    Width = 142
    Height = 19
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 5
    OnExit = CODGRUExit
  end
  object MDATAINI: TMaskEdit
    Left = 207
    Top = 88
    Width = 96
    Height = 19
    Ctl3D = False
    EditMask = '!99/99/9999;1; '
    MaxLength = 10
    ParentCtl3D = False
    TabOrder = 3
    Text = '  /  /    '
    Visible = False
    OnExit = MDATAINIExit
  end
end
