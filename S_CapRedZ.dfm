object Frm_CapRedZ: TFrm_CapRedZ
  Left = 60
  Top = 107
  Width = 541
  Height = 368
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Capturar Redu'#231#245'es Z Anteriores'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = [fsBold]
  OldCreateOrder = False
  Position = poDefault
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 24
    Top = 8
    Width = 72
    Height = 13
    Caption = 'Per'#237'odo de: '
  end
  object Label5: TLabel
    Left = 203
    Top = 10
    Width = 8
    Height = 13
    Caption = 'a'
  end
  object bbProcessar: TBitBtn
    Left = 16
    Top = 70
    Width = 140
    Height = 25
    Caption = '&Processar'
    TabOrder = 4
    OnClick = bbProcessarClick
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333000000000
      00333FF777777777773F0000FFFFFFFFFF0377773F3F3F3F3F7308880F0F0F0F
      0FF07F33737373737337088880FFFFFFFFF07F3337FFFFFFFFF7088880000000
      00037F3337777777777308888033330F03337F3337F3FF7F7FFF088880300000
      00007F3337F7777777770FFFF030FFFFFFF07F3FF7F7F3FFFFF708008030F000
      00F07F7737F7F77777F70FFFF030F0AAE0F07F3FF7F7F7F337F708008030F0DA
      D0F07F7737F7F7FFF7F70FFFF030F00000F07F33F7F7F77777370FF9F030FFFF
      FFF07F3737F7FFFFFFF70FFFF030000000007FFFF7F777777777000000333333
      3333777777333333333333333333333333333333333333333333}
    NumGlyphs = 2
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 278
    Width = 525
    Height = 52
    Align = alBottom
    Caption = 'Progresso do processamento:'
    TabOrder = 0
    Visible = False
    object Gauge1: TGauge
      Left = 2
      Top = 15
      Width = 521
      Height = 35
      Align = alClient
      Progress = 0
    end
  end
  object MDT1: TMaskEdit
    Left = 104
    Top = 4
    Width = 89
    Height = 21
    EditMask = '!99/99/9999;1; '
    MaxLength = 10
    TabOrder = 1
    Text = '  /  /    '
    OnExit = MDT1Exit
  end
  object MDT2: TMaskEdit
    Left = 216
    Top = 5
    Width = 90
    Height = 21
    EditMask = '!99/99/9999;1; '
    MaxLength = 10
    TabOrder = 2
    Text = '  /  /    '
    OnExit = MDT2Exit
  end
  object bbSair: TBitBtn
    Left = 245
    Top = 69
    Width = 140
    Height = 25
    Caption = '&Sair'
    TabOrder = 5
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
  object RG_TIPO: TRadioGroup
    Left = 3
    Top = 29
    Width = 394
    Height = 39
    Caption = 'Atualizar os arquivos de:'
    Columns = 3
    ItemIndex = 1
    Items.Strings = (
      'Dados do Sintegra'
      'Mapa Resumo'
      'Todos')
    TabOrder = 3
  end
end
