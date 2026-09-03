object Frm_IndEnv_OPSimples: TFrm_IndEnv_OPSimples
  Left = 228
  Top = 37
  Width = 1092
  Height = 556
  Caption = 'Ordem de Produ'#231#227'o Simplificada(Ordem de Envase)'
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
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1084
    Height = 52
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 2
      Top = 5
      Width = 90
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Periodo de'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 199
      Top = 5
      Width = 8
      Height = 13
      Caption = #224
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 327
      Top = 3
      Width = 49
      Height = 13
      Caption = 'Produto:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 2
      Top = 24
      Width = 90
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Chave Inicial:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 188
      Top = 29
      Width = 35
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Final:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object edt_datini: TDateEdit
      Left = 97
      Top = 3
      Width = 85
      Height = 21
      Ctl3D = False
      NumGlyphs = 2
      ParentCtl3D = False
      TabOrder = 0
      OnExit = edt_datiniExit
    end
    object edt_datfin: TDateEdit
      Left = 230
      Top = 2
      Width = 85
      Height = 21
      Ctl3D = False
      NumGlyphs = 2
      ParentCtl3D = False
      TabOrder = 1
      OnExit = edt_datfinExit
    end
    object edt_codpro: TEdit
      Left = 383
      Top = 2
      Width = 51
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      OnExit = edt_codproExit
      OnKeyPress = edt_codproKeyPress
    end
    object lbx_codpro: TListBox
      Left = 435
      Top = -1
      Width = 218
      Height = 40
      Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
      Color = 13828095
      Ctl3D = False
      ItemHeight = 13
      ParentCtl3D = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      OnKeyDown = lbx_codproKeyDown
    end
    object OMITIR_PRO: TCheckBox
      Left = 384
      Top = 21
      Width = 53
      Height = 17
      Caption = 'Omitir'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 4
    end
    object edt_chaveini: TEdit
      Left = 97
      Top = 23
      Width = 85
      Height = 21
      AutoSize = False
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 5
      OnExit = edt_chaveiniExit
    end
    object edt_chavefin: TEdit
      Left = 230
      Top = 22
      Width = 85
      Height = 21
      AutoSize = False
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 6
      OnExit = edt_chavefinExit
    end
    object bbAtualizar: TBitBtn
      Left = 653
      Top = 0
      Width = 120
      Height = 40
      Cursor = crHandPoint
      Caption = '&Atualizar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 7
      OnClick = bbAtualizarClick
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
      Left = 772
      Top = 0
      Width = 120
      Height = 40
      Cursor = crHandPoint
      Caption = '&Sair'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 8
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
    Top = 52
    Width = 1084
    Height = 197
    Align = alTop
    Caption = 'Manipula'#231#227'o nas Ordens de Produ'#231#227'o:'
    TabOrder = 1
    object DBGrid_op: TDBGrid
      Left = 2
      Top = 15
      Width = 1080
      Height = 180
      Align = alClient
      DataSource = src_cadop02
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnCellClick = DBGrid_opCellClick
      OnColExit = DBGrid_opColExit
      OnDrawColumnCell = DBGrid_opDrawColumnCell
      Columns = <
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'op2_codpro'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'pdnome'
          ReadOnly = True
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 279
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'pdmarca'
          ReadOnly = True
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 96
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'pdund'
          ReadOnly = True
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'op2_qtd'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 60
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'op2_chave'
          ReadOnly = True
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 67
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'gerar'
          ReadOnly = True
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 82
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'imprimir'
          ReadOnly = True
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'excluir'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 71
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'sitmp_texto'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 98
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'sitacab_text'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 104
          Visible = True
        end>
    end
  end
  object gb_mp: TGroupBox
    Left = 0
    Top = 249
    Width = 1084
    Height = 276
    Align = alClient
    Caption = 'Materias Primas Utilizadas:'
    TabOrder = 2
    object DBGrid_mp: TDBGrid
      Left = 2
      Top = 15
      Width = 1080
      Height = 234
      Align = alClient
      DataSource = src_mp
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnDrawColumnCell = DBGrid_mpDrawColumnCell
      Columns = <
        item
          Expanded = False
          FieldName = 'CODPRO'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 63
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'pdnome'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 278
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'pdmarca'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 72
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'pdund'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'LOTE'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 61
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DTVCTO'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 70
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'QTD'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'tipo_produto'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 157
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TIPO_PROD'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 68
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'op3_pu'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'op3_sitmp'
          Visible = True
        end>
    end
    object Panel2: TPanel
      Left = 2
      Top = 249
      Width = 1080
      Height = 25
      Align = alBottom
      TabOrder = 1
      object edt_mp: TEdit
        Left = 241
        Top = 2
        Width = 120
        Height = 19
        Color = clYellow
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 0
        Text = '        Materia Prima'
      end
      object edt_prodprod: TEdit
        Left = 122
        Top = 2
        Width = 120
        Height = 19
        Color = 8454016
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 1
        Text = ' Produto Em Produ'#231#227'o'
      end
      object edt_embalagem: TEdit
        Left = 361
        Top = 2
        Width = 120
        Height = 19
        Color = clBlue
        Ctl3D = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 2
        Text = '         Embalagem'
      end
      object edt_cx_embarque: TEdit
        Left = 480
        Top = 2
        Width = 120
        Height = 19
        Color = clPurple
        Ctl3D = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 3
        Text = '   Caixa de Embarque'
      end
      object edt_acabado: TEdit
        Left = 3
        Top = 2
        Width = 120
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 4
        Text = '  0 - Produto Acabado'
      end
      object edt_outros: TEdit
        Left = 600
        Top = 2
        Width = 120
        Height = 19
        Color = 33023
        Ctl3D = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 5
        Text = '              Outros'
      end
    end
  end
  object cds_cadop02: TClientDataSet
    Aggregates = <>
    Params = <>
    AfterInsert = cds_cadop02AfterInsert
    BeforeEdit = cds_cadop02BeforeEdit
    BeforePost = cds_cadop02BeforePost
    Left = 240
    Top = 136
    object cds_cadop02op2_codpro: TFloatField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'op2_codpro'
    end
    object cds_cadop02op2_qtd: TFloatField
      DisplayLabel = 'Qtde'
      FieldName = 'op2_qtd'
    end
    object cds_cadop02op2_chave: TFloatField
      DisplayLabel = 'Chave'
      FieldName = 'op2_chave'
    end
    object cds_cadop02op2_lotseq: TFloatField
      DisplayLabel = 'Lotseq'
      FieldName = 'op2_lotseq'
    end
    object cds_cadop02pdnome: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'pdnome'
      Size = 100
    end
    object cds_cadop02pdund: TStringField
      DisplayLabel = 'Und'
      FieldName = 'pdund'
      Size = 3
    end
    object cds_cadop02pdmarca: TStringField
      DisplayLabel = 'Marca'
      FieldName = 'pdmarca'
      Size = 40
    end
    object cds_cadop02imprimir: TStringField
      FieldName = 'imprimir'
      Size = 10
    end
    object cds_cadop02gerar: TStringField
      FieldName = 'gerar'
    end
    object cds_cadop02excluir: TStringField
      FieldName = 'excluir'
    end
    object cds_cadop02sitmp: TIntegerField
      FieldName = 'sitmp'
    end
    object cds_cadop02sitmp_texto: TStringField
      DisplayLabel = 'Materia Prima'
      FieldName = 'sitmp_texto'
      Size = 30
    end
    object cds_cadop02sitacab: TIntegerField
      FieldName = 'sitacab'
    end
    object cds_cadop02sitacab_text: TStringField
      DisplayLabel = 'Produto Acabado'
      FieldName = 'sitacab_text'
      Size = 40
    end
    object cds_cadop02op2_pu: TFloatField
      FieldName = 'op2_pu'
    end
    object cds_cadop02OP2_FAB_DTFAB: TDateTimeField
      FieldName = 'OP2_FAB_DTFAB'
    end
    object cds_cadop02OP2_FAB_VCTO: TDateTimeField
      FieldName = 'OP2_FAB_VCTO'
    end
    object cds_cadop02OP2_FAB_LOTE: TStringField
      FieldName = 'OP2_FAB_LOTE'
    end
  end
  object src_cadop02: TDataSource
    DataSet = cds_cadop02
    OnDataChange = src_cadop02DataChange
    Left = 424
    Top = 129
  end
  object src_mp: TDataSource
    DataSet = strProc
    Left = 592
    Top = 320
  end
  object strProc: TADOStoredProc
    Connection = DM1_ADO.ADOConnection1
    Parameters = <>
    Left = 448
    Top = 241
    object strProcCODPRO: TFloatField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODPRO'
    end
    object strProcLOTE: TStringField
      DisplayLabel = 'Lote'
      FieldName = 'LOTE'
    end
    object strProcDTVCTO: TDateTimeField
      DisplayLabel = 'Dt.Vcto'
      FieldName = 'DTVCTO'
    end
    object strProcQTD: TFloatField
      DisplayLabel = 'Qtde'
      FieldName = 'QTD'
    end
    object strProcTIPO_PROD: TFloatField
      DisplayLabel = 'Tipo Prod'
      FieldName = 'TIPO_PROD'
    end
    object strProctipo_produto: TStringField
      DisplayLabel = 'Tipo do Produto'
      FieldName = 'tipo_produto'
      Size = 40
    end
    object strProcpdnome: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'pdnome'
      Size = 100
    end
    object strProcpdund: TStringField
      DisplayLabel = 'Und'
      FieldName = 'pdund'
      Size = 3
    end
    object strProcpdmarca: TStringField
      DisplayLabel = 'Marca'
      FieldName = 'pdmarca'
      Size = 60
    end
    object strProcop3_pu: TFloatField
      FieldName = 'op3_pu'
    end
    object strProcop3_sitmp: TFloatField
      FieldName = 'op3_sitmp'
    end
  end
end
