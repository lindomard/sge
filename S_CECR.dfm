object Frm_CECR: TFrm_CECR
  Left = 192
  Top = 107
  Width = 581
  Height = 375
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Resumo da Conferencia Eletronica'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 0
    Top = 0
    Width = 573
    Height = 24
    Align = alTop
    Alignment = taCenter
    Caption = 'Resumo da Leitura '#211'ptica'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -20
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 0
    Top = 144
    Width = 573
    Height = 24
    Align = alTop
    Alignment = taCenter
    Caption = 'Rela'#231#227'o das Divergencias Encontradas'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -20
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 24
    Width = 573
    Height = 120
    Align = alTop
    DataSource = Frm_CEC.Src_CeleRes
    ReadOnly = True
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'CECODBAR'
        Width = 89
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'descricao'
        Width = 224
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CEQTDL'
        Width = 92
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CEQTDP'
        Width = 103
        Visible = True
      end>
  end
  object STG1: TStringGrid
    Left = 0
    Top = 168
    Width = 573
    Height = 120
    Align = alTop
    ColCount = 4
    DefaultRowHeight = 15
    FixedCols = 0
    RowCount = 2
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goColSizing]
    TabOrder = 1
    OnDrawCell = STG1DrawCell
    ColWidths = (
      97
      239
      103
      92)
  end
  object Panel1: TPanel
    Left = 0
    Top = 288
    Width = 573
    Height = 53
    Align = alClient
    TabOrder = 2
    object BitBtn1: TBitBtn
      Left = 5
      Top = 3
      Width = 250
      Height = 31
      Caption = '&Fechar Esta Janela'
      TabOrder = 0
      OnClick = BitBtn1Click
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
    object BitBtn2: TBitBtn
      Left = 305
      Top = 5
      Width = 250
      Height = 31
      Caption = 'Voltar Para a Conferencia'
      TabOrder = 1
      OnClick = BitBtn2Click
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333333333333333333333333333333333FFFFFFFFF333333300000000
        0333333777777777F33333330888888803333337FFFFFFF7F333333307777777
        0333333777777777F33333330FFFFFFF03333337F3F3FFF7F33333330F9F000F
        03333337F7377737F33333330FFFFFFF03333337F3333337F33333330FFFFFFF
        03333337F3FFFFF7F33333330F40004F03333337F77777F7F33333330F00000F
        03333337F7F337F7F33333330F00000F03333337F7FFF7F7F33333330F40004F
        03333337F7777737F33333330FFFFFFF03333337FFFFFFF7F333333300000000
        0333333777777777333333333333333333333333333333333333}
      NumGlyphs = 2
    end
  end
end
