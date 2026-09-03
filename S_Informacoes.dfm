object Frm_Informacoes: TFrm_Informacoes
  Left = 244
  Top = 189
  Width = 928
  Height = 480
  Caption = 'Informa'#231#245'es'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = [fsBold]
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 912
    Height = 41
    Align = alTop
    Caption = 'Informa'#231#245'es'
    TabOrder = 0
  end
  object Panel2: TPanel
    Left = 0
    Top = 401
    Width = 912
    Height = 41
    Align = alBottom
    TabOrder = 1
    object bbSair: TBitBtn
      Left = 392
      Top = 8
      Width = 169
      Height = 30
      Caption = '&Fechar'
      TabOrder = 0
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
  end
  object RichEdit1: TRichEdit
    Left = 0
    Top = 41
    Width = 912
    Height = 360
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'Courier New'
    Font.Style = [fsBold]
    Lines.Strings = (
      
        'Informa'#231#245'es Importantes: Para restaurar o backups '#233' necessario q' +
        'ue todos os usu'#225'rios '
      'estejam fora do sistema')
    ParentFont = False
    ScrollBars = ssBoth
    TabOrder = 2
    WordWrap = False
  end
end
