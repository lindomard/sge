object Frm_TotCus: TFrm_TotCus
  Left = 182
  Top = 284
  Width = 642
  Height = 165
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Totaliza'#231#227'o dos Custos das Mercadorias'
  Color = 16759260
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
    Left = 13
    Top = 34
    Width = 162
    Height = 13
    Caption = 'Total L'#237'quido do Pedido................'
  end
  object Label2: TLabel
    Left = 304
    Top = 33
    Width = 157
    Height = 13
    Caption = 'Custo da Mercadorias..................'
  end
  object Label3: TLabel
    Left = 12
    Top = 56
    Width = 163
    Height = 13
    Caption = 'Diferen'#231'a em Rela'#231#227'o ao Custo....'
  end
  object Label4: TLabel
    Left = 304
    Top = 54
    Width = 132
    Height = 13
    Caption = 'Percentual...........................'
  end
  object lbl_obs: TLabel
    Left = 0
    Top = 0
    Width = 634
    Height = 24
    Align = alTop
    Alignment = taCenter
    Caption = 'Existem Produtos sem o Pre'#231'o de Custo. Valores Incorretos'
    Color = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -20
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    Visible = False
  end
  object TOTLIQ: TStaticText
    Left = 168
    Top = 32
    Width = 113
    Height = 20
    Alignment = taRightJustify
    AutoSize = False
    BevelKind = bkSoft
    BorderStyle = sbsSunken
    Caption = '0,00'
    Color = 13565951
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    TabOrder = 0
  end
  object TOTCUS: TStaticText
    Left = 440
    Top = 30
    Width = 113
    Height = 20
    Alignment = taRightJustify
    AutoSize = False
    BevelKind = bkSoft
    BorderStyle = sbsSunken
    Caption = '0,00'
    Color = 13565951
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    TabOrder = 1
  end
  object TOTDIF: TStaticText
    Left = 168
    Top = 53
    Width = 113
    Height = 20
    Alignment = taRightJustify
    AutoSize = False
    BevelKind = bkSoft
    BorderStyle = sbsSunken
    Caption = '0,00'
    Color = 13565951
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    TabOrder = 2
  end
  object PERCDIF: TStaticText
    Left = 441
    Top = 50
    Width = 113
    Height = 20
    Alignment = taRightJustify
    AutoSize = False
    BevelKind = bkSoft
    BorderStyle = sbsSunken
    Caption = '0,00'
    Color = 13565951
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    TabOrder = 3
  end
  object bbFechar: TBitBtn
    Left = 240
    Top = 82
    Width = 153
    Height = 31
    Caption = '&Fechar'
    TabOrder = 4
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
