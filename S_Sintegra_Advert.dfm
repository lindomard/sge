object Frm_Sintegra_Advert: TFrm_Sintegra_Advert
  Left = 177
  Top = 113
  Width = 692
  Height = 374
  Caption = 'Advertencias/Irregularidades'
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
    Top = 302
    Width = 684
    Height = 41
    Align = alBottom
    TabOrder = 0
    object lbl_texto_proc: TLabel
      Left = 16
      Top = 16
      Width = 37
      Height = 13
      Caption = 'Texto:'
      Visible = False
    end
    object SbnProcurar: TSpeedButton
      Left = 184
      Top = 8
      Width = 96
      Height = 22
      Caption = 'Procurar'
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        33033333333333333F7F3333333333333000333333333333F777333333333333
        000333333333333F777333333333333000333333333333F77733333333333300
        033333333FFF3F777333333700073B703333333F7773F77733333307777700B3
        33333377333777733333307F8F8F7033333337F333F337F3333377F8F9F8F773
        3333373337F3373F3333078F898F870333337F33F7FFF37F333307F99999F703
        33337F377777337F3333078F898F8703333373F337F33373333377F8F9F8F773
        333337F3373337F33333307F8F8F70333333373FF333F7333333330777770333
        333333773FF77333333333370007333333333333777333333333}
      NumGlyphs = 2
      Visible = False
      OnClick = SbnProcurarClick
    end
    object bbSair: TBitBtn
      Left = 339
      Top = 1
      Width = 169
      Height = 34
      Caption = '&Sair'
      ParentShowHint = False
      ShowHint = True
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
    object NOMPROC: TEdit
      Left = 59
      Top = 10
      Width = 121
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 1
      Visible = False
    end
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 684
    Height = 302
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 1
    OnChange = PageControl1Change
    object TabSheet1: TTabSheet
      Caption = 'Principal'
      object GroupBox1: TGroupBox
        Left = 0
        Top = 0
        Width = 676
        Height = 274
        Align = alClient
        Caption = 'Notas de Saidas N'#227'o Encontradas na Sequencia:'
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 0
        object Memo_NFSNaoEnc: TRichEdit
          Left = 1
          Top = 14
          Width = 674
          Height = 259
          Align = alClient
          Ctl3D = True
          Lines.Strings = (
            'Memo_NFSNaoEnc')
          ParentCtl3D = False
          ScrollBars = ssHorizontal
          TabOrder = 0
        end
      end
    end
    object tsXml: TTabSheet
      Caption = 'Arquivo XML'
      ImageIndex = 1
      object Memo_xml: TRichEdit
        Left = 0
        Top = 0
        Width = 676
        Height = 274
        Align = alClient
        Ctl3D = False
        Lines.Strings = (
          'Memo_xml')
        ParentCtl3D = False
        ScrollBars = ssBoth
        TabOrder = 0
        WantTabs = True
      end
    end
    object tsXmlView: TTabSheet
      Caption = 'Arquivo XML (Retorno)'
      ImageIndex = 2
      object Memo_xmlRet: TRichEdit
        Left = 0
        Top = 0
        Width = 676
        Height = 274
        Align = alClient
        Ctl3D = False
        Lines.Strings = (
          'Memo_xml')
        ParentCtl3D = False
        ScrollBars = ssBoth
        TabOrder = 0
        WantTabs = True
      end
    end
  end
end
