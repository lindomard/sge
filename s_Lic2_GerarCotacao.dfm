object Frm_Lic2_GerarCotacao: TFrm_Lic2_GerarCotacao
  Left = 60
  Top = 130
  Width = 1042
  Height = 573
  Caption = 'Gerar Cota'#231#227'o a Partir de Uma Licita'#231#227'o'
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
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 1034
    Height = 105
    Align = alTop
    Caption = 'Dados da Licita'#231#227'o'
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 24
      Width = 129
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Chave da Licita'#231#227'o:'
    end
    object Label2: TLabel
      Left = 9
      Top = 43
      Width = 129
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Cliente:'
    end
    object Label3: TLabel
      Left = 512
      Top = 24
      Width = 129
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Data:'
    end
    object Label4: TLabel
      Left = 561
      Top = 42
      Width = 69
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Cidade/UF:'
    end
    object Label5: TLabel
      Left = 9
      Top = 61
      Width = 129
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Valor Total'
    end
    object Label6: TLabel
      Left = 321
      Top = 61
      Width = 129
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Qtde de Itens:'
    end
    object Label7: TLabel
      Left = 512
      Top = 60
      Width = 129
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Total as Unidades:'
    end
    object edt_chavelic: TEdit
      Left = 144
      Top = 23
      Width = 94
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 0
      Text = 'edt_chavelic'
    end
    object edt_datalic: TEdit
      Left = 648
      Top = 23
      Width = 94
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 1
      Text = 'edt_chavelic'
    end
    object edt_nomcli: TEdit
      Left = 144
      Top = 41
      Width = 401
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 2
      Text = 'edt_chavelic'
    end
    object edt_cidadeuf: TEdit
      Left = 648
      Top = 40
      Width = 349
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 3
      Text = 'edt_chavelic'
    end
    object edt_valortotal: TEdit
      Left = 144
      Top = 59
      Width = 89
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 4
      Text = 'edt_chavelic'
    end
    object edt_qtditens: TEdit
      Left = 456
      Top = 59
      Width = 89
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 5
      Text = 'edt_chavelic'
    end
    object edt_qtdund: TEdit
      Left = 647
      Top = 58
      Width = 89
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 6
      Text = 'edt_chavelic'
    end
    object cb_todos: TCheckBox
      Left = 28
      Top = 86
      Width = 97
      Height = 17
      Checked = True
      State = cbChecked
      TabOrder = 7
      OnClick = cb_todosClick
    end
  end
  object GroupBox2: TGroupBox
    Left = 0
    Top = 105
    Width = 1034
    Height = 323
    Align = alClient
    Caption = #205'tens da Licita'#231#227'o:'
    TabOrder = 1
    object DBGrid_itens: TDBGrid
      Left = 2
      Top = 15
      Width = 1030
      Height = 306
      Align = alClient
      DataSource = src_pro
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnDblClick = DBGrid_itensDblClick
      Columns = <
        item
          Expanded = False
          FieldName = 'COTAR'
          Title.Alignment = taCenter
          Width = 40
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'LC2_CODPRO'
          Title.Alignment = taCenter
          Width = 79
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'LC2_QTD'
          Title.Alignment = taCenter
          Width = 83
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'LC2_UND'
          Title.Alignment = taCenter
          Width = 30
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'LC2_NOM01'
          Title.Alignment = taCenter
          Width = 312
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'LC2_MARCA'
          Title.Alignment = taCenter
          Width = 131
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CODBAR'
          Title.Alignment = taCenter
          Width = 100
          Visible = True
        end>
    end
  end
  object GB_FORNECEDORES: TGroupBox
    Left = 0
    Top = 428
    Width = 1034
    Height = 73
    Align = alBottom
    Caption = 'Fornecedores a Serem Cotados:'
    TabOrder = 2
    object Label8: TLabel
      Left = 17
      Top = 17
      Width = 57
      Height = 13
      Caption = 'Fornecedor:'
    end
    object CODFOR: TEdit
      Left = 76
      Top = 16
      Width = 62
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnExit = CODFORExit
      OnKeyPress = CODFORKeyPress
      OnMouseMove = CODFORMouseMove
    end
    object lbx_codfor: TListBox
      Left = 137
      Top = 13
      Width = 581
      Height = 40
      Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
      Color = 13828095
      Ctl3D = False
      ItemHeight = 13
      ParentCtl3D = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnKeyDown = lbx_codforKeyDown
    end
    object OMITIR_FOR: TCheckBox
      Left = 78
      Top = 37
      Width = 58
      Height = 17
      Caption = 'Omitir'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      Visible = False
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 501
    Width = 1034
    Height = 41
    Align = alBottom
    TabOrder = 3
    object SAIR: TBitBtn
      Left = 802
      Top = 1
      Width = 156
      Height = 40
      Cursor = crHandPoint
      Hint = 'Sair do Programa'
      Caption = '&Sair'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = SAIRClick
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
      Spacing = 2
    end
    object bbDuplicar: TBitBtn
      Left = 21
      Top = 2
      Width = 156
      Height = 39
      Cursor = crHandPoint
      Hint = 'Click aqui para Criar Uma nova'#13#10'Licita'#231#227'o Igual a Esta'
      Caption = 'Gerar Agora'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnClick = bbDuplicarClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF003333330B7FFF
        FFB0333333777F3333773333330B7FFFFFB0333333777F3333773333330B7FFF
        FFB0333333777F3333773333330B7FFFFFB03FFFFF777FFFFF77000000000077
        007077777777777777770FFFFFFFF00077B07F33333337FFFF770FFFFFFFF000
        7BB07F3FF3FFF77FF7770F00F000F00090077F77377737777F770FFFFFFFF039
        99337F3FFFF3F7F777FF0F0000F0F09999937F7777373777777F0FFFFFFFF999
        99997F3FF3FFF77777770F00F000003999337F773777773777F30FFFF0FF0339
        99337F3FF7F3733777F30F08F0F0337999337F7737F73F7777330FFFF0039999
        93337FFFF7737777733300000033333333337777773333333333}
      Layout = blGlyphTop
      NumGlyphs = 2
    end
  end
  object Qr_pro: TQuery
    CachedUpdates = True
    AfterEdit = Qr_proAfterEdit
    BeforePost = Qr_proBeforePost
    DatabaseName = 'SG_ASSOC'
    UpdateObject = u_pro
    Left = 392
    Top = 153
    object Qr_proLC2_CODPRO: TFloatField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'LC2_CODPRO'
    end
    object Qr_proLC2_QTD: TFloatField
      DisplayLabel = 'Quantidade'
      FieldName = 'LC2_QTD'
    end
    object Qr_proLC2_UND: TStringField
      DisplayLabel = 'Und'
      FieldName = 'LC2_UND'
      Size = 3
    end
    object Qr_proLC2_NOM01: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'LC2_NOM01'
      Size = 150
    end
    object Qr_proLC2_MARCA: TStringField
      DisplayLabel = 'Marca'
      FieldName = 'LC2_MARCA'
      Size = 60
    end
    object Qr_proLC2_RMS: TStringField
      FieldName = 'LC2_RMS'
      Size = 30
    end
    object Qr_proLC2_PCOAV: TFloatField
      FieldName = 'LC2_PCOAV'
    end
    object Qr_proLC2_PCOPZ: TFloatField
      FieldName = 'LC2_PCOPZ'
    end
    object Qr_proLC2_DESCCOMP: TMemoField
      FieldName = 'LC2_DESCCOMP'
      BlobType = ftMemo
    end
    object Qr_proLC2_GANHOU: TStringField
      FieldName = 'LC2_GANHOU'
      Size = 1
    end
    object Qr_proCODBAR: TFloatField
      DisplayLabel = 'C'#243'digo Barras'
      FieldName = 'CODBAR'
    end
    object Qr_proCOTAR: TStringField
      DisplayLabel = 'Cotar'
      FieldName = 'COTAR'
      Size = 1
    end
    object Qr_proLC2_ITEM: TFloatField
      FieldName = 'LC2_ITEM'
    end
    object Qr_proLC2_PCOCPR: TFloatField
      FieldName = 'LC2_PCOCPR'
    end
  end
  object src_pro: TDataSource
    DataSet = Qr_pro
    Left = 432
    Top = 161
  end
  object u_pro: TUpdateSQL
    Left = 488
    Top = 177
  end
end
