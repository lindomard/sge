object Frm_HistPro: TFrm_HistPro
  Left = 49
  Top = 104
  Width = 741
  Height = 460
  Caption = 'Hist'#243'rico detalhado do produto'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 733
    Height = 70
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 14
      Top = 21
      Width = 36
      Height = 13
      Caption = 'C'#243'digo:'
    end
    object GRADE: TLabel
      Left = 170
      Top = 25
      Width = 32
      Height = 13
      Caption = 'Grade:'
    end
    object Label2: TLabel
      Left = 7
      Top = 4
      Width = 44
      Height = 13
      Caption = 'Empresa:'
    end
    object CODPRO: TEdit
      Left = 56
      Top = 20
      Width = 109
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 1
    end
    object Edit1: TEdit
      Left = 205
      Top = 20
      Width = 62
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 2
    end
    object NOMPRO: TEdit
      Left = 266
      Top = 20
      Width = 349
      Height = 19
      Color = 16754899
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 3
    end
    object bbAtualizar: TBitBtn
      Left = 46
      Top = 41
      Width = 120
      Height = 25
      Caption = '&Atualizar'
      TabOrder = 4
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
      Left = 486
      Top = 41
      Width = 120
      Height = 25
      Caption = '&Sair'
      TabOrder = 5
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
    object Edit2: TEdit
      Left = 118
      Top = 2
      Width = 497
      Height = 19
      Color = 16754899
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 6
    end
    object CODEMP: TEdit
      Left = 56
      Top = 2
      Width = 63
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 0
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 70
    Width = 733
    Height = 217
    Align = alClient
    DataSource = Src_CadMonEst
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    ReadOnly = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDrawColumnCell = DBGrid1DrawColumnCell
    Columns = <
      item
        Expanded = False
        FieldName = 'MON_CODEMP'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'MON_DATAHORA'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'MON_TABELA'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'MON_CHAVE'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'MON_ORDEM'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'MON_CODPRO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'MON_LOTE'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'MON_DTVCTO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'MON_TIPDOC'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'MON_STATUS'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'MON_LOG'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'MON_DATADOC'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'MON_TIPOEVENTO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'MON_CODPRO_ANT'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'MON_LOTE_ANT'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'MON_DTVCTO_ANT'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'MON_ESTOQUE'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'MON_MOVIMENTA'
        Visible = True
      end>
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 287
    Width = 733
    Height = 139
    Align = alBottom
    Caption = 'Outras Informa'#231#245'es'
    TabOrder = 2
    object Label3: TLabel
      Left = 8
      Top = 34
      Width = 70
      Height = 13
      Caption = 'Est.Atu.Normal'
      FocusControl = DBEdit1
    end
    object Label4: TLabel
      Left = 8
      Top = 53
      Width = 69
      Height = 13
      Caption = 'Est.Atu.Consig'
      FocusControl = DBEdit2
    end
    object Label5: TLabel
      Left = 7
      Top = 71
      Width = 81
      Height = 13
      Caption = 'Est.Atu.Revenda'
      FocusControl = DBEdit3
    end
    object Label6: TLabel
      Left = 8
      Top = 88
      Width = 59
      Height = 13
      Caption = 'Est.Atu.Terc'
      FocusControl = DBEdit4
    end
    object Label7: TLabel
      Left = 256
      Top = 34
      Width = 90
      Height = 13
      Caption = 'Est.Anterior Normal'
      FocusControl = DBEdit8
    end
    object Label8: TLabel
      Left = 256
      Top = 53
      Width = 89
      Height = 13
      Caption = 'Est.Anterior Consig'
      FocusControl = DBEdit7
    end
    object Label9: TLabel
      Left = 255
      Top = 71
      Width = 101
      Height = 13
      Caption = 'Est.Anterior Revenda'
      FocusControl = DBEdit6
    end
    object Label10: TLabel
      Left = 255
      Top = 89
      Width = 79
      Height = 13
      Caption = 'Est.Anterior Terc'
      FocusControl = DBEdit5
    end
    object Label11: TLabel
      Left = 8
      Top = 14
      Width = 85
      Height = 13
      Caption = 'Quantidade Atual:'
      FocusControl = DBEdit9
    end
    object Label12: TLabel
      Left = 259
      Top = 14
      Width = 97
      Height = 13
      Caption = 'Quantidade Anterior:'
      FocusControl = DBEdit10
    end
    object Label13: TLabel
      Left = 8
      Top = 106
      Width = 73
      Height = 13
      Caption = 'Log de Evento:'
      FocusControl = DBEdit11
    end
    object DBEdit1: TDBEdit
      Left = 93
      Top = 32
      Width = 134
      Height = 19
      Ctl3D = False
      DataField = 'MON_ESTATU_NORMAL'
      DataSource = Src_CadMonEst
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 0
    end
    object DBEdit2: TDBEdit
      Left = 93
      Top = 50
      Width = 134
      Height = 19
      Ctl3D = False
      DataField = 'MON_ESTATU_CONS'
      DataSource = Src_CadMonEst
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 1
    end
    object DBEdit3: TDBEdit
      Left = 93
      Top = 68
      Width = 134
      Height = 19
      Ctl3D = False
      DataField = 'MON_ESTATU_REVENDA'
      DataSource = Src_CadMonEst
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 2
    end
    object DBEdit4: TDBEdit
      Left = 93
      Top = 86
      Width = 134
      Height = 19
      Ctl3D = False
      DataField = 'MON_ESTATU_TERC'
      DataSource = Src_CadMonEst
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 3
    end
    object DBEdit5: TDBEdit
      Left = 360
      Top = 86
      Width = 134
      Height = 19
      Ctl3D = False
      DataField = 'MON_ESTANT_TERC'
      DataSource = Src_CadMonEst
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 4
    end
    object DBEdit6: TDBEdit
      Left = 360
      Top = 68
      Width = 134
      Height = 19
      Ctl3D = False
      DataField = 'MON_ESTANT_REVENDA'
      DataSource = Src_CadMonEst
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 5
    end
    object DBEdit7: TDBEdit
      Left = 360
      Top = 50
      Width = 134
      Height = 19
      Ctl3D = False
      DataField = 'MON_ESTANT_CONS'
      DataSource = Src_CadMonEst
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 6
    end
    object DBEdit8: TDBEdit
      Left = 360
      Top = 32
      Width = 134
      Height = 19
      Ctl3D = False
      DataField = 'MON_ESTANT_NORMAL'
      DataSource = Src_CadMonEst
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 7
    end
    object DBEdit9: TDBEdit
      Left = 93
      Top = 14
      Width = 134
      Height = 19
      Ctl3D = False
      DataField = 'MON_QTD'
      DataSource = Src_CadMonEst
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 8
    end
    object DBEdit10: TDBEdit
      Left = 360
      Top = 14
      Width = 134
      Height = 19
      Ctl3D = False
      DataField = 'MON_QTD_ANT'
      DataSource = Src_CadMonEst
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 9
    end
    object DBEdit11: TDBEdit
      Left = 93
      Top = 104
      Width = 628
      Height = 19
      Ctl3D = False
      DataField = 'MON_LOG'
      DataSource = Src_CadMonEst
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 10
    end
  end
  object Tb_CadMonEst: TTable
    DatabaseName = 'C:\SGE\TEMP'
    TableName = 'TEMPOR00000.DB'
    Left = 224
    Top = 96
    object Tb_CadMonEstMON_CODEMP: TFloatField
      DisplayLabel = 'Empresa'
      FieldName = 'MON_CODEMP'
    end
    object Tb_CadMonEstMON_DATAHORA: TDateTimeField
      DisplayLabel = 'Data e hora'
      FieldName = 'MON_DATAHORA'
    end
    object Tb_CadMonEstMON_TABELA: TStringField
      DisplayLabel = 'Tabela'
      FieldName = 'MON_TABELA'
    end
    object Tb_CadMonEstMON_CHAVE: TFloatField
      DisplayLabel = 'Chave'
      FieldName = 'MON_CHAVE'
    end
    object Tb_CadMonEstMON_ORDEM: TFloatField
      DisplayLabel = 'Ordem'
      FieldName = 'MON_ORDEM'
    end
    object Tb_CadMonEstMON_CODPRO: TFloatField
      DisplayLabel = 'C'#243'd.Produto'
      FieldName = 'MON_CODPRO'
    end
    object Tb_CadMonEstMON_LOTE: TStringField
      DisplayLabel = 'Lote'
      FieldName = 'MON_LOTE'
    end
    object Tb_CadMonEstMON_DTVCTO: TDateTimeField
      DisplayLabel = 'Dt.Vcto.'
      FieldName = 'MON_DTVCTO'
    end
    object Tb_CadMonEstMON_QTD: TFloatField
      DisplayLabel = 'Qtd'
      FieldName = 'MON_QTD'
    end
    object Tb_CadMonEstMON_ESTATU_NORMAL: TFloatField
      DisplayLabel = 'Est.Atu.Normal'
      FieldName = 'MON_ESTATU_NORMAL'
    end
    object Tb_CadMonEstMON_ESTATU_CONS: TFloatField
      DisplayLabel = 'Est.Atu.Consig'
      FieldName = 'MON_ESTATU_CONS'
    end
    object Tb_CadMonEstMON_ESTATU_REVENDA: TFloatField
      DisplayLabel = 'Est.Atu.Revenda'
      FieldName = 'MON_ESTATU_REVENDA'
    end
    object Tb_CadMonEstMON_ESTATU_TERC: TFloatField
      DisplayLabel = 'Est.Atu.Terc'
      FieldName = 'MON_ESTATU_TERC'
    end
    object Tb_CadMonEstMON_ESTANT_NORMAL: TFloatField
      DisplayLabel = 'Est.Ant.Normal'
      FieldName = 'MON_ESTANT_NORMAL'
    end
    object Tb_CadMonEstMON_ESTANT_CONS: TFloatField
      DisplayLabel = 'Est.Ant.Cons'
      FieldName = 'MON_ESTANT_CONS'
    end
    object Tb_CadMonEstMON_ESTANT_REVENDA: TFloatField
      DisplayLabel = 'Est.Ant.Revenda'
      FieldName = 'MON_ESTANT_REVENDA'
    end
    object Tb_CadMonEstMON_ESTANT_TERC: TFloatField
      DisplayLabel = 'Est.Ant.Terc'
      FieldName = 'MON_ESTANT_TERC'
    end
    object Tb_CadMonEstMON_TIPDOC: TFloatField
      DisplayLabel = 'tp.Doc'
      FieldName = 'MON_TIPDOC'
    end
    object Tb_CadMonEstMON_STATUS: TFloatField
      DisplayLabel = 'Status'
      FieldName = 'MON_STATUS'
    end
    object Tb_CadMonEstMON_LOG: TStringField
      DisplayLabel = 'Log do evento'
      FieldName = 'MON_LOG'
      Size = 60
    end
    object Tb_CadMonEstMON_DATADOC: TDateTimeField
      DisplayLabel = 'Data Doc'
      FieldName = 'MON_DATADOC'
    end
    object Tb_CadMonEstMON_TIPOEVENTO: TFloatField
      DisplayLabel = 'tp.Evento'
      FieldName = 'MON_TIPOEVENTO'
    end
    object Tb_CadMonEstMON_CODPRO_ANT: TFloatField
      DisplayLabel = 'Cod.Prod.Ant'
      FieldName = 'MON_CODPRO_ANT'
    end
    object Tb_CadMonEstMON_LOTE_ANT: TStringField
      DisplayLabel = 'Lote Ant'
      FieldName = 'MON_LOTE_ANT'
    end
    object Tb_CadMonEstMON_DTVCTO_ANT: TDateTimeField
      DisplayLabel = 'Dt.Vcto.Atn'
      FieldName = 'MON_DTVCTO_ANT'
    end
    object Tb_CadMonEstMON_QTD_ANT: TFloatField
      DisplayLabel = 'Qtd.Ant'
      FieldName = 'MON_QTD_ANT'
    end
    object Tb_CadMonEstMON_ESTOQUE: TFloatField
      DisplayLabel = 'Estoque'
      FieldName = 'MON_ESTOQUE'
    end
    object Tb_CadMonEstMON_MOVIMENTA: TFloatField
      DisplayLabel = 'Mov.'
      FieldName = 'MON_MOVIMENTA'
    end
  end
  object Src_CadMonEst: TDataSource
    DataSet = Tb_CadMonEst
    Left = 288
    Top = 112
  end
end
