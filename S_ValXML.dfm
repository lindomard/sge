object Frm_ValXML: TFrm_ValXML
  Left = 104
  Top = 6
  Width = 696
  Height = 564
  Caption = 'Validar XML'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 12
    Top = 15
    Width = 242
    Height = 13
    Caption = 'Informe o Nome do Arquivo a Ser Validado'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Sbn: TSpeedButton
    Left = 640
    Top = 40
    Width = 23
    Height = 22
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
    OnClick = SbnClick
  end
  object Label2: TLabel
    Left = 15
    Top = 64
    Width = 204
    Height = 13
    Caption = 'Informe o Nome do Arquivo Schema'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object NOMEXML: TEdit
    Left = 14
    Top = 38
    Width = 617
    Height = 21
    TabOrder = 0
    Text = 'C:\NFE_21072008\DemoNFe_Util\NFe.xml'
    OnExit = NOMEXMLExit
  end
  object Panel1: TPanel
    Left = 0
    Top = 489
    Width = 688
    Height = 41
    Align = alBottom
    TabOrder = 1
    object bbSair: TBitBtn
      Left = 240
      Top = 8
      Width = 233
      Height = 25
      Caption = 'Sair'
      TabOrder = 0
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
  object bbValidar: TBitBtn
    Left = 218
    Top = 104
    Width = 233
    Height = 25
    Caption = 'Validar'
    TabOrder = 2
    OnClick = bbValidarClick
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
      555555555555555555555555555555555555555555FF55555555555559055555
      55555555577FF5555555555599905555555555557777F5555555555599905555
      555555557777FF5555555559999905555555555777777F555555559999990555
      5555557777777FF5555557990599905555555777757777F55555790555599055
      55557775555777FF5555555555599905555555555557777F5555555555559905
      555555555555777FF5555555555559905555555555555777FF55555555555579
      05555555555555777FF5555555555557905555555555555777FF555555555555
      5990555555555555577755555555555555555555555555555555}
    NumGlyphs = 2
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 169
    Width = 688
    Height = 320
    ActivePage = tsObsValidar
    Align = alBottom
    TabOrder = 3
    object tsObsValidar: TTabSheet
      Caption = 'Observacoes'
      object memo_obs: TMemo
        Left = 0
        Top = 0
        Width = 680
        Height = 292
        Align = alClient
        Lines.Strings = (
          'memo_obs')
        ScrollBars = ssBoth
        TabOrder = 0
      end
    end
    object tsContXml: TTabSheet
      Caption = 'Conteudo XML'
      ImageIndex = 1
      object Memo_xml: TMemo
        Left = 0
        Top = 0
        Width = 680
        Height = 292
        Align = alClient
        Lines.Strings = (
          'memo_obs')
        ScrollBars = ssBoth
        TabOrder = 0
      end
      object FileListBox1: TFileListBox
        Left = 264
        Top = 120
        Width = 145
        Height = 97
        ItemHeight = 13
        TabOrder = 1
        Visible = False
      end
    end
  end
  object NOMESCHEMA: TEdit
    Left = 14
    Top = 84
    Width = 617
    Height = 21
    Color = 16777139
    TabOrder = 4
  end
  object BitBtn1: TBitBtn
    Left = 312
    Top = 144
    Width = 75
    Height = 25
    Caption = 'BitBtn1'
    TabOrder = 5
    OnClick = BitBtn1Click
  end
  object opd: TOpenDialog
    Left = 623
    Top = 97
  end
end
