object Frm_SelEmp: TFrm_SelEmp
  Left = 192
  Top = 114
  Width = 375
  Height = 313
  Caption = 'Selecionar Empresas'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object GB_EMPRESAS: TGroupBox
    Left = 0
    Top = 0
    Width = 367
    Height = 279
    Align = alClient
    Caption = 'Empresas:'
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 0
    object CLB_EMPRESAS: TCheckListBox
      Left = 1
      Top = 14
      Width = 365
      Height = 237
      Align = alClient
      Color = 16776176
      Columns = 1
      Ctl3D = False
      ItemHeight = 18
      Items.Strings = (
        '[001]-EMPRESA'
        '[101]-EMPRESA-101')
      ParentCtl3D = False
      Style = lbOwnerDrawFixed
      TabOrder = 0
      OnClick = CLB_EMPRESASClick
    end
    object Panel3: TPanel
      Left = 1
      Top = 251
      Width = 365
      Height = 27
      Align = alBottom
      TabOrder = 1
      object bbFechar: TBitBtn
        Left = 63
        Top = 0
        Width = 265
        Height = 26
        Caption = 'Fechar'
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
  end
end
