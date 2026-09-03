object Frm_ImpAli: TFrm_ImpAli
  Left = 192
  Top = 107
  Width = 432
  Height = 384
  Caption = 'Importa'#231#227'o de Al'#237'quotas de Debitos de Clientes'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDefault
  Visible = True
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 416
    Height = 346
    Align = alClient
    BevelOuter = bvLowered
    TabOrder = 0
    object Gauge1: TGauge
      Left = 4
      Top = 206
      Width = 403
      Height = 41
      Progress = 0
      Visible = False
    end
    object Label1: TLabel
      Left = 6
      Top = 252
      Width = 32
      Height = 13
      Caption = 'Label1'
      Visible = False
    end
    object Label2: TLabel
      Left = 6
      Top = 272
      Width = 32
      Height = 13
      BiDiMode = bdLeftToRight
      Caption = 'Label2'
      ParentBiDiMode = False
      Visible = False
    end
    object Label3: TLabel
      Left = 7
      Top = 290
      Width = 32
      Height = 13
      Caption = 'Label3'
      Visible = False
    end
    object DirectoryListBox1: TDirectoryListBox
      Left = 4
      Top = 6
      Width = 204
      Height = 163
      FileList = FileListBox1
      ItemHeight = 16
      TabOrder = 0
    end
    object DriveComboBox1: TDriveComboBox
      Left = 4
      Top = 171
      Width = 202
      Height = 19
      DirList = DirectoryListBox1
      TabOrder = 1
    end
    object FileListBox1: TFileListBox
      Left = 208
      Top = 5
      Width = 198
      Height = 163
      FileEdit = NARQ
      ItemHeight = 13
      TabOrder = 2
    end
    object NARQ: TEdit
      Left = 208
      Top = 170
      Width = 198
      Height = 21
      TabOrder = 3
      Text = '*.*'
    end
    object BitBtn1: TBitBtn
      Left = 4
      Top = 318
      Width = 195
      Height = 25
      Caption = '&Iniciar Importa'#231#227'o'
      TabOrder = 4
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
      Left = 218
      Top = 318
      Width = 195
      Height = 25
      Caption = '&Sair'
      TabOrder = 5
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
  end
end
