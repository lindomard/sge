object Frm_CEleR: TFrm_CEleR
  Left = 60
  Top = 107
  Width = 1011
  Height = 396
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Resumo da Conferencia Eletronica'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = [fsBold]
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 318
    Width = 1003
    Height = 47
    Align = alBottom
    TabOrder = 0
    object bbFechar: TBitBtn
      Left = 201
      Top = 5
      Width = 250
      Height = 38
      Caption = '&Fechar Esta Janela'
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
  object panel_div: TPanel
    Left = 0
    Top = 0
    Width = 1003
    Height = 318
    Align = alClient
    TabOrder = 1
    object Label2: TLabel
      Left = 1
      Top = 1
      Width = 1001
      Height = 25
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
    object DBGrid_celeres: TDBGrid
      Left = 1
      Top = 26
      Width = 1001
      Height = 291
      Align = alClient
      DataSource = Frm_CEle.Src_CeleRes
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = [fsBold]
      Columns = <
        item
          Expanded = False
          FieldName = 'CECODBARN'
          Title.Alignment = taCenter
          Width = 145
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CECODPRO'
          Title.Alignment = taCenter
          Title.Caption = 'C'#243'd.Prod.'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PDNOME'
          Title.Alignment = taCenter
          Width = 300
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CEQTDL'
          Title.Alignment = taCenter
          Width = 83
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CEQTDP'
          Title.Alignment = taCenter
          Width = 92
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VAR_MENOR_ACEITA'
          Title.Alignment = taCenter
          Width = 153
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PDUND'
          Title.Alignment = taCenter
          Width = 48
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VAR_PERC_CALCULADA'
          Title.Alignment = taCenter
          Visible = True
        end>
    end
  end
end
