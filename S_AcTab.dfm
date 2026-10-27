object Frm_AcTab: TFrm_AcTab
  Left = 63
  Top = 136
  Width = 739
  Height = 375
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Acesso Por Programa(tabelas)'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = [fsBold]
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 731
    Height = 41
    Align = alTop
    Caption = 'Cargo: 020-Administra'#231#227'o'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -30
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
    TabOrder = 0
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 41
    Width = 731
    Height = 262
    Align = alClient
    Caption = 'Programas:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    object STG1: TStringGrid
      Left = 32
      Top = 171
      Width = 320
      Height = 13
      ColCount = 2
      DefaultRowHeight = 15
      FixedCols = 0
      FixedRows = 0
      TabOrder = 0
      Visible = False
    end
    object DBGrid1: TDBGrid
      Left = 2
      Top = 15
      Width = 727
      Height = 245
      Align = alClient
      DataSource = DM4.Src_AcTab
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = [fsBold]
      OnColExit = DBGrid1ColExit
      OnDrawColumnCell = DBGrid1DrawColumnCell
      OnKeyPress = DBGrid1KeyPress
      Columns = <
        item
          Expanded = False
          FieldName = 'AT_DESC'
          ReadOnly = True
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'AT_INC'
          Width = 64
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'AT_ALT'
          Width = 64
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'AT_EXC'
          Width = 64
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'AT_REL'
          Width = 62
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'AT_ADIC'
          Width = 64
          Visible = True
        end>
    end
    object dbcb_inc: TDBCheckBox
      Left = 360
      Top = 109
      Width = 15
      Height = 17
      DataField = 'AT_INC'
      DataSource = DM4.Src_AcTab
      TabOrder = 2
      ValueChecked = '0'
      ValueUnchecked = '1'
      Visible = False
      OnClick = dbcb_incClick
    end
    object dbcb_alt: TDBCheckBox
      Left = 381
      Top = 109
      Width = 15
      Height = 17
      DataField = 'AT_ALT'
      DataSource = DM4.Src_AcTab
      TabOrder = 3
      ValueChecked = '0'
      ValueUnchecked = '1'
      Visible = False
      OnClick = dbcb_altClick
    end
    object dbcb_exc: TDBCheckBox
      Left = 401
      Top = 111
      Width = 15
      Height = 17
      DataField = 'AT_EXC'
      DataSource = DM4.Src_AcTab
      TabOrder = 4
      ValueChecked = '0'
      ValueUnchecked = '1'
      Visible = False
      OnClick = dbcb_excClick
    end
    object dbcb_rel: TDBCheckBox
      Left = 420
      Top = 110
      Width = 15
      Height = 17
      DataField = 'AT_REL'
      DataSource = DM4.Src_AcTab
      TabOrder = 5
      ValueChecked = '0'
      ValueUnchecked = '1'
      Visible = False
      OnClick = dbcb_relClick
    end
    object dbcb_Adic: TDBCheckBox
      Left = 441
      Top = 118
      Width = 15
      Height = 17
      DataField = 'AT_ADIC'
      DataSource = DM4.Src_AcTab
      TabOrder = 6
      ValueChecked = '0'
      ValueUnchecked = '1'
      Visible = False
      OnClick = dbcb_AdicClick
      OnExit = dbcb_AdicExit
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 303
    Width = 731
    Height = 41
    Align = alBottom
    TabOrder = 2
    object BitBtn1: TBitBtn
      Left = 264
      Top = 8
      Width = 217
      Height = 25
      Caption = '&Fechar'
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
  end
end
