object Frm_RelOS: TFrm_RelOS
  Left = 43
  Top = 114
  Width = 747
  Height = 262
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Relat'#243'rio de Ordem de Servi'#231'o'
  Color = clSkyBlue
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
    Left = 78
    Top = 13
    Width = 89
    Height = 13
    Caption = 'C'#243'digo do Cliente.:'
  end
  object Label2: TLabel
    Left = 114
    Top = 34
    Width = 54
    Height = 13
    Caption = 'Periodo de '
  end
  object Label3: TLabel
    Left = 270
    Top = 35
    Width = 6
    Height = 13
    Caption = #224
  end
  object Label4: TLabel
    Left = 104
    Top = 54
    Width = 64
    Height = 13
    Caption = 'Chave Inicial:'
  end
  object Label5: TLabel
    Left = 244
    Top = 55
    Width = 59
    Height = 13
    Caption = 'Chave Final:'
  end
  object Label6: TLabel
    Left = 127
    Top = 75
    Width = 42
    Height = 13
    Caption = 'T'#233'cnico:'
  end
  object CODCLI: TEdit
    Left = 177
    Top = 8
    Width = 55
    Height = 19
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 0
    OnExit = CODCLIExit
    OnKeyPress = CODCLIKeyPress
  end
  object NOMCLI: TEdit
    Left = 235
    Top = 7
    Width = 299
    Height = 21
    Enabled = False
    ParentColor = True
    TabOrder = 1
    Text = 'Todos...'
  end
  object MDT1: TMaskEdit
    Left = 177
    Top = 30
    Width = 66
    Height = 19
    Ctl3D = False
    EditMask = '!99/99/9999;1; '
    MaxLength = 10
    ParentCtl3D = False
    TabOrder = 2
    Text = '  /  /    '
    OnExit = MDT1Exit
  end
  object MDT2: TMaskEdit
    Left = 305
    Top = 30
    Width = 66
    Height = 19
    Ctl3D = False
    EditMask = '!99/99/9999;1; '
    MaxLength = 10
    ParentCtl3D = False
    TabOrder = 3
    Text = '  /  /    '
    OnExit = MDT2Exit
  end
  object CHAVEI: TEdit
    Left = 177
    Top = 52
    Width = 55
    Height = 19
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 4
    OnExit = CHAVEIExit
  end
  object CHAVEF: TEdit
    Left = 306
    Top = 52
    Width = 55
    Height = 19
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 5
    OnExit = CHAVEFExit
  end
  object RG_OPER: TRadioGroup
    Left = 177
    Top = 96
    Width = 153
    Height = 42
    Caption = 'Tipo de OS'
    Columns = 2
    Ctl3D = False
    ItemIndex = 3
    Items.Strings = (
      'A Pagar'
      'Garantia'
      'Contrato'
      'Todos')
    ParentCtl3D = False
    TabOrder = 6
  end
  object RG_ORDEM: TRadioGroup
    Left = 541
    Top = 10
    Width = 138
    Height = 66
    Caption = 'Ordem do Relat'#243'rio:'
    Ctl3D = False
    ItemIndex = 1
    Items.Strings = (
      'Data OS Crescente'
      'Data OS Decrescente')
    ParentCtl3D = False
    TabOrder = 7
  end
  object CODTEC: TEdit
    Left = 177
    Top = 72
    Width = 55
    Height = 19
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 8
    OnExit = CODTECExit
    OnKeyPress = CODTECKeyPress
  end
  object NOMTEC: TEdit
    Left = 234
    Top = 72
    Width = 300
    Height = 21
    Enabled = False
    ParentColor = True
    TabOrder = 9
    Text = 'Todos...'
  end
  object RG_TPESQ: TRadioGroup
    Left = 381
    Top = 28
    Width = 153
    Height = 42
    Caption = 'Pesquisar por data:'
    Columns = 2
    Ctl3D = False
    ItemIndex = 0
    Items.Strings = (
      'da OS'
      'da Entrada'
      'da Entrega')
    ParentCtl3D = False
    TabOrder = 10
  end
  object RG_MODELO: TRadioGroup
    Left = 351
    Top = 96
    Width = 165
    Height = 42
    Caption = 'Modelo do Relat'#243'rio:'
    Columns = 2
    Ctl3D = False
    ItemIndex = 0
    Items.Strings = (
      'Modelo 01'
      'Modelo 02'
      'Modelo 03')
    ParentCtl3D = False
    TabOrder = 11
    OnClick = RG_MODELOClick
  end
  object bbImprimir: TBitBtn
    Left = 40
    Top = 146
    Width = 162
    Height = 41
    Caption = '&Imprimir'
    TabOrder = 13
    OnClick = bbImprimirClick
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000130B0000130B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
      00033FFFFFFFFFFFFFFF0888888888888880777777777777777F088888888888
      8880777777777777777F0000000000000000FFFFFFFFFFFFFFFF0F8F8F8F8F8F
      8F80777777777777777F08F8F8F8F8F8F9F0777777777777777F0F8F8F8F8F8F
      8F807777777777777F7F0000000000000000777777777777777F3330FFFFFFFF
      03333337F3FFFF3F7F333330F0000F0F03333337F77773737F333330FFFFFFFF
      03333337F3FF3FFF7F333330F00F000003333337F773777773333330FFFF0FF0
      33333337F3FF7F3733333330F08F0F0333333337F7737F7333333330FFFF0033
      33333337FFFF7733333333300000033333333337777773333333}
    NumGlyphs = 2
  end
  object bbSair: TBitBtn
    Left = 511
    Top = 147
    Width = 162
    Height = 41
    Caption = '&Sair'
    TabOrder = 14
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
  object RG_STATUS: TRadioGroup
    Left = 520
    Top = 96
    Width = 159
    Height = 42
    Caption = 'Emitir Somente:'
    Columns = 2
    Ctl3D = False
    ItemIndex = 0
    Items.Strings = (
      'Pendentes'
      'Baixadas'
      'Todas')
    ParentCtl3D = False
    TabOrder = 12
    OnClick = RG_MODELOClick
  end
end
