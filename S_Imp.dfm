object Frm_Imp: TFrm_Imp
  Left = 192
  Top = 107
  Width = 544
  Height = 333
  Caption = 'Importa'#231#227'o de Arquivos'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 536
    Height = 306
    Align = alClient
    Color = clBackground
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label1: TLabel
      Left = 25
      Top = 32
      Width = 306
      Height = 24
      Caption = 'Selecione o Arquivo a ser Importado'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -18
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object NOMEARQ: TLabel
      Left = 145
      Top = 180
      Width = 3
      Height = 13
    end
    object Gauge1: TGauge
      Left = 32
      Top = 241
      Width = 461
      Height = 47
      Progress = 0
      Visible = False
    end
    object Label2: TLabel
      Left = 30
      Top = 180
      Width = 101
      Height = 13
      Caption = 'Arquivo Selecionado:'
    end
    object DirectoryListBox1: TDirectoryListBox
      Left = 30
      Top = 56
      Width = 145
      Height = 97
      FileList = FileListBox1
      ItemHeight = 16
      TabOrder = 0
    end
    object FileListBox1: TFileListBox
      Left = 174
      Top = 56
      Width = 145
      Height = 97
      ItemHeight = 13
      TabOrder = 1
      OnChange = FileListBox1Change
    end
    object DriveComboBox1: TDriveComboBox
      Left = 30
      Top = 153
      Width = 145
      Height = 19
      DirList = DirectoryListBox1
      TabOrder = 2
    end
    object FilterComboBox1: TFilterComboBox
      Left = 174
      Top = 152
      Width = 145
      Height = 21
      FileList = FileListBox1
      Filter = 'Todos Arquivos|*.*|Arquivos DBF|*.DBF|Arquivos TXT|*.TXT'
      TabOrder = 3
    end
    object BitBtn1: TBitBtn
      Left = 86
      Top = 213
      Width = 75
      Height = 25
      Caption = '&Aplicar'
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
      Left = 164
      Top = 213
      Width = 75
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
  object Query1: TQuery
    DatabaseName = 'C:\UNITEX'
    SQL.Strings = (
      'Select * from PROBA17.DBF')
    Left = 48
    Top = 212
    object Query1NR_PRODUTO: TFloatField
      FieldName = 'NR_PRODUTO'
    end
    object Query1DIGITO: TStringField
      FieldName = 'DIGITO'
      Size = 1
    end
    object Query1DESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 16
    end
    object Query1NR_LABOR: TFloatField
      FieldName = 'NR_LABOR'
    end
    object Query1NOMELAB: TStringField
      FieldName = 'NOMELAB'
      Size = 10
    end
    object Query1APRESENT: TStringField
      FieldName = 'APRESENT'
      Size = 15
    end
    object Query1PRC_VENDA: TFloatField
      FieldName = 'PRC_VENDA'
    end
    object Query1FRACAO: TFloatField
      FieldName = 'FRACAO'
    end
    object Query1QTD_FRAC: TSmallintField
      FieldName = 'QTD_FRAC'
    end
    object Query1TABELA: TSmallintField
      FieldName = 'TABELA'
    end
    object Query1PORTARIA: TStringField
      FieldName = 'PORTARIA'
      Size = 3
    end
    object Query1EDICAO: TSmallintField
      FieldName = 'EDICAO'
    end
    object Query1DATA_VIG: TDateField
      FieldName = 'DATA_VIG'
    end
    object Query1PRECO: TFloatField
      FieldName = 'PRECO'
    end
    object Query1CODBAR: TFloatField
      FieldName = 'CODBAR'
    end
    object Query1ALIQUOTA: TSmallintField
      FieldName = 'ALIQUOTA'
    end
    object Query1TIPO: TSmallintField
      FieldName = 'TIPO'
    end
  end
end
