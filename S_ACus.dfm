object Frm_ACus: TFrm_ACus
  Left = 309
  Top = 299
  Width = 579
  Height = 282
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 
    'Atualiza'#231#227'o de pre'#231'os de produtos atrav'#233's da composi'#231#227'o de custo' +
    's'
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
  object lbl_codpro: TLabel
    Left = 25
    Top = 138
    Width = 49
    Height = 13
    Caption = 'Produto:'
  end
  object RadioGroup1: TRadioGroup
    Left = 0
    Top = 0
    Width = 571
    Height = 42
    Align = alTop
    Caption = 'Tipo de Parametros utilizados:'
    Columns = 3
    ItemIndex = 0
    Items.Strings = (
      '&Produtos'
      '&Fornecedores'
      '&Geral')
    TabOrder = 0
    OnClick = RadioGroup1Click
  end
  object GB_PROG: TGroupBox
    Left = 0
    Top = 42
    Width = 571
    Height = 67
    Align = alTop
    Caption = 'Progresso da Atualiza'#231#227'o'
    TabOrder = 1
    Visible = False
    object Gauge1: TGauge
      Left = 2
      Top = 15
      Width = 567
      Height = 50
      Align = alClient
      Progress = 0
    end
  end
  object APLICAR: TBitBtn
    Left = 0
    Top = 189
    Width = 121
    Height = 45
    Caption = '&Atualizar'
    TabOrder = 2
    OnClick = APLICARClick
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
    Layout = blGlyphTop
    NumGlyphs = 2
  end
  object BitBtn1: TBitBtn
    Left = 408
    Top = 190
    Width = 121
    Height = 45
    Caption = '&Sair'
    TabOrder = 3
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
  object cb_capcus: TCheckBox
    Left = 3
    Top = 111
    Width = 254
    Height = 17
    Caption = 'Capturar o Pre'#231'o de Custo da Formula'
    TabOrder = 4
    Visible = False
  end
  object CODPRO: TEdit
    Left = 83
    Top = 135
    Width = 62
    Height = 19
    Ctl3D = False
    ParentCtl3D = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 5
    OnExit = CODPROExit
    OnKeyPress = CODPROKeyPress
  end
  object lbx_codpro: TListBox
    Left = 144
    Top = 135
    Width = 415
    Height = 42
    Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
    Color = 13828095
    Ctl3D = False
    ItemHeight = 13
    ParentCtl3D = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 6
    OnKeyDown = lbx_codproKeyDown
  end
  object OMITIR_PRO: TCheckBox
    Left = 84
    Top = 157
    Width = 60
    Height = 17
    Caption = 'Omitir'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 7
  end
  object Qr_Pro: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      
        'select PDCODPRO,PDCODFOR,PDPRECO1,PDPRECO2,PDPRECO3,PDPRECOC,PDU' +
        'CPR,PDVLRINC,'
      'PDQTDGRML,PDPCOFAB,CUCODIGO from CADCUS,CADPRO'
      'where PDCODPRO=CUCODIGO'
      'group by PDCODPRO,PDCODFOR,PDPRECO1,PDPRECO2,PDPRECO3,'
      'PDPRECOC,PDUCPR,PDVLRINC,PDPCOFAB,CUCODIGO,PDQTDGRML')
    Left = 144
    Top = 120
    object Qr_ProPDPRECO1: TFloatField
      FieldName = 'PDPRECO1'
      Origin = 'SG_ASSOC.CADPRO.PDPRECO1'
    end
    object Qr_ProPDPRECOC: TFloatField
      FieldName = 'PDPRECOC'
      Origin = 'SG_ASSOC.CADPRO.PDPRECOC'
    end
    object Qr_ProPDPCOFAB: TFloatField
      FieldName = 'PDPCOFAB'
      Origin = 'SG_ASSOC.CADPRO.PDPCOFAB'
    end
    object Qr_ProCUCODIGO: TFloatField
      FieldName = 'CUCODIGO'
      Origin = 'SG_ASSOC.CADCUS.CUCODIGO'
    end
    object Qr_ProPDCODPRO: TFloatField
      FieldName = 'PDCODPRO'
      Origin = 'SG_ASSOC.CADPRO.PDCODPRO'
    end
    object Qr_ProPDCODFOR: TFloatField
      FieldName = 'PDCODFOR'
      Origin = 'SG_ASSOC.CADPRO.PDCODFOR'
    end
    object Qr_ProPDPRECO2: TFloatField
      FieldName = 'PDPRECO2'
      Origin = 'SG_ASSOC.CADPRO.PDPRECO2'
    end
    object Qr_ProPDPRECO3: TFloatField
      FieldName = 'PDPRECO3'
      Origin = 'SG_ASSOC.CADPRO.PDPRECO3'
    end
    object Qr_ProPDQTDGRML: TFloatField
      FieldName = 'PDQTDGRML'
      Origin = 'SG_ASSOC.CADPRO.PDQTDGRML'
    end
    object Qr_ProPDUCPR: TFloatField
      FieldName = 'PDUCPR'
      Origin = 'SG_ASSOC.CADPRO.PDUCPR'
    end
    object Qr_ProPDVLRINC: TFloatField
      FieldName = 'PDVLRINC'
      Origin = 'SG_ASSOC.CADPRO.PDVLRINC'
    end
  end
  object Qr_Com: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      
        'Select CUPERC,PCAPLS,PCOPCIO,PCFATOR ,PFORMULA,PTIPO from CADCUS' +
        ',CADPCUS'
      'where PCCODIGO=CUCODPCU'
      'and CUCODIGO=19')
    Left = 184
    Top = 120
    object Qr_ComCUPERC: TFloatField
      FieldName = 'CUPERC'
      Origin = 'SG_ASSOC.CADCUS.CUPERC'
    end
    object Qr_ComPCAPLS: TFloatField
      FieldName = 'PCAPLS'
      Origin = 'SG_ASSOC.CADPCUS.PCAPLS'
    end
    object Qr_ComPCOPCIO: TFloatField
      FieldName = 'PCOPCIO'
      Origin = 'SG_ASSOC.CADPCUS.PCOPCIO'
    end
    object Qr_ComPCFATOR: TFloatField
      FieldName = 'PCFATOR'
      Origin = 'SG_ASSOC.CADPCUS.PCFATOR'
    end
    object Qr_ComPFORMULA: TFloatField
      FieldName = 'PFORMULA'
      Origin = 'SG_ASSOC.CADPCUS.PFORMULA'
    end
    object Qr_ComPTIPO: TFloatField
      FieldName = 'PTIPO'
      Origin = 'SG_ASSOC.CADPCUS.PTIPO'
    end
  end
end
