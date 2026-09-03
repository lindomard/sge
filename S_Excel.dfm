object Frm_Excel: TFrm_Excel
  Left = 192
  Top = 114
  Width = 872
  Height = 443
  Caption = 'Gera um arquivo para o excel'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  KeyPreview = True
  OldCreateOrder = False
  Position = poDefault
  Visible = True
  OnClose = FormClose
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 0
    Top = 41
    Width = 856
    Height = 209
    Align = alTop
    Caption = '&Instru'#231#227'o a Ser Processada:'
    TabOrder = 0
    object Memo1: TMemo
      Left = 2
      Top = 15
      Width = 852
      Height = 192
      Align = alClient
      TabOrder = 0
      OnKeyDown = Memo1KeyDown
    end
  end
  object GroupBox2: TGroupBox
    Left = 0
    Top = 250
    Width = 856
    Height = 114
    Align = alClient
    Caption = 'Resultado da Instru'#231#227'o:'
    TabOrder = 1
    object DBGrid1: TDBGrid
      Left = 2
      Top = 15
      Width = 852
      Height = 97
      Align = alClient
      DataSource = Src_Excel
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 364
    Width = 856
    Height = 41
    Align = alBottom
    TabOrder = 2
    object BitBtn1: TBitBtn
      Left = 392
      Top = 4
      Width = 130
      Height = 34
      Caption = '&Sair'
      TabOrder = 2
      OnClick = BitBtn1Click
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
    object bbProc: TBitBtn
      Left = 6
      Top = 4
      Width = 130
      Height = 34
      Caption = '[F2]-Processar Instru'#231#227'o'
      TabOrder = 0
      OnClick = bbProcClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
        003337777777777777F330FFFFFFFFFFF033373F3F3F3F3F3733330F0F0F0F0F
        03333F7F737373737FFF0000FFFFFFF0000377773FFFFFF7777F0FF800000008
        FF037F3F77777773FF7F0F9FFFFFFFF000037F7333333337777F0FFFFFFFFFFF
        FF0373FFFFFFFFFFFF7330000000000000333777777777777733333000000000
        3333333777777777F3333330FFFFFFF033333337F3FFFFF7F3333330F00000F0
        33333337F77777F7F3333330F0AAE0F033333337F7F337F7F3333330F0DAD0F0
        33333337F7FFF7F7F3333330F00000F033333337F7777737F3333330FFFFFFF0
        33333337FFFFFFF7F33333300000000033333337777777773333}
      NumGlyphs = 2
    end
    object bbExportar: TBitBtn
      Left = 135
      Top = 4
      Width = 130
      Height = 34
      Caption = '&Exportar xls'
      TabOrder = 1
      OnClick = bbExportarClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        33333FFFFFFFFFFFFFFF000000000000000077777777777777770FF7FF7FF7FF
        7FF07FF7FF7FF7F37F3709F79F79F7FF7FF077F77F77F7FF7FF7077777777777
        777077777777777777770FF7FF7FF7FF7FF07FF7FF7FF7FF7FF709F79F79F79F
        79F077F77F77F77F77F7077777777777777077777777777777770FF7FF7FF7FF
        7FF07FF7FF7FF7FF7FF709F79F79F79F79F077F77F77F77F77F7077777777777
        777077777777777777770FFFFF7FF7FF7FF07F33337FF7FF7FF70FFFFF79F79F
        79F07FFFFF77F77F77F700000000000000007777777777777777CCCCCC8888CC
        CCCC777777FFFF777777CCCCCCCCCCCCCCCC7777777777777777}
      NumGlyphs = 2
    end
    object bbxml: TBitBtn
      Left = 264
      Top = 4
      Width = 130
      Height = 34
      Caption = 'Exmportar p/XML'
      TabOrder = 3
      OnClick = bbxmlClick
    end
    object bbSalvarString: TBitBtn
      Left = 526
      Top = 4
      Width = 130
      Height = 34
      Caption = 'Salvar String'
      TabOrder = 4
      OnClick = bbSalvarStringClick
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 856
    Height = 41
    Align = alTop
    TabOrder = 3
    object Label1: TLabel
      Left = 12
      Top = 3
      Width = 213
      Height = 13
      Caption = 'select  lpad(CCNPJ,14,'#39'0'#39') as cnpj from cadcli'
    end
  end
  object Qr_Excel: TQuery
    DatabaseName = 'SG_ASSOC'
    Left = 96
    Top = 160
  end
  object Src_Excel: TDataSource
    DataSet = Qr_Excel
    Left = 136
    Top = 160
  end
  object SaveDialog1: TSaveDialog
    Left = 368
    Top = 257
  end
end
