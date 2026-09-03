object Frm_PfPRe: TFrm_PfPRe
  Left = 12
  Top = 105
  Width = 760
  Height = 465
  Caption = 'Retorno de Pedido Panarello'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clBlue
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDefault
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 752
    Height = 431
    Align = alClient
    TabOrder = 0
    object Label5: TLabel
      Left = 362
      Top = 122
      Width = 134
      Height = 13
      Caption = 'Nome do Arquivo a ser Lido:'
    end
    object NOMARQ: TLabel
      Left = 516
      Top = 122
      Width = 48
      Height = 13
      Caption = 'NOMARQ'
    end
    object DirectoryListBox1: TDirectoryListBox
      Left = 2
      Top = 4
      Width = 357
      Height = 112
      FileList = FileListBox1
      ItemHeight = 16
      TabOrder = 0
    end
    object DriveComboBox1: TDriveComboBox
      Left = 2
      Top = 118
      Width = 358
      Height = 19
      TabOrder = 1
    end
    object FileListBox1: TFileListBox
      Left = 360
      Top = 4
      Width = 373
      Height = 111
      ItemHeight = 13
      TabOrder = 2
      OnChange = FileListBox1Change
    end
    object Panel2: TPanel
      Left = 1
      Top = 389
      Width = 750
      Height = 41
      Align = alBottom
      TabOrder = 3
      object BitBtn1: TBitBtn
        Left = 150
        Top = 10
        Width = 110
        Height = 25
        Caption = '&Ler Arquivo'
        TabOrder = 0
        OnClick = BitBtn1Click
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          333333FFFFFFFFFFFFF33000077777770033377777777777773F000007888888
          00037F3337F3FF37F37F00000780088800037F3337F77F37F37F000007800888
          00037F3337F77FF7F37F00000788888800037F3337777777337F000000000000
          00037F3FFFFFFFFFFF7F00000000000000037F77777777777F7F000FFFFFFFFF
          00037F7F333333337F7F000FFFFFFFFF00037F7F333333337F7F000FFFFFFFFF
          00037F7F333333337F7F000FFFFFFFFF00037F7F333333337F7F000FFFFFFFFF
          00037F7F333333337F7F000FFFFFFFFF07037F7F33333333777F000FFFFFFFFF
          0003737FFFFFFFFF7F7330099999999900333777777777777733}
        NumGlyphs = 2
      end
      object BitBtn2: TBitBtn
        Left = 260
        Top = 10
        Width = 110
        Height = 25
        Caption = '&Confirmar Entrada'
        TabOrder = 1
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          3333333333FFFFF3333333333000003333333333F777773FF333333008F88800
          33333337733333773F33330FFF8F888F033333733333333373F330DEFFF8F8FE
          D03337F33333333337F330DDEFFFFFEDD0333733333FFF33373F0BBFDE000EDF
          BB037F33337773F3337F0AABB08880BBAA037F3337F3F7F3337F0EEAA08080AA
          EE037F3337F737F3337F0AABB08880BBAA037F33373FF733337F0BBFDE000EDB
          BB0373F333777333337330DDEFFFFFEDD03337F33333333337F330DEF8F8FFFE
          D033373F333333333733330FFF8F8FFF03333373FF33333F733333300FF8F800
          3333333773FFFF77333333333000003333333333377777333333}
        NumGlyphs = 2
      end
      object BitBtn3: TBitBtn
        Left = 370
        Top = 10
        Width = 110
        Height = 25
        Caption = '&Sair'
        TabOrder = 2
        OnClick = BitBtn3Click
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
    object Panel3: TPanel
      Left = 1
      Top = 135
      Width = 750
      Height = 254
      Align = alBottom
      Caption = 'Panel3'
      TabOrder = 4
      object PageControl1: TPageControl
        Left = 1
        Top = 1
        Width = 748
        Height = 252
        ActivePage = TabSheet4
        Align = alClient
        TabOrder = 0
        object TabSheet1: TTabSheet
          Caption = '&Cabe'#231'alho'
          object STG0: TStringGrid
            Left = 0
            Top = 0
            Width = 740
            Height = 224
            Align = alClient
            ColCount = 4
            FixedCols = 0
            RowCount = 2
            TabOrder = 0
            ColWidths = (
              92
              166
              356
              115)
          end
        end
        object TabSheet2: TTabSheet
          Caption = 'D&ados b'#225'sicos da(s) Nota(s) Fiscal(is)'
          ImageIndex = 1
          object STG1: TStringGrid
            Left = 0
            Top = 0
            Width = 740
            Height = 224
            Align = alClient
            ColCount = 14
            FixedCols = 0
            RowCount = 2
            TabOrder = 0
            ColWidths = (
              64
              41
              178
              79
              81
              91
              92
              86
              88
              78
              85
              103
              85
              81)
          end
        end
        object TabSheet3: TTabSheet
          Caption = '&Dados de ICMS da(s) Nota(s) Fiscal(is)'
          ImageIndex = 2
          object STG2: TStringGrid
            Left = 0
            Top = 0
            Width = 740
            Height = 224
            Align = alClient
            ColCount = 12
            FixedCols = 0
            RowCount = 2
            TabOrder = 0
            ColWidths = (
              64
              64
              64
              64
              64
              64
              64
              64
              64
              64
              64
              64)
          end
        end
        object TabSheet4: TTabSheet
          Caption = '&Itens da(s) Nota(s) Fiscal(is)'
          ImageIndex = 3
          object STG3: TStringGrid
            Left = 0
            Top = 0
            Width = 740
            Height = 224
            Align = alClient
            ColCount = 12
            FixedCols = 0
            RowCount = 2
            TabOrder = 0
          end
        end
        object TabSheet5: TTabSheet
          Caption = '&Titulo(s)'
          ImageIndex = 4
          object STG4: TStringGrid
            Left = 0
            Top = 0
            Width = 740
            Height = 224
            Align = alClient
            ColCount = 11
            FixedCols = 0
            RowCount = 2
            TabOrder = 0
          end
        end
        object TabSheet6: TTabSheet
          Caption = '&Fim do Arquivo'
          ImageIndex = 5
          object STG5: TStringGrid
            Left = 0
            Top = 0
            Width = 740
            Height = 224
            Align = alClient
            ColCount = 4
            FixedCols = 0
            RowCount = 2
            TabOrder = 0
          end
        end
      end
    end
  end
end
