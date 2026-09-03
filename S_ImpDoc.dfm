object Frm_ImpDoc: TFrm_ImpDoc
  Left = 44
  Top = 133
  Width = 608
  Height = 282
  Caption = 'Importar Tabulacoes'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poScreenCenter
  Visible = True
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 600
    Height = 183
    Align = alClient
    TabOrder = 0
    object Panel3: TPanel
      Left = 1
      Top = 154
      Width = 598
      Height = 28
      Align = alBottom
      TabOrder = 0
      object Label1: TLabel
        Left = 185
        Top = 7
        Width = 139
        Height = 13
        Caption = 'Nome do Arquivo a Ser Lido.:'
      end
      object DriveComboBox1: TDriveComboBox
        Left = 5
        Top = 5
        Width = 172
        Height = 19
        DirList = DirectoryListBox1
        TabOrder = 0
      end
      object NOMARQ: TEdit
        Left = 328
        Top = 4
        Width = 265
        Height = 21
        TabOrder = 1
        Text = '*.*'
      end
    end
    object DirectoryListBox1: TDirectoryListBox
      Left = 1
      Top = 1
      Width = 453
      Height = 153
      Align = alClient
      FileList = FileListBox1
      ItemHeight = 16
      TabOrder = 1
    end
    object FileListBox1: TFileListBox
      Left = 454
      Top = 1
      Width = 145
      Height = 153
      Align = alRight
      ItemHeight = 13
      TabOrder = 2
      OnChange = FileListBox1Change
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 183
    Width = 600
    Height = 65
    Align = alBottom
    TabOrder = 1
    object BitBtn1: TBitBtn
      Left = 144
      Top = 35
      Width = 75
      Height = 25
      Caption = '&Importar'
      TabOrder = 0
      OnClick = BitBtn1Click
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
    object BitBtn2: TBitBtn
      Left = 360
      Top = 35
      Width = 75
      Height = 25
      Caption = '&Sair'
      TabOrder = 1
      OnClick = BitBtn2Click
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
    object Panel4: TPanel
      Left = 1
      Top = 1
      Width = 598
      Height = 32
      Align = alTop
      TabOrder = 2
      object Label2: TLabel
        Left = 81
        Top = 8
        Width = 103
        Height = 13
        Caption = 'N'#250'mero do Relatorio.:'
      end
      object NOMREL: TEdit
        Left = 190
        Top = 6
        Width = 250
        Height = 21
        TabOrder = 0
        OnKeyPress = NOMRELKeyPress
      end
    end
  end
end
