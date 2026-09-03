object Frm_ExcAJ: TFrm_ExcAJ
  Left = 479
  Top = 96
  Width = 736
  Height = 375
  Caption = 'Exclusao do Lancamento de Ajuste feito Indevidamente'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = [fsBold]
  OldCreateOrder = False
  Position = poDefault
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 728
    Height = 236
    Align = alClient
    TabOrder = 0
    object STG1: TStringGrid
      Left = 1
      Top = 1
      Width = 726
      Height = 234
      Align = alClient
      ColCount = 12
      DefaultRowHeight = 17
      FixedCols = 0
      RowCount = 2
      TabOrder = 0
      ColWidths = (
        112
        293
        64
        103
        416
        64
        64
        64
        64
        64
        64
        64)
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 236
    Width = 728
    Height = 75
    Align = alBottom
    TabOrder = 1
    object Label1: TLabel
      Left = 8
      Top = 8
      Width = 110
      Height = 13
      Caption = '&C'#243'digo do Produto:'
    end
    object Label2: TLabel
      Left = 11
      Top = 30
      Width = 68
      Height = 13
      Caption = 'Per'#237'odo de:'
    end
    object Label3: TLabel
      Left = 231
      Top = 27
      Width = 8
      Height = 13
      Caption = 'a'
    end
    object SpeedButton1: TSpeedButton
      Left = 223
      Top = 3
      Width = 23
      Height = 19
      Flat = True
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        33033333333333333F7F3333333333333000333333333333F777333333333333
        000333333333333F777333333333333000333333333333F77733333333333300
        033333333FFF3F777333333700073B703333333F7773F77733333307777700B3
        33333377333777733333307F8F8F7033333337F333F337F3333377F8F9F8F773
        3333373337F3373F3333078F898F870333337F33F7FFF37F333307F99999F703
        33337F377777337F3333078F898F8703333373F337F33373333377F8F9F8F773
        333337F3373337F33333307F8F8F70333333373FF333F7333333330777770333
        333333773FF77333333333370007333333333333777333333333}
      NumGlyphs = 2
      OnClick = SpeedButton1Click
    end
    object CODPRO: TEdit
      Left = 123
      Top = 3
      Width = 100
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 0
      OnExit = CODPROExit
      OnKeyPress = CODPROKeyPress
    end
    object NOMPRO: TEdit
      Left = 246
      Top = 3
      Width = 310
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 1
      Text = 'Todos...'
    end
    object MDT1: TMaskEdit
      Left = 123
      Top = 24
      Width = 100
      Height = 19
      Ctl3D = False
      EditMask = '!99/99/9999;1; '
      MaxLength = 10
      ParentCtl3D = False
      TabOrder = 2
      Text = '  /  /    '
      OnExit = MDT1Exit
    end
    object MDT2: TMaskEdit
      Left = 246
      Top = 25
      Width = 98
      Height = 19
      Ctl3D = False
      EditMask = '!99/99/9999;1; '
      MaxLength = 10
      ParentCtl3D = False
      TabOrder = 3
      Text = '  /  /    '
      OnExit = MDT2Exit
    end
    object BitBtn1: TBitBtn
      Left = 224
      Top = 48
      Width = 153
      Height = 25
      Caption = '&Pesquisar'
      TabOrder = 4
      OnClick = BitBtn1Click
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        33033333333333333F7F3333333333333000333333333333F777333333333333
        000333333333333F777333333333333000333333333333F77733333333333300
        033333333FFF3F777333333700073B703333333F7773F77733333307777700B3
        33333377333777733333307F8F8F7033333337F333F337F3333377F8F9F8F773
        3333373337F3373F3333078F898F870333337F33F7FFF37F333307F99999F703
        33337F377777337F3333078F898F8703333373F337F33373333377F8F9F8F773
        333337F3373337F33333307F8F8F70333333373FF333F7333333330777770333
        333333773FF77333333333370007333333333333777333333333}
      NumGlyphs = 2
    end
    object RG_LOCAL: TRadioGroup
      Left = 410
      Top = 40
      Width = 185
      Height = 35
      Caption = 'Local Mercadorias'
      Columns = 2
      ItemIndex = 0
      Items.Strings = (
        'Prateleira'
        'Deposito')
      TabOrder = 5
      Visible = False
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 311
    Width = 728
    Height = 33
    Align = alBottom
    TabOrder = 2
    object BitBtn2: TBitBtn
      Left = 20
      Top = 5
      Width = 180
      Height = 25
      Caption = '&Excluir Item Selecionado'
      TabOrder = 0
      OnClick = BitBtn2Click
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333FFFFF3333333333999993333333333F77777FFF333333999999999
        33333337777FF377FF3333993370739993333377FF373F377FF3399993000339
        993337777F777F3377F3393999707333993337F77737333337FF993399933333
        399377F3777FF333377F993339903333399377F33737FF33377F993333707333
        399377F333377FF3377F993333101933399377F333777FFF377F993333000993
        399377FF3377737FF7733993330009993933373FF3777377F7F3399933000399
        99333773FF777F777733339993707339933333773FF7FFF77333333999999999
        3333333777333777333333333999993333333333377777333333}
      NumGlyphs = 2
    end
    object BitBtn3: TBitBtn
      Left = 419
      Top = 5
      Width = 180
      Height = 25
      Caption = '&Sair'
      TabOrder = 1
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
    object bbexcluir_todos: TBitBtn
      Left = 210
      Top = 5
      Width = 180
      Height = 25
      Caption = '&E&xcluir Todos Acima'
      TabOrder = 2
      Visible = False
      OnClick = bbexcluir_todosClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333333333333333333333333333333333333FFF33FF333FFF339993370733
        999333777FF37FF377733339993000399933333777F777F77733333399970799
        93333333777F7377733333333999399933333333377737773333333333990993
        3333333333737F73333333333331013333333333333777FF3333333333910193
        333333333337773FF3333333399000993333333337377737FF33333399900099
        93333333773777377FF333399930003999333337773777F777FF339993370733
        9993337773337333777333333333333333333333333333333333333333333333
        3333333333333333333333333333333333333333333333333333}
      NumGlyphs = 2
    end
  end
  object Qr_Aju: TQuery
    OnCalcFields = Qr_AjuCalcFields
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select  * From CADAJU where AJCODEMP is null')
    Left = 136
    Top = 120
    object Qr_AjuAJCODEMP: TFloatField
      FieldName = 'AJCODEMP'
      Origin = 'SG_ASSOC.CADAJU.AJCODEMP'
    end
    object Qr_AjuAJSEQ: TFloatField
      FieldName = 'AJSEQ'
      Origin = 'SG_ASSOC.CADAJU.AJSEQ'
    end
    object Qr_AjuAJDATA: TDateTimeField
      FieldName = 'AJDATA'
      Origin = 'SG_ASSOC.CADAJU.AJDATA'
    end
    object Qr_AjuAJCODPRO: TFloatField
      FieldName = 'AJCODPRO'
      Origin = 'SG_ASSOC.CADAJU.AJCODPRO'
    end
    object Qr_AjuAJQTD: TFloatField
      FieldName = 'AJQTD'
      Origin = 'SG_ASSOC.CADAJU.AJQTD'
    end
    object Qr_AjuAJMOTIVO: TStringField
      FieldName = 'AJMOTIVO'
      Origin = 'SG_ASSOC.CADAJU.AJMOTIVO'
      Size = 60
    end
    object Qr_AjuAJCODUSR: TFloatField
      FieldName = 'AJCODUSR'
      Origin = 'SG_ASSOC.CADAJU.AJCODUSR'
    end
    object Qr_AjuAJDATAREF: TDateTimeField
      FieldName = 'AJDATAREF'
      Origin = 'SG_ASSOC.CADAJU.AJDATAREF'
    end
    object Qr_Ajunompro: TStringField
      FieldKind = fkCalculated
      FieldName = 'nompro'
      Size = 40
      Calculated = True
    end
    object Qr_AjuAJLOTE: TStringField
      FieldName = 'AJLOTE'
      Origin = 'SG_ASSOC.CADAJU.AJLOTE'
    end
    object Qr_AjuAJDATAV: TDateTimeField
      FieldName = 'AJDATAV'
      Origin = 'SG_ASSOC.CADAJU.AJDATAV'
    end
    object Qr_AjuAJTIPOM: TFloatField
      FieldName = 'AJTIPOM'
      Origin = 'SG_ASSOC.CADAJU.AJTIPOM'
    end
    object Qr_AjuAJLOTSEQ: TFloatField
      FieldName = 'AJLOTSEQ'
      Origin = 'SG_ASSOC.CADAJU.AJLOTSEQ'
    end
    object Qr_AjuAJESTMOV: TFloatField
      FieldName = 'AJESTMOV'
      Origin = 'SG_ASSOC.CADAJU.AJESTMOV'
    end
    object Qr_AjuAJFILIAL: TFloatField
      FieldName = 'AJFILIAL'
    end
    object Qr_AjuAJID_NEW: TFloatField
      FieldName = 'AJID_NEW'
    end
    object Qr_AjuAJDTFAB: TDateTimeField
      FieldName = 'AJDTFAB'
    end
  end
  object cds_itens: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 304
    Top = 120
    object cds_itenscodigo: TFloatField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'codigo'
    end
    object cds_itensdescricao: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'descricao'
      Size = 100
    end
    object cds_itensquant: TFloatField
      DisplayLabel = 'Quantidade'
      FieldName = 'quant'
    end
    object cds_itenstipomov: TStringField
      DisplayLabel = 'Tipo do Movimento'
      FieldName = 'tipomov'
    end
    object cds_itensobservacoes: TStringField
      DisplayLabel = 'Observa'#231#245'es'
      FieldName = 'observacoes'
      Size = 254
    end
    object cds_itenscodigo_ajseq: TFloatField
      DisplayLabel = 'Seq'
      FieldName = 'codigo_ajseq'
    end
    object cds_itenslote: TStringField
      DisplayLabel = 'Lote'
      FieldName = 'lote'
    end
    object cds_itensdtfab: TDateTimeField
      FieldName = 'dtfab'
    end
    object cds_itensdtvcto: TDateTimeField
      DisplayLabel = 'dt Vcto'
      FieldName = 'dtvcto'
    end
    object cds_itensdtajuste: TDateTimeField
      DisplayLabel = 'Dt Ajuste'
      FieldName = 'dtajuste'
    end
    object cds_itensempresa: TFloatField
      DisplayLabel = 'C'#243'd Emp'
      FieldName = 'empresa'
    end
    object cds_itensest_mov: TFloatField
      DisplayLabel = 'Est Mov'
      FieldName = 'est_mov'
    end
    object cds_itensfilial: TFloatField
      DisplayLabel = 'Filial'
      FieldName = 'filial'
    end
    object cds_itensdata: TDateTimeField
      DisplayLabel = 'Data'
      FieldName = 'data'
    end
    object cds_itensid_new: TFloatField
      DisplayLabel = 'Id New'
      FieldName = 'id_new'
    end
    object cds_itensloteRe: TStringField
      FieldName = 'loteRe'
    end
  end
end
