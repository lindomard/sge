object Frm_Imp_ResFol: TFrm_Imp_ResFol
  Left = 192
  Top = 107
  Width = 537
  Height = 334
  Caption = 'Impress'#227'o do Resumo da Folha de Pagamento'
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
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 25
    Top = 12
    Width = 101
    Height = 13
    Caption = 'Refer'#234'ncia.: m'#234's:'
  end
  object Label2: TLabel
    Left = 180
    Top = 11
    Width = 26
    Height = 13
    Caption = 'ano:'
  end
  object Label3: TLabel
    Left = 28
    Top = 32
    Width = 135
    Height = 13
    Caption = 'Funcion'#225'rio................:'
  end
  object Label4: TLabel
    Left = 226
    Top = 52
    Width = 120
    Height = 13
    Caption = 'Ordem de Impressao:'
    Color = 7471103
    ParentColor = False
  end
  object MES: TEdit
    Left = 131
    Top = 8
    Width = 34
    Height = 19
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 0
  end
  object ANO: TEdit
    Left = 214
    Top = 8
    Width = 46
    Height = 19
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 1
  end
  object CODFUN: TEdit
    Left = 192
    Top = 29
    Width = 69
    Height = 19
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 2
    OnExit = CODFUNExit
    OnKeyPress = CODFUNKeyPress
  end
  object NOMFUN: TEdit
    Left = 262
    Top = 28
    Width = 234
    Height = 21
    Enabled = False
    ParentColor = True
    TabOrder = 3
    Text = 'Todos...'
  end
  object bb_Folha: TBitBtn
    Left = 26
    Top = 109
    Width = 240
    Height = 46
    Caption = 'Folha de Pagamento'
    TabOrder = 6
    OnClick = bb_FolhaClick
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
      55555555FFFFFFFF5555555000000005555555577777777FF555550999999900
      55555575555555775F55509999999901055557F55555557F75F5001111111101
      105577FFFFFFFF7FF75F00000000000011057777777777775F755070FFFFFF0F
      01105777F555557F75F75500FFFFFF0FF0105577F555FF7F57575550FF700008
      8F0055575FF7777555775555000888888F005555777FFFFFFF77555550000000
      0F055555577777777F7F555550FFFFFF0F05555557F5FFF57F7F555550F000FF
      0005555557F777557775555550FFFFFF0555555557F555FF7F55555550FF7000
      05555555575FF777755555555500055555555555557775555555}
    Layout = blGlyphTop
    NumGlyphs = 2
  end
  object bb_Ferias: TBitBtn
    Left = 26
    Top = 154
    Width = 240
    Height = 46
    Caption = 'F'#233'rias'
    TabOrder = 7
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
      0000377777777777777707FFFFFFFFFFFF70773FF33333333F770F77FFFFFFFF
      77F07F773FFFFFFF77F70FFF7700000000007F337777777777770FFFFF0BBBBB
      BBB07F333F7F3FF33FF70FFF700B00BB00B07F3F777F77F377370F707F0BB0B0
      0BB07F77337F37F77337007EEE0BB0B0BBB077FFFF7F37F7F3370777770EE000
      EEE07777777F3777F3F7307EEE0E0E00E0E03773FF7F7377F73733707F0EE000
      0EE03337737F377773373333700EEE00EEE03333377F3377FF373333330EEEE0
      0EE03333337F33377F373333330EEEE00EE03333337F333773373333330EEEEE
      EEE03333337FFFFFFFF733333300000000003333337777777777}
    Layout = blGlyphTop
    NumGlyphs = 2
  end
  object bb_13pp: TBitBtn
    Left = 265
    Top = 109
    Width = 240
    Height = 46
    Caption = '13o. Primeira Parcela'
    TabOrder = 8
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333303333
      333333333337FF3333333333330003333333333333777F333333333333080333
      3333333F33777FF33F3333B33B000B33B3333373F777773F7333333BBB0B0BBB
      33333337737F7F77F333333BBB0F0BBB33333337337373F73F3333BBB0F7F0BB
      B333337F3737F73F7F3333BB0FB7BF0BB3333F737F37F37F73FFBBBB0BF7FB0B
      BBB3773F7F37337F377333BB0FBFBF0BB333337F73F333737F3333BBB0FBF0BB
      B3333373F73FF7337333333BBB000BBB33333337FF777337F333333BBBBBBBBB
      3333333773FF3F773F3333B33BBBBB33B33333733773773373333333333B3333
      333333333337F33333333333333B333333333333333733333333}
    Layout = blGlyphTop
    NumGlyphs = 2
  end
  object bb_13unico: TBitBtn
    Left = 26
    Top = 199
    Width = 240
    Height = 46
    Caption = '13o. '#218'nico'
    TabOrder = 9
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333303333
      333333333337FF3333333333330003333333333333777F333333333333080333
      3333333333777F3333333333330003333333333333777F3333333333330F0333
      33333333337F7F3333333333330F033333333333337373F33333333330F7F033
      333333333737F73F333333330FF7FF03333333337F37F37F333333330FF7FF03
      333333337F37337F333333330FFFFF033333333373F333733333333330FFF033
      33333333373FF733333333333300033333333333337773333333333333333333
      3333333333333333333333333333333333333333333333333333333333333333
      3333333333333333333333333333333333333333333333333333}
    Layout = blGlyphTop
    NumGlyphs = 2
  end
  object bb_sp: TBitBtn
    Left = 265
    Top = 154
    Width = 240
    Height = 46
    Caption = '13o. Segunda Parcela'
    TabOrder = 10
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333330000000
      00003333377777777777333330FFFFFFFFF03FF3F7FFFF33FFF7003000000FF0
      00F077F7777773F77737E00FBFBFB0FFFFF07773333FF7FF33F7E0FBFB00000F
      F0F077F333777773F737E0BFBFBFBFB0FFF077F3333FFFF733F7E0FBFB00000F
      F0F077F333777773F737E0BFBFBFBFB0FFF077F33FFFFFF733F7E0FB0000000F
      F0F077FF777777733737000FB0FFFFFFFFF07773F7F333333337333000FFFFFF
      FFF0333777F3FFF33FF7333330F000FF0000333337F777337777333330FFFFFF
      0FF0333337FFFFFF7F37333330CCCCCC0F033333377777777F73333330FFFFFF
      0033333337FFFFFF773333333000000003333333377777777333}
    Layout = blGlyphTop
    NumGlyphs = 2
  end
  object bb_recisao: TBitBtn
    Left = 265
    Top = 199
    Width = 240
    Height = 46
    Caption = 'Recis'#227'o de Contrato'
    TabOrder = 11
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
    Layout = blGlyphTop
    NumGlyphs = 2
  end
  object bbSair: TBitBtn
    Left = 25
    Top = 245
    Width = 480
    Height = 46
    Caption = '&Sair'
    TabOrder = 12
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
    Layout = blGlyphTop
    NumGlyphs = 2
  end
  object rg_tipo: TRadioGroup
    Left = 26
    Top = 69
    Width = 479
    Height = 41
    Caption = 'Tipo de Impress'#227'o:'
    Columns = 3
    ItemIndex = 0
    Items.Strings = (
      '&Gr'#225'fica'
      '&Normal(matricial)'
      '&Personalizada')
    TabOrder = 13
    Visible = False
  end
  object CB_VISUAL: TCheckBox
    Left = 27
    Top = 50
    Width = 191
    Height = 17
    Caption = 'Visualizar antes de Imprimir'
    Checked = True
    State = cbChecked
    TabOrder = 4
  end
  object CB_ORDEM: TComboBox
    Left = 350
    Top = 48
    Width = 145
    Height = 21
    Color = 7471103
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ItemHeight = 13
    ItemIndex = 0
    ParentFont = False
    TabOrder = 5
    Text = 'Nome do Funcionario'
    OnExit = CB_ORDEMExit
    Items.Strings = (
      'Nome do Funcionario'
      'Codigo do Funcionario')
  end
  object Qr_LFol: TQuery
    OnCalcFields = Qr_LFolCalcFields
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select * From CADLFOL where LCCODEMP is null')
    Left = 320
    Top = 8
    object Qr_LFolLCCODEMP: TFloatField
      FieldName = 'LCCODEMP'
      Origin = 'SG_ASSOC.CADLFOL.LCCODEMP'
    end
    object Qr_LFolLCLOCAL: TFloatField
      FieldName = 'LCLOCAL'
      Origin = 'SG_ASSOC.CADLFOL.LCLOCAL'
    end
    object Qr_LFolLCMES: TFloatField
      FieldName = 'LCMES'
      Origin = 'SG_ASSOC.CADLFOL.LCMES'
    end
    object Qr_LFolLCANO: TFloatField
      FieldName = 'LCANO'
      Origin = 'SG_ASSOC.CADLFOL.LCANO'
    end
    object Qr_LFolLCCODFUN: TFloatField
      FieldName = 'LCCODFUN'
      Origin = 'SG_ASSOC.CADLFOL.LCCODFUN'
    end
    object Qr_LFolLCCODEVE: TFloatField
      FieldName = 'LCCODEVE'
      Origin = 'SG_ASSOC.CADLFOL.LCCODEVE'
    end
    object Qr_LFolLCQTD: TFloatField
      FieldName = 'LCQTD'
      Origin = 'SG_ASSOC.CADLFOL.LCQTD'
    end
    object Qr_LFolLCNAT: TFloatField
      FieldName = 'LCNAT'
      Origin = 'SG_ASSOC.CADLFOL.LCNAT'
    end
    object Qr_LFolLCTIPO: TFloatField
      FieldName = 'LCTIPO'
      Origin = 'SG_ASSOC.CADLFOL.LCTIPO'
    end
    object Qr_LFolLCVALOR: TFloatField
      FieldName = 'LCVALOR'
      Origin = 'SG_ASSOC.CADLFOL.LCVALOR'
    end
    object Qr_LFolLCINCINSS: TFloatField
      FieldName = 'LCINCINSS'
      Origin = 'SG_ASSOC.CADLFOL.LCINCINSS'
    end
    object Qr_LFolLCINCFGTS: TFloatField
      FieldName = 'LCINCFGTS'
      Origin = 'SG_ASSOC.CADLFOL.LCINCFGTS'
    end
    object Qr_LFolLCINCIR: TFloatField
      FieldName = 'LCINCIR'
      Origin = 'SG_ASSOC.CADLFOL.LCINCIR'
    end
    object Qr_LFolLCQTDPAD: TFloatField
      FieldName = 'LCQTDPAD'
      Origin = 'SG_ASSOC.CADLFOL.LCQTDPAD'
    end
    object Qr_LFolLCSOMA: TFloatField
      FieldName = 'LCSOMA'
      Origin = 'SG_ASSOC.CADLFOL.LCSOMA'
    end
    object Qr_LFolLCINCVT: TFloatField
      FieldName = 'LCINCVT'
      Origin = 'SG_ASSOC.CADLFOL.LCINCVT'
    end
    object Qr_LFolLCTOTAL: TFloatField
      FieldName = 'LCTOTAL'
      Origin = 'SG_ASSOC.CADLFOL.LCTOTAL'
    end
    object Qr_LFolvecimentos: TFloatField
      FieldKind = fkCalculated
      FieldName = 'vecimentos'
      Calculated = True
    end
    object Qr_LFoldescontos: TFloatField
      FieldKind = fkCalculated
      FieldName = 'descontos'
      Calculated = True
    end
    object Qr_LFolreferencia: TStringField
      FieldKind = fkCalculated
      FieldName = 'referencia'
      Size = 10
      Calculated = True
    end
    object Qr_LFolnomeve: TStringField
      FieldKind = fkCalculated
      FieldName = 'nomeve'
      Size = 40
      Calculated = True
    end
  end
  object Qr_RFol: TQuery
    OnCalcFields = Qr_RFolCalcFields
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select  RFCODEMP,'
      '  RFLOCAL,'
      '  RFMES,'
      '  RFANO,'
      '  RFCODFUN,'
      '  RFTOTVEN,'
      '  RFTOTDES,'
      '  RFBASEFGTS,'
      '  RFALFGTS,'
      '  RFVLRFGTS,'
      '  RFBASEIR,'
      '  RFALIR,'
      '  RFVLRIR,'
      '  RFBASEINSS,'
      '  RFALINSS,'
      '  RFVLRINSS,'
      '  RFBASEVT,'
      '  RFALVT,'
      '  RFSALBASE,'
      '  RFVLRVT,'
      '  RFDTAQI,'
      '  RFDTAQF,'
      '  RFDTFERI,'
      '  RFDTFERF,'
      '  RFQTDFNJ,'
      '  CADFUN.CFNOMFUN as nomfun,'
      '  CADFUN.CFCODCAR as codcar,'
      '  CFCBO    as CBO'
      ' From CADRFOL,CADFUN'
      ' where'
      'RFCODFUN=CFCODFUN'
      'AND RFCODEMP is null'
      ''
      '')
    Left = 360
    Top = 8
    object Qr_RFolnomcar: TStringField
      FieldKind = fkCalculated
      FieldName = 'nomcar'
      Size = 40
      Calculated = True
    end
    object Qr_RFolNOMFUN: TStringField
      FieldName = 'NOMFUN'
      Origin = 'SG_ASSOC.CADFUN.CFNOMFUN'
      Size = 40
    end
    object Qr_RFolCODCAR: TFloatField
      FieldName = 'CODCAR'
      Origin = 'SG_ASSOC.CADFUN.CFCODCAR'
    end
    object Qr_RFolCBO: TStringField
      FieldName = 'CBO'
      Origin = 'SG_ASSOC.CADFUN.CFCBO'
      Size = 10
    end
    object Qr_RFolRFCODEMP: TFloatField
      FieldName = 'RFCODEMP'
      Origin = 'SG_ASSOC.CADRFOL.RFCODEMP'
    end
    object Qr_RFolRFLOCAL: TFloatField
      FieldName = 'RFLOCAL'
      Origin = 'SG_ASSOC.CADRFOL.RFLOCAL'
    end
    object Qr_RFolRFMES: TFloatField
      FieldName = 'RFMES'
      Origin = 'SG_ASSOC.CADRFOL.RFMES'
    end
    object Qr_RFolRFANO: TFloatField
      FieldName = 'RFANO'
      Origin = 'SG_ASSOC.CADRFOL.RFANO'
    end
    object Qr_RFolRFCODFUN: TFloatField
      FieldName = 'RFCODFUN'
      Origin = 'SG_ASSOC.CADRFOL.RFCODFUN'
    end
    object Qr_RFolRFTOTVEN: TFloatField
      FieldName = 'RFTOTVEN'
      Origin = 'SG_ASSOC.CADRFOL.RFTOTVEN'
    end
    object Qr_RFolRFTOTDES: TFloatField
      FieldName = 'RFTOTDES'
      Origin = 'SG_ASSOC.CADRFOL.RFTOTDES'
    end
    object Qr_RFolRFBASEFGTS: TFloatField
      FieldName = 'RFBASEFGTS'
      Origin = 'SG_ASSOC.CADRFOL.RFBASEFGTS'
    end
    object Qr_RFolRFALFGTS: TFloatField
      FieldName = 'RFALFGTS'
      Origin = 'SG_ASSOC.CADRFOL.RFALFGTS'
    end
    object Qr_RFolRFVLRFGTS: TFloatField
      FieldName = 'RFVLRFGTS'
      Origin = 'SG_ASSOC.CADRFOL.RFVLRFGTS'
    end
    object Qr_RFolRFBASEIR: TFloatField
      FieldName = 'RFBASEIR'
      Origin = 'SG_ASSOC.CADRFOL.RFBASEIR'
    end
    object Qr_RFolRFALIR: TFloatField
      FieldName = 'RFALIR'
      Origin = 'SG_ASSOC.CADRFOL.RFALIR'
    end
    object Qr_RFolRFVLRIR: TFloatField
      FieldName = 'RFVLRIR'
      Origin = 'SG_ASSOC.CADRFOL.RFVLRIR'
    end
    object Qr_RFolRFBASEINSS: TFloatField
      FieldName = 'RFBASEINSS'
      Origin = 'SG_ASSOC.CADRFOL.RFBASEINSS'
    end
    object Qr_RFolRFALINSS: TFloatField
      FieldName = 'RFALINSS'
      Origin = 'SG_ASSOC.CADRFOL.RFALINSS'
    end
    object Qr_RFolRFVLRINSS: TFloatField
      FieldName = 'RFVLRINSS'
      Origin = 'SG_ASSOC.CADRFOL.RFVLRINSS'
    end
    object Qr_RFolRFBASEVT: TFloatField
      FieldName = 'RFBASEVT'
      Origin = 'SG_ASSOC.CADRFOL.RFBASEVT'
    end
    object Qr_RFolRFALVT: TFloatField
      FieldName = 'RFALVT'
      Origin = 'SG_ASSOC.CADRFOL.RFALVT'
    end
    object Qr_RFolRFSALBASE: TFloatField
      FieldName = 'RFSALBASE'
      Origin = 'SG_ASSOC.CADRFOL.RFSALBASE'
    end
    object Qr_RFolRFVLRVT: TFloatField
      FieldName = 'RFVLRVT'
      Origin = 'SG_ASSOC.CADRFOL.RFVLRVT'
    end
    object Qr_RFolRFDTAQI: TDateTimeField
      FieldName = 'RFDTAQI'
      Origin = 'SG_ASSOC.CADRFOL.RFDTAQI'
    end
    object Qr_RFolRFDTAQF: TDateTimeField
      FieldName = 'RFDTAQF'
      Origin = 'SG_ASSOC.CADRFOL.RFDTAQF'
    end
    object Qr_RFolRFDTFERI: TDateTimeField
      FieldName = 'RFDTFERI'
      Origin = 'SG_ASSOC.CADRFOL.RFDTFERI'
    end
    object Qr_RFolRFDTFERF: TDateTimeField
      FieldName = 'RFDTFERF'
      Origin = 'SG_ASSOC.CADRFOL.RFDTFERF'
    end
    object Qr_RFolRFQTDFNJ: TFloatField
      FieldName = 'RFQTDFNJ'
      Origin = 'SG_ASSOC.CADRFOL.RFQTDFNJ'
    end
  end
  object Src_RFol: TDataSource
    DataSet = Qr_RFol
    Left = 408
    Top = 8
  end
end
