object Frm_Pro_Fracionar: TFrm_Pro_Fracionar
  Left = 192
  Top = 124
  Width = 1094
  Height = 480
  Caption = 'Fracionar Quantidade de Produtos'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = [fsBold]
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDefault
  Visible = True
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 0
    Top = 0
    Width = 1078
    Height = 46
    Align = alTop
    Alignment = taCenter
    Caption = 'Fracionar Quantidade de Produtos ja Cadastrados'
    Color = clBlack
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -40
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentColor = False
    ParentFont = False
  end
  object Panel1: TPanel
    Left = 0
    Top = 46
    Width = 1078
    Height = 57
    Align = alTop
    TabOrder = 0
    object Label2: TLabel
      Left = 9
      Top = 11
      Width = 85
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'c'#243'digo:'
    end
    object Label3: TLabel
      Left = 596
      Top = 11
      Width = 40
      Height = 13
      Caption = 'Marca:'
    end
    object Label4: TLabel
      Left = 793
      Top = 14
      Width = 28
      Height = 13
      Caption = 'Und:'
    end
    object Label5: TLabel
      Left = 892
      Top = 15
      Width = 84
      Height = 13
      Caption = 'Estoque Atual:'
    end
    object Label6: TLabel
      Left = 9
      Top = 29
      Width = 85
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Multiplicar por:'
    end
    object Label7: TLabel
      Left = 889
      Top = 33
      Width = 85
      Height = 13
      Caption = 'Novo Estoque:'
    end
    object Label8: TLabel
      Left = 732
      Top = 32
      Width = 85
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Nova Unidade:'
    end
    object Gauge1: TGauge
      Left = 230
      Top = 28
      Width = 473
      Height = 19
      Progress = 0
      Visible = False
    end
    object edt_codpro: TEdit
      Left = 99
      Top = 8
      Width = 120
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 0
      OnExit = edt_codproExit
    end
    object edt_nompro: TEdit
      Left = 218
      Top = 8
      Width = 361
      Height = 19
      TabStop = False
      Color = 8454143
      Ctl3D = False
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 1
    end
    object edt_marca: TEdit
      Left = 637
      Top = 9
      Width = 150
      Height = 19
      TabStop = False
      Color = 8454143
      Ctl3D = False
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 2
    end
    object edt_und: TEdit
      Left = 823
      Top = 11
      Width = 60
      Height = 19
      TabStop = False
      Color = 8454143
      Ctl3D = False
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 3
    end
    object edt_estoque: TEdit
      Left = 978
      Top = 11
      Width = 93
      Height = 19
      TabStop = False
      Color = 8454143
      Ctl3D = False
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 4
    end
    object edt_multiplicar: TEdit
      Left = 99
      Top = 26
      Width = 120
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 5
      OnExit = edt_multiplicarExit
    end
    object edt_undnova: TEdit
      Left = 823
      Top = 29
      Width = 60
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 6
    end
    object edt_novoestoque: TEdit
      Left = 978
      Top = 29
      Width = 93
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 7
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 401
    Width = 1078
    Height = 41
    Align = alBottom
    TabOrder = 1
    object bbFracionar: TBitBtn
      Left = 80
      Top = 8
      Width = 241
      Height = 25
      Caption = 'Fracionar Agora'
      TabOrder = 0
      OnClick = bbFracionarClick
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
    object bbSair: TBitBtn
      Left = 760
      Top = 6
      Width = 241
      Height = 25
      Caption = 'Sair'
      TabOrder = 1
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
  object GroupBox1: TGroupBox
    Left = 0
    Top = 103
    Width = 1078
    Height = 298
    Align = alClient
    Caption = 'Tabelas que participam:'
    TabOrder = 2
    object DBGrid1: TDBGrid
      Left = 2
      Top = 15
      Width = 1074
      Height = 281
      Align = alClient
      DataSource = src_tabelas
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = [fsBold]
      Columns = <
        item
          Expanded = False
          FieldName = 'tabela'
          Title.Alignment = taCenter
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'tabela_descricao'
          Title.Alignment = taCenter
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'campo'
          Title.Alignment = taCenter
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'campo_descricao'
          Title.Alignment = taCenter
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'campo_qtd'
          Title.Alignment = taCenter
          Visible = True
        end>
    end
  end
  object cds_tabelas: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'tabela'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'campo'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'tabela_descricao'
        DataType = ftString
        Size = 500
      end
      item
        Name = 'campo_descricao'
        DataType = ftString
        Size = 500
      end
      item
        Name = 'campo_qtd'
        DataType = ftString
        Size = 100
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 336
    Top = 40
    object cds_tabelastabela: TStringField
      DisplayLabel = 'Tabela'
      DisplayWidth = 34
      FieldName = 'tabela'
      Size = 100
    end
    object cds_tabelascampo: TStringField
      DisplayLabel = 'Campo'
      DisplayWidth = 31
      FieldName = 'campo'
      Size = 100
    end
    object cds_tabelastabela_descricao: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      DisplayWidth = 33
      FieldName = 'tabela_descricao'
      Size = 500
    end
    object cds_tabelascampo_descricao: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      DisplayWidth = 38
      FieldName = 'campo_descricao'
      Size = 500
    end
    object cds_tabelascampo_qtd: TStringField
      DisplayLabel = 'Campo Qtde'
      DisplayWidth = 17
      FieldName = 'campo_qtd'
      Size = 100
    end
  end
  object src_tabelas: TDataSource
    DataSet = cds_tabelas
    Left = 368
    Top = 48
  end
  object Query1: TQuery
    Left = 288
    Top = 175
  end
end
