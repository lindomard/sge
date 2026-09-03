object Frm_Imp_Pro01: TFrm_Imp_Pro01
  Left = 169
  Top = 87
  Width = 544
  Height = 449
  Caption = 'Importa'#231#227'o de Produtos no padr'#227'o DBF layout modelo 1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = [fsBold]
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
    Width = 536
    Height = 294
    Align = alClient
    TabOrder = 0
    object DirectoryListBox1: TDirectoryListBox
      Left = 1
      Top = -17
      Width = 337
      Height = 291
      FileList = FileListBox1
      ItemHeight = 16
      TabOrder = 0
    end
    object FileListBox1: TFileListBox
      Left = 337
      Top = 1
      Width = 195
      Height = 272
      ItemHeight = 13
      Mask = '*.dbf'
      TabOrder = 1
      OnChange = FileListBox1Change
    end
    object DriveComboBox1: TDriveComboBox
      Left = 1
      Top = 275
      Width = 534
      Height = 19
      DirList = DirectoryListBox1
      TabOrder = 2
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 374
    Width = 536
    Height = 41
    Align = alBottom
    TabOrder = 1
    object BitBtn1: TBitBtn
      Left = 5
      Top = 0
      Width = 212
      Height = 41
      Caption = 'Iniciar a Importa'#231#227'o'
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
      Layout = blGlyphTop
      NumGlyphs = 2
    end
    object BitBtn2: TBitBtn
      Left = 322
      Top = 1
      Width = 212
      Height = 41
      Caption = '&Sair do Programa'
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
      Layout = blGlyphTop
      NumGlyphs = 2
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 294
    Width = 536
    Height = 80
    Align = alBottom
    TabOrder = 2
    object Label1: TLabel
      Left = 8
      Top = 8
      Width = 146
      Height = 13
      Caption = 'Arquivo a Ser Importado.:'
    end
    object Gauge1: TGauge
      Left = 1
      Top = 48
      Width = 534
      Height = 31
      Align = alBottom
      Progress = 0
      Visible = False
    end
    object NOMARQ: TEdit
      Left = 162
      Top = 5
      Width = 367
      Height = 21
      Enabled = False
      ParentColor = True
      TabOrder = 0
    end
    object CB_IMPFOR: TCheckBox
      Left = 3
      Top = 28
      Width = 454
      Height = 17
      Caption = 'Importar Tambem os nome e codigo do fornecedor no cadastro'
      TabOrder = 1
    end
  end
  object Qr_Pro: TQuery
    DatabaseName = 'C:\SGE'
    SQL.Strings = (
      'Select * from CADPRO.DBF')
    Left = 160
    Top = 168
    object Qr_ProCODIGO: TFloatField
      FieldName = 'CODIGO'
    end
    object Qr_ProCODBAR: TFloatField
      FieldName = 'CODBAR'
    end
    object Qr_ProNOME: TStringField
      FieldName = 'NOME'
      Size = 40
    end
    object Qr_ProUND: TStringField
      FieldName = 'UND'
      Size = 3
    end
    object Qr_ProPCO_FAB: TFloatField
      FieldName = 'PCO_FAB'
    end
    object Qr_ProPMC: TFloatField
      FieldName = 'PMC'
    end
    object Qr_ProDESC: TFloatField
      FieldName = 'DESC'
    end
    object Qr_ProLISTA: TIntegerField
      FieldName = 'LISTA'
    end
    object Qr_ProSIT: TStringField
      FieldName = 'SIT'
      Size = 3
    end
    object Qr_ProPRECOV: TFloatField
      FieldName = 'PRECOV'
    end
    object Qr_ProEGS: TIntegerField
      FieldName = 'EGS'
    end
    object Qr_ProMARCA: TStringField
      FieldName = 'MARCA'
    end
    object Qr_ProCODFOR: TFloatField
      FieldName = 'CODFOR'
    end
  end
  object Tb_Pro: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select :CODPRO, :CODBAR,'
      '           :NOME, :UND,'
      '           :PRECO1, :PRECO3,'
      '           :DESC, :LISTA,'
      '           :SIT, :PRECO2,'
      '           :EGS, :MARCA, :CODFOR'
      'from CADPRO')
    Left = 40
    Top = 200
    ParamData = <
      item
        DataType = ftString
        Name = 'CODPRO'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CODBAR'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'NOME'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'UND'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'PRECO1'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'PRECO3'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'DESC'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'LISTA'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'SIT'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftInteger
        Name = 'PRECO2'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'EGS'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftUnknown
        Name = 'MARCA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODFOR'
        ParamType = ptUnknown
      end>
  end
  object Query1: TQuery
    DatabaseName = 'C:\SGE'
    Left = 32
    Top = 144
  end
end
