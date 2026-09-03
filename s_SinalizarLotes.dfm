object Frm_SinalizarLotes: TFrm_SinalizarLotes
  Left = 193
  Top = 117
  Width = 845
  Height = 540
  Caption = 'Sinalizar Lotos de Produtos'
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
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 837
    Height = 89
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 10
      Width = 91
      Height = 13
      Caption = 'C'#243'digo do Produto:'
    end
    object Label2: TLabel
      Left = 248
      Top = 11
      Width = 51
      Height = 13
      Caption = 'Descri'#231#227'o:'
    end
    object edt_codpro: TEdit
      Left = 112
      Top = 8
      Width = 121
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 0
      OnExit = edt_codproExit
      OnKeyPress = edt_codproKeyPress
    end
    object edt_nomepro: TEdit
      Left = 300
      Top = 8
      Width = 514
      Height = 19
      TabStop = False
      Color = 16772812
      Ctl3D = False
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 1
    end
    object bbAtualizar: TBitBtn
      Left = 21
      Top = 36
      Width = 166
      Height = 25
      Caption = '&Atualizar'
      TabOrder = 2
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
      Left = 650
      Top = 28
      Width = 166
      Height = 25
      Caption = '&Sair'
      TabOrder = 3
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
    Top = 89
    Width = 837
    Height = 379
    Align = alClient
    Caption = 'Lotes Existentes'
    TabOrder = 1
    object DBGrid_lotes: TDBGrid
      Left = 2
      Top = 15
      Width = 833
      Height = 362
      Align = alClient
      DataSource = src_lotes
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnCellClick = DBGrid_lotesCellClick
      Columns = <
        item
          Expanded = False
          FieldName = 'CLFILIAL'
          ReadOnly = True
          Title.Alignment = taCenter
          Width = 87
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CLNUMERO'
          ReadOnly = True
          Title.Alignment = taCenter
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CLQTD'
          ReadOnly = True
          Title.Alignment = taCenter
          Width = 95
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CLDTFAB'
          ReadOnly = True
          Title.Alignment = taCenter
          Width = 139
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CLDTVCTO'
          ReadOnly = True
          Title.Alignment = taCenter
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CLSITUACAO'
          Title.Alignment = taCenter
          Width = 179
          Visible = True
        end>
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 468
    Width = 837
    Height = 41
    Align = alBottom
    TabOrder = 2
    object BitBtn1: TBitBtn
      Left = 344
      Top = 10
      Width = 166
      Height = 25
      Caption = 'Salvar Altera'#231#245'es'
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
  end
  object src_lotes: TDataSource
    DataSet = cds_lotes
    Left = 232
    Top = 48
  end
  object cds_lotes: TQuery
    CachedUpdates = True
    BeforeInsert = cds_lotesBeforeInsert
    BeforeEdit = cds_lotesBeforeEdit
    BeforePost = cds_lotesBeforePost
    DatabaseName = 'SG_ASSOC'
    UpdateObject = u_lotes
    Left = 264
    Top = 48
    object cds_lotesCLCODEMP: TFloatField
      DisplayLabel = 'C'#243'd Emp'
      FieldName = 'CLCODEMP'
    end
    object cds_lotesCLCODPRO: TFloatField
      DisplayLabel = 'C'#243'd Prood'
      FieldName = 'CLCODPRO'
    end
    object cds_lotesCLNUMERO: TStringField
      DisplayLabel = 'Lote'
      FieldName = 'CLNUMERO'
    end
    object cds_lotesCLQTD: TFloatField
      DisplayLabel = 'Estoque'
      FieldName = 'CLQTD'
    end
    object cds_lotesCLQTDR: TFloatField
      DisplayLabel = 'Est Revenda'
      FieldName = 'CLQTDR'
    end
    object cds_lotesCLQTDC: TFloatField
      DisplayLabel = 'Estqoeu Consignado'
      FieldName = 'CLQTDC'
    end
    object cds_lotesCLQTDT: TFloatField
      DisplayLabel = 'Estoque Terceiro'
      FieldName = 'CLQTDT'
    end
    object cds_lotesCLQTD_PRAT: TFloatField
      DisplayLabel = 'Est Prateleira'
      FieldName = 'CLQTD_PRAT'
    end
    object cds_lotesCLQTD_DEP: TFloatField
      DisplayLabel = 'Est Deposito'
      FieldName = 'CLQTD_DEP'
    end
    object cds_lotesCLQTD_REP: TFloatField
      DisplayLabel = 'Est em Reparo'
      FieldName = 'CLQTD_REP'
    end
    object cds_lotesCLQTD_RESERVADO: TFloatField
      DisplayLabel = 'Est Reservado'
      FieldName = 'CLQTD_RESERVADO'
    end
    object cds_lotesCLQTD_ANALISE: TFloatField
      DisplayLabel = 'Est em Analise'
      FieldName = 'CLQTD_ANALISE'
    end
    object cds_lotesCLFILIAL: TFloatField
      DisplayLabel = 'Filial'
      FieldName = 'CLFILIAL'
    end
    object cds_lotesCLSITUACAO: TStringField
      DisplayLabel = 'Situa'#231#227'o'
      FieldName = 'CLSITUACAO'
      Size = 50
    end
    object cds_lotesCLDTVCTO: TDateTimeField
      DisplayLabel = 'Data Vcto'
      FieldName = 'CLDTVCTO'
    end
    object cds_lotesALTEROU: TFloatField
      FieldName = 'ALTEROU'
    end
    object cds_lotesCLDTFAB: TDateTimeField
      DisplayLabel = 'Data Fabrica'#231#227'o'
      FieldName = 'CLDTFAB'
    end
  end
  object u_lotes: TUpdateSQL
    Left = 304
    Top = 48
  end
end
