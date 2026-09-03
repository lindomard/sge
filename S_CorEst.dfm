object Frm_CorEst: TFrm_CorEst
  Left = 192
  Top = 107
  Width = 529
  Height = 315
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Corrige Estoque do Arquivo'
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
  object Label1: TLabel
    Left = 0
    Top = 171
    Width = 520
    Height = 13
    Align = alBottom
    Alignment = taCenter
    AutoSize = False
    Caption = 'Label1'
    Visible = False
  end
  object Corrigir: TBitBtn
    Left = 1
    Top = 2
    Width = 519
    Height = 89
    Caption = '&Corrigir Agora'
    TabOrder = 0
    OnClick = CorrigirClick
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      3333333333FFFFF3333333333000003333333333F777773FF333333008F88800
      33333337733333773F33330FFF8F888F033333733333333373F330DEFFF8F8FE
      D03337F33333333337F330DDEFFFFFEDD0333733333FFF33373F0BBFDE000EDF
      BB037F33337773F3337F0AABB08880BBAA037F3337F3F7F3337F0EEAA08080AA
      EE037F3337F737F3337F0AABB08880BBAA037F33373FF733337F0BBFDE000EDB
      BB0373F333777333337330DDEFFFFFEDD03337F33333333337F330DEF8F8FFFE
      D033373F333333333733330FFF8F8FFF03333373FF33333F733333300FF8F800
      3333333773FFFF77333333333000003333333333377777333333}
    Layout = blGlyphTop
    NumGlyphs = 2
  end
  object BitBtn1: TBitBtn
    Left = 1
    Top = 91
    Width = 519
    Height = 89
    Caption = '&Sair'
    TabOrder = 1
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
    Layout = blGlyphTop
    NumGlyphs = 2
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 184
    Width = 520
    Height = 76
    Align = alBottom
    Caption = 'Progresso do Processamento:'
    TabOrder = 2
    Visible = False
    object Gauge1: TGauge
      Left = 2
      Top = 15
      Width = 516
      Height = 59
      Align = alClient
      Progress = 0
    end
  end
  object Qr_LGC: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select CLCODEMP,CLCODPRO from CADLGC'
      'where CLCODEMP is null')
    Left = 64
    Top = 24
    object Qr_LGCCLCODEMP: TFloatField
      FieldName = 'CLCODEMP'
      Origin = 'SG_ASSOC.CADLGC.CLCODEMP'
    end
    object Qr_LGCCLCODPRO: TFloatField
      FieldName = 'CLCODPRO'
      Origin = 'SG_ASSOC.CADLGC.CLCODPRO'
    end
  end
  object Qr_Pro: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select PDCODEMP,PDCODPRO,PDNOME from cadpro'
      'where PDCODEMP is null')
    Left = 104
    Top = 24
    object Qr_ProPDCODEMP: TFloatField
      FieldName = 'PDCODEMP'
      Origin = 'SG_ASSOC.CADPRO.PDCODEMP'
    end
    object Qr_ProPDCODPRO: TFloatField
      FieldName = 'PDCODPRO'
      Origin = 'SG_ASSOC.CADPRO.PDCODPRO'
    end
    object Qr_ProPDNOME: TStringField
      FieldName = 'PDNOME'
      Origin = 'SG_ASSOC.CADPRO.PDNOME'
      Size = 40
    end
  end
  object Tb_Lote: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'SELECT SUM(CLQTD) as QTD,'
      '               SUM(CLQTD) as QTDC,'
      '               SUM(CLQTD) as QTDR,'
      
        'CLCODEMP,CLCODPRO,CLDTVCTO,CLNUMERO FROM CADLGC WHERE CLCODPRO=4' +
        '055'
      'GROUP BY CLCODEMP,CLCODPRO,CLDTVCTO,CLNUMERO')
    Left = 136
    Top = 24
    object Tb_LoteQTD: TFloatField
      FieldName = 'QTD'
      Origin = 'SG_ASSOC.CADLGC.CLQTD'
    end
    object Tb_LoteCLCODEMP: TFloatField
      FieldName = 'CLCODEMP'
      Origin = 'SG_ASSOC.CADLGC.CLCODEMP'
    end
    object Tb_LoteCLCODPRO: TFloatField
      FieldName = 'CLCODPRO'
      Origin = 'SG_ASSOC.CADLGC.CLCODPRO'
    end
    object Tb_LoteCLDTVCTO: TDateTimeField
      FieldName = 'CLDTVCTO'
      Origin = 'SG_ASSOC.CADLGC.CLDTVCTO'
    end
    object Tb_LoteCLNUMERO: TStringField
      FieldName = 'CLNUMERO'
      Origin = 'SG_ASSOC.CADLGC.CLNUMERO'
    end
    object Tb_LoteQTDC: TFloatField
      FieldName = 'QTDC'
      Origin = 'SG_ASSOC.CADLGC.CLQTD'
    end
    object Tb_LoteQTDR: TFloatField
      FieldName = 'QTDR'
      Origin = 'SG_ASSOC.CADLGC.CLQTD'
    end
  end
end
