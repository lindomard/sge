object frm_obs_Grid: Tfrm_obs_Grid
  Left = -1
  Top = 114
  BorderIcons = []
  BorderStyle = bsSingle
  ClientHeight = 341
  ClientWidth = 729
  Color = 16756912
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label_obs: TLabel
    Left = 0
    Top = 41
    Width = 729
    Height = 48
    Align = alTop
    Alignment = taCenter
    AutoSize = False
    Caption = 
      'Divergencias Encontradas ao Verificar esta ordem de Produ'#231#227'o a C' +
      'onfirma'#231#227'o n'#227'o Sera Aceita'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -20
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    WordWrap = True
  end
  object Panel_obs_cab: TPanel
    Left = 0
    Top = 0
    Width = 729
    Height = 41
    Align = alTop
    Caption = 'ADVERTENCIA'
    Color = 16756912
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -40
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 89
    Width = 729
    Height = 211
    Align = alClient
    Caption = 'Produtos com Irregularidades:'
    TabOrder = 1
    object DBGrid1: TDBGrid
      Left = 2
      Top = 15
      Width = 725
      Height = 194
      Align = alClient
      DataSource = Src_Advert
      Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 300
    Width = 729
    Height = 41
    Align = alBottom
    Color = 16756912
    TabOrder = 2
    object bbFechar: TBitBtn
      Left = 290
      Top = 6
      Width = 135
      Height = 33
      Caption = '&Fechar'
      TabOrder = 0
      OnClick = bbFecharClick
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
  object Src_Advert: TDataSource
    Left = 176
    Top = 113
  end
end
