object Frm_Info: TFrm_Info
  Left = 151
  Top = 86
  Width = 1070
  Height = 375
  Caption = 'Informa'#231#245'es Uteis'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = [fsBold]
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 296
    Width = 1054
    Height = 41
    Align = alBottom
    TabOrder = 0
    object BitBtn1: TBitBtn
      Left = 811
      Top = 3
      Width = 153
      Height = 36
      TabOrder = 0
      Kind = bkOK
    end
    object bbReeNFE: TBitBtn
      Left = 41
      Top = 4
      Width = 155
      Height = 36
      Caption = 'Lista de Separa'#231#227'o'
      TabOrder = 1
      Visible = False
      OnClick = bbReeNFEClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
        0003377777777777777308888888888888807F33333333333337088888888888
        88807FFFFFFFFFFFFFF7000000000000000077777777777777770F8F8F8F8F8F
        8F807F333333333333F708F8F8F8F8F8F9F07F333333333337370F8F8F8F8F8F
        8F807FFFFFFFFFFFFFF7000000000000000077777777777777773330FFFFFFFF
        03333337F3FFFF3F7F333330F0000F0F03333337F77773737F333330FFFFFFFF
        03333337F3FF3FFF7F333330F00F000003333337F773777773333330FFFF0FF0
        33333337F3F37F3733333330F08F0F0333333337F7337F7333333330FFFF0033
        33333337FFFF7733333333300000033333333337777773333333}
      NumGlyphs = 2
    end
  end
  object RichEdit1: TRichEdit
    Left = 0
    Top = 0
    Width = 1054
    Height = 296
    Align = alClient
    Alignment = taCenter
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    Lines.Strings = (
      
        'Informa'#231#245'es Importantes: Para restaurar o backups '#233' necessario q' +
        'ue todos os usu'#225'rios estejam fora do sistema')
    ParentFont = False
    TabOrder = 1
  end
end
