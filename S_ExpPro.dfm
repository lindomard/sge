object Frm_ExpPro: TFrm_ExpPro
  Left = 208
  Top = 116
  Width = 544
  Height = 324
  ActiveControl = MCODEMP
  Caption = 'Exportar Arquivo de Produtos'
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
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 528
    Height = 245
    Align = alClient
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 16
      Width = 505
      Height = 13
      Alignment = taCenter
      AutoSize = False
      Caption = 'Label1'
    end
    object Label2: TLabel
      Left = 16
      Top = 37
      Width = 125
      Height = 13
      Caption = 'Destino do Arquivo...:'
    end
    object Gauge1: TGauge
      Left = 1
      Top = 200
      Width = 526
      Height = 44
      Align = alBottom
      Progress = 0
      Visible = False
    end
    object Label4: TLabel
      Left = 19
      Top = 185
      Width = 273
      Height = 13
      Caption = '&Percentual de Acr'#233'scimos/Descontos no Pre'#231'o:'
    end
    object Label5: TLabel
      Left = 354
      Top = 187
      Width = 10
      Height = 13
      Caption = '%'
    end
    object Label6: TLabel
      Left = 89
      Top = 54
      Width = 49
      Height = 13
      Caption = 'Produto:'
    end
    object Label3: TLabel
      Left = 69
      Top = 93
      Width = 69
      Height = 13
      Caption = 'Fornecedor:'
    end
    object Label8: TLabel
      Left = 26
      Top = 136
      Width = 111
      Height = 13
      Caption = 'Grupo de Produtos:'
    end
    object MCODEMP: TEdit
      Left = 141
      Top = 33
      Width = 57
      Height = 19
      TabOrder = 1
      OnExit = MCODEMPExit
      OnKeyPress = MCODEMPKeyPress
    end
    object NOMEMP: TEdit
      Left = 197
      Top = 33
      Width = 299
      Height = 19
      Enabled = False
      ParentColor = True
      TabOrder = 9
    end
    object CB_PRECOS: TCheckBox
      Left = 20
      Top = 1
      Width = 421
      Height = 17
      Caption = 'Permitir somente com Pre'#231'os Diferentes'
      TabOrder = 0
    end
    object PERC: TEdit
      Left = 296
      Top = 184
      Width = 55
      Height = 19
      TabOrder = 8
      OnExit = PERCExit
    end
    object CODPRO: TEdit
      Left = 141
      Top = 51
      Width = 57
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      OnExit = CODPROExit
      OnKeyPress = CODPROKeyPress
    end
    object lbx_codpro: TListBox
      Left = 197
      Top = 51
      Width = 334
      Height = 42
      Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
      Color = 13828095
      Ctl3D = False
      ItemHeight = 13
      ParentCtl3D = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 10
      OnKeyDown = lbx_codproKeyDown
    end
    object OMITIR_PRO: TCheckBox
      Left = 142
      Top = 73
      Width = 53
      Height = 17
      Caption = 'Omitir'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
    end
    object CODFOR: TEdit
      Left = 141
      Top = 92
      Width = 57
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 4
      OnExit = CODFORExit
      OnKeyPress = CODFORKeyPress
    end
    object lbx_codfor: TListBox
      Left = 197
      Top = 92
      Width = 334
      Height = 42
      Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
      Color = 13828095
      Ctl3D = False
      ItemHeight = 13
      ParentCtl3D = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 11
      OnKeyDown = lbx_codforKeyDown
    end
    object OMITIR_FOR: TCheckBox
      Left = 142
      Top = 116
      Width = 54
      Height = 17
      Caption = 'Omitir'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 5
    end
    object CODGRU: TEdit
      Left = 141
      Top = 133
      Width = 57
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 6
      OnExit = CODGRUExit
      OnKeyPress = CODGRUKeyPress
    end
    object lbx_codgru: TListBox
      Left = 197
      Top = 133
      Width = 334
      Height = 42
      Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
      Color = 13828095
      Ctl3D = False
      ItemHeight = 13
      ParentCtl3D = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 12
      OnKeyDown = lbx_codgruKeyDown
    end
    object OMITIR_GRU: TCheckBox
      Left = 141
      Top = 155
      Width = 56
      Height = 14
      Caption = 'Omitir'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 7
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 245
    Width = 528
    Height = 41
    Align = alBottom
    TabOrder = 1
    object bbExportar: TBitBtn
      Left = 6
      Top = 8
      Width = 120
      Height = 25
      Cursor = crHandPoint
      Caption = '&Exportar'
      TabOrder = 0
      OnClick = bbExportarClick
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
      Left = 410
      Top = 8
      Width = 120
      Height = 25
      Cursor = crHandPoint
      Caption = '&Sair'
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
    object bbSalvarPadrao: TBitBtn
      Left = 208
      Top = 8
      Width = 120
      Height = 25
      Cursor = crHandPoint
      Caption = '&Salvar Padr'#227'o'
      TabOrder = 2
      OnClick = bbSalvarPadraoClick
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
  object Qr_Pro: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select * from CADPRO where PDCODEMP is null')
    Left = 72
    Top = 10
    object Qr_ProPDCODEMP: TFloatField
      FieldName = 'PDCODEMP'
      Origin = 'SG_ASSOC.CADPRO.PDCODEMP'
    end
    object Qr_ProPDCODPRO: TFloatField
      FieldName = 'PDCODPRO'
      Origin = 'SG_ASSOC.CADPRO.PDCODPRO'
    end
    object Qr_ProPDCODBAR: TFloatField
      FieldName = 'PDCODBAR'
      Origin = 'SG_ASSOC.CADPRO.PDCODBAR'
    end
    object Qr_ProPDNOME: TStringField
      FieldName = 'PDNOME'
      Origin = 'SG_ASSOC.CADPRO.PDNOME'
      Size = 40
    end
    object Qr_ProPDNOME2: TStringField
      FieldName = 'PDNOME2'
      Origin = 'SG_ASSOC.CADPRO.PDNOME2'
      Size = 40
    end
    object Qr_ProPDMARCA: TStringField
      FieldName = 'PDMARCA'
      Origin = 'SG_ASSOC.CADPRO.PDMARCA'
    end
    object Qr_ProPDNIVEL: TFloatField
      FieldName = 'PDNIVEL'
      Origin = 'SG_ASSOC.CADPRO.PDNIVEL'
    end
    object Qr_ProPDCODFOR: TFloatField
      FieldName = 'PDCODFOR'
      Origin = 'SG_ASSOC.CADPRO.PDCODFOR'
    end
    object Qr_ProPDPRECO1: TFloatField
      FieldName = 'PDPRECO1'
      Origin = 'SG_ASSOC.CADPRO.PDPRECO1'
    end
    object Qr_ProPDPRECO2: TFloatField
      FieldName = 'PDPRECO2'
      Origin = 'SG_ASSOC.CADPRO.PDPRECO2'
    end
    object Qr_ProPDPRECO3: TFloatField
      FieldName = 'PDPRECO3'
      Origin = 'SG_ASSOC.CADPRO.PDPRECO3'
    end
    object Qr_ProPDPRECOA1: TFloatField
      FieldName = 'PDPRECOA1'
      Origin = 'SG_ASSOC.CADPRO.PDPRECOA1'
    end
    object Qr_ProPDPRECOA2: TFloatField
      FieldName = 'PDPRECOA2'
      Origin = 'SG_ASSOC.CADPRO.PDPRECOA2'
    end
    object Qr_ProPDPRECOA3: TFloatField
      FieldName = 'PDPRECOA3'
      Origin = 'SG_ASSOC.CADPRO.PDPRECOA3'
    end
    object Qr_ProPDSIT: TStringField
      FieldName = 'PDSIT'
      Origin = 'SG_ASSOC.CADPRO.PDSIT'
      Size = 3
    end
    object Qr_ProPDDTUATP1: TDateTimeField
      FieldName = 'PDDTUATP1'
      Origin = 'SG_ASSOC.CADPRO.PDDTUATP1'
    end
    object Qr_ProPDUSRALT1: TFloatField
      FieldName = 'PDUSRALT1'
      Origin = 'SG_ASSOC.CADPRO.PDUSRALT1'
    end
    object Qr_ProPDDTUATP2: TDateTimeField
      FieldName = 'PDDTUATP2'
      Origin = 'SG_ASSOC.CADPRO.PDDTUATP2'
    end
    object Qr_ProPDUSRALT2: TFloatField
      FieldName = 'PDUSRALT2'
      Origin = 'SG_ASSOC.CADPRO.PDUSRALT2'
    end
    object Qr_ProPDDTUATP3: TDateTimeField
      FieldName = 'PDDTUATP3'
      Origin = 'SG_ASSOC.CADPRO.PDDTUATP3'
    end
    object Qr_ProPDUSRALT3: TFloatField
      FieldName = 'PDUSRALT3'
      Origin = 'SG_ASSOC.CADPRO.PDUSRALT3'
    end
    object Qr_ProPDDATAUA: TDateTimeField
      FieldName = 'PDDATAUA'
      Origin = 'SG_ASSOC.CADPRO.PDDATAUA'
    end
    object Qr_ProPDUND: TStringField
      FieldName = 'PDUND'
      Origin = 'SG_ASSOC.CADPRO.PDUND'
      Size = 3
    end
    object Qr_ProPDCODGRU: TFloatField
      FieldName = 'PDCODGRU'
      Origin = 'SG_ASSOC.CADPRO.PDCODGRU'
    end
    object Qr_ProPDCODCON: TFloatField
      FieldName = 'PDCODCON'
      Origin = 'SG_ASSOC.CADPRO.PDCODCON'
    end
    object Qr_ProPDCODRAM: TFloatField
      FieldName = 'PDCODRAM'
      Origin = 'SG_ASSOC.CADPRO.PDCODRAM'
    end
    object Qr_ProPDCODTIP: TFloatField
      FieldName = 'PDCODTIP'
      Origin = 'SG_ASSOC.CADPRO.PDCODTIP'
    end
    object Qr_ProPDESTMAX: TFloatField
      FieldName = 'PDESTMAX'
      Origin = 'SG_ASSOC.CADPRO.PDESTMAX'
    end
    object Qr_ProPDESTMIN: TFloatField
      FieldName = 'PDESTMIN'
      Origin = 'SG_ASSOC.CADPRO.PDESTMIN'
    end
    object Qr_ProPDFRACAO: TFloatField
      FieldName = 'PDFRACAO'
      Origin = 'SG_ASSOC.CADPRO.PDFRACAO'
    end
    object Qr_ProPDLISTA: TFloatField
      FieldName = 'PDLISTA'
      Origin = 'SG_ASSOC.CADPRO.PDLISTA'
    end
    object Qr_ProPDPRECOC: TFloatField
      FieldName = 'PDPRECOC'
      Origin = 'SG_ASSOC.CADPRO.PDPRECOC'
    end
    object Qr_ProPDPCOMC: TFloatField
      FieldName = 'PDPCOMC'
      Origin = 'SG_ASSOC.CADPRO.PDPCOMC'
    end
    object Qr_ProPDPCOFAB: TFloatField
      FieldName = 'PDPCOFAB'
      Origin = 'SG_ASSOC.CADPRO.PDPCOFAB'
    end
    object Qr_ProPDSTATUS: TFloatField
      FieldName = 'PDSTATUS'
      Origin = 'SG_ASSOC.CADPRO.PDSTATUS'
    end
    object Qr_ProPDTABICM: TStringField
      FieldName = 'PDTABICM'
      Origin = 'SG_ASSOC.CADPRO.PDTABICM'
      Size = 1
    end
    object Qr_ProPDIPI: TFloatField
      FieldName = 'PDIPI'
      Origin = 'SG_ASSOC.CADPRO.PDIPI'
    end
    object Qr_ProPDREGMS: TStringField
      FieldName = 'PDREGMS'
      Origin = 'SG_ASSOC.CADPRO.PDREGMS'
    end
    object Qr_ProPDCLAS: TStringField
      FieldName = 'PDCLAS'
      Origin = 'SG_ASSOC.CADPRO.PDCLAS'
    end
    object Qr_ProPDSECAO: TStringField
      FieldName = 'PDSECAO'
      Origin = 'SG_ASSOC.CADPRO.PDSECAO'
      Size = 10
    end
    object Qr_ProPDEMBPAD: TFloatField
      FieldName = 'PDEMBPAD'
      Origin = 'SG_ASSOC.CADPRO.PDEMBPAD'
    end
    object Qr_ProPDEMBMUL: TFloatField
      FieldName = 'PDEMBMUL'
      Origin = 'SG_ASSOC.CADPRO.PDEMBMUL'
    end
    object Qr_ProPDCOMIS: TFloatField
      FieldName = 'PDCOMIS'
      Origin = 'SG_ASSOC.CADPRO.PDCOMIS'
    end
    object Qr_ProPDSEMCOM: TFloatField
      FieldName = 'PDSEMCOM'
      Origin = 'SG_ASSOC.CADPRO.PDSEMCOM'
    end
    object Qr_ProPDPRZVAL: TFloatField
      FieldName = 'PDPRZVAL'
      Origin = 'SG_ASSOC.CADPRO.PDPRZVAL'
    end
    object Qr_ProPDUCPR: TFloatField
      FieldName = 'PDUCPR'
      Origin = 'SG_ASSOC.CADPRO.PDUCPR'
    end
    object Qr_ProPDCODUSR: TFloatField
      FieldName = 'PDCODUSR'
      Origin = 'SG_ASSOC.CADPRO.PDCODUSR'
    end
    object Qr_ProPDDTALT: TDateTimeField
      FieldName = 'PDDTALT'
      Origin = 'SG_ASSOC.CADPRO.PDDTALT'
    end
    object Qr_ProPDHRALT: TStringField
      FieldName = 'PDHRALT'
      Origin = 'SG_ASSOC.CADPRO.PDHRALT'
      Size = 10
    end
    object Qr_ProPDPMC: TFloatField
      FieldName = 'PDPMC'
      Origin = 'SG_ASSOC.CADPRO.PDPMC'
    end
    object Qr_ProPDDESC1: TFloatField
      FieldName = 'PDDESC1'
      Origin = 'SG_ASSOC.CADPRO.PDDESC1'
    end
    object Qr_ProPDDESC1A: TFloatField
      FieldName = 'PDDESC1A'
      Origin = 'SG_ASSOC.CADPRO.PDDESC1A'
    end
    object Qr_ProPDDESC2: TFloatField
      FieldName = 'PDDESC2'
      Origin = 'SG_ASSOC.CADPRO.PDDESC2'
    end
    object Qr_ProPDDESC3: TFloatField
      FieldName = 'PDDESC3'
      Origin = 'SG_ASSOC.CADPRO.PDDESC3'
    end
    object Qr_ProPDQTDP: TFloatField
      FieldName = 'PDQTDP'
      Origin = 'SG_ASSOC.CADPRO.PDQTDP'
    end
    object Qr_ProPDPRAZO: TFloatField
      FieldName = 'PDPRAZO'
      Origin = 'SG_ASSOC.CADPRO.PDPRAZO'
    end
    object Qr_ProPDDESFIN: TFloatField
      FieldName = 'PDDESFIN'
      Origin = 'SG_ASSOC.CADPRO.PDDESFIN'
    end
    object Qr_ProPDCURVA: TStringField
      FieldName = 'PDCURVA'
      Origin = 'SG_ASSOC.CADPRO.PDCURVA'
      Size = 1
    end
    object Qr_ProPDSALDO: TFloatField
      FieldName = 'PDSALDO'
      Origin = 'SG_ASSOC.CADPRO.PDSALDO'
    end
    object Qr_ProPDEMBPAD2: TStringField
      FieldName = 'PDEMBPAD2'
      Origin = 'SG_ASSOC.CADPRO.PDEMBPAD2'
      Size = 10
    end
    object Qr_ProPDCODPROC: TFloatField
      FieldName = 'PDCODPROC'
      Origin = 'SG_ASSOC.CADPRO.PDCODPROC'
    end
    object Qr_ProPDDTULTSAI: TDateTimeField
      FieldName = 'PDDTULTSAI'
      Origin = 'SG_ASSOC.CADPRO.PDDTULTSAI'
    end
    object Qr_ProPDDTULTENT: TDateTimeField
      FieldName = 'PDDTULTENT'
      Origin = 'SG_ASSOC.CADPRO.PDDTULTENT'
    end
    object Qr_ProPDVDAMAXM: TFloatField
      FieldName = 'PDVDAMAXM'
      Origin = 'SG_ASSOC.CADPRO.PDVDAMAXM'
    end
    object Qr_ProPDPESOB: TFloatField
      FieldName = 'PDPESOB'
      Origin = 'SG_ASSOC.CADPRO.PDPESOB'
    end
    object Qr_ProPDPESOL: TFloatField
      FieldName = 'PDPESOL'
      Origin = 'SG_ASSOC.CADPRO.PDPESOL'
    end
    object Qr_ProPDDATCAD: TDateTimeField
      FieldName = 'PDDATCAD'
      Origin = 'SG_ASSOC.CADPRO.PDDATCAD'
    end
    object Qr_ProPDPROALT: TFloatField
      FieldName = 'PDPROALT'
      Origin = 'SG_ASSOC.CADPRO.PDPROALT'
    end
    object Qr_ProPDNOMFOR: TStringField
      FieldName = 'PDNOMFOR'
      Origin = 'SG_ASSOC.CADPRO.PDNOMFOR'
      Size = 40
    end
    object Qr_ProPDNOMPROC: TStringField
      FieldName = 'PDNOMPROC'
      Origin = 'SG_ASSOC.CADPRO.PDNOMPROC'
      Size = 40
    end
    object Qr_ProPDNOMGRU: TStringField
      FieldName = 'PDNOMGRU'
      Origin = 'SG_ASSOC.CADPRO.PDNOMGRU'
      Size = 40
    end
    object Qr_ProPDNOMCON: TStringField
      FieldName = 'PDNOMCON'
      Origin = 'SG_ASSOC.CADPRO.PDNOMCON'
      Size = 40
    end
    object Qr_ProPDNOMRAM: TStringField
      FieldName = 'PDNOMRAM'
      Origin = 'SG_ASSOC.CADPRO.PDNOMRAM'
      Size = 40
    end
    object Qr_ProPDNOMTIP: TStringField
      FieldName = 'PDNOMTIP'
      Origin = 'SG_ASSOC.CADPRO.PDNOMTIP'
      Size = 40
    end
    object Qr_ProPDNOMPROALT: TStringField
      FieldName = 'PDNOMPROALT'
      Origin = 'SG_ASSOC.CADPRO.PDNOMPROALT'
      Size = 40
    end
    object Qr_ProPDALTO: TFloatField
      FieldName = 'PDALTO'
      Origin = 'SG_ASSOC.CADPRO.PDALTO'
    end
    object Qr_ProPDREST: TFloatField
      FieldName = 'PDREST'
      Origin = 'SG_ASSOC.CADPRO.PDREST'
    end
    object Qr_ProPDBAIXO: TFloatField
      FieldName = 'PDBAIXO'
      Origin = 'SG_ASSOC.CADPRO.PDBAIXO'
    end
    object Qr_ProPDSTATUS02: TFloatField
      FieldName = 'PDSTATUS02'
      Origin = 'SG_ASSOC.CADPRO.PDSTATUS02'
    end
    object Qr_ProPDSALDOR: TFloatField
      FieldName = 'PDSALDOR'
      Origin = 'SG_ASSOC.CADPRO.PDSALDOR'
    end
    object Qr_ProPDBAIXOR: TFloatField
      FieldName = 'PDBAIXOR'
      Origin = 'SG_ASSOC.CADPRO.PDBAIXOR'
    end
    object Qr_ProPDALTOR: TFloatField
      FieldName = 'PDALTOR'
      Origin = 'SG_ASSOC.CADPRO.PDALTOR'
    end
    object Qr_ProPDSALDOC: TFloatField
      FieldName = 'PDSALDOC'
      Origin = 'SG_ASSOC.CADPRO.PDSALDOC'
    end
    object Qr_ProPDBAIXOC: TFloatField
      FieldName = 'PDBAIXOC'
      Origin = 'SG_ASSOC.CADPRO.PDBAIXOC'
    end
    object Qr_ProPDALTOC: TFloatField
      FieldName = 'PDALTOC'
      Origin = 'SG_ASSOC.CADPRO.PDALTOC'
    end
    object Qr_ProPDCODNCM: TStringField
      FieldName = 'PDCODNCM'
      Origin = 'SG_ASSOC.CADPRO.PDCODNCM'
      Size = 10
    end
    object Qr_ProPDAPRES: TStringField
      FieldName = 'PDAPRES'
      Origin = 'SG_ASSOC.CADPRO.PDAPRES'
      Size = 30
    end
    object Qr_ProPDCODFAB: TStringField
      FieldName = 'PDCODFAB'
      Origin = 'SG_ASSOC.CADPRO.PDCODFAB'
      Size = 30
    end
    object Qr_ProPDCX_PVDA: TFloatField
      FieldName = 'PDCX_PVDA'
      Origin = 'SG_ASSOC.CADPRO.PDCX_PVDA'
    end
    object Qr_ProPDCX_PFAB: TFloatField
      FieldName = 'PDCX_PFAB'
      Origin = 'SG_ASSOC.CADPRO.PDCX_PFAB'
    end
    object Qr_ProPDCX_PMAX: TFloatField
      FieldName = 'PDCX_PMAX'
      Origin = 'SG_ASSOC.CADPRO.PDCX_PMAX'
    end
    object Qr_ProPDQTDM3: TFloatField
      FieldName = 'PDQTDM3'
      Origin = 'SG_ASSOC.CADPRO.PDQTDM3'
    end
    object Qr_ProPDPMC02: TFloatField
      FieldName = 'PDPMC02'
      Origin = 'SG_ASSOC.CADPRO.PDPMC02'
    end
    object Qr_ProPDPMC03: TFloatField
      FieldName = 'PDPMC03'
      Origin = 'SG_ASSOC.CADPRO.PDPMC03'
    end
    object Qr_ProPDCUSFAB: TFloatField
      FieldName = 'PDCUSFAB'
      Origin = 'SG_ASSOC.CADPRO.PDCUSFAB'
    end
    object Qr_ProPDCUSENV: TFloatField
      FieldName = 'PDCUSENV'
      Origin = 'SG_ASSOC.CADPRO.PDCUSENV'
    end
    object Qr_ProPDUCODFOR: TFloatField
      FieldName = 'PDUCODFOR'
      Origin = 'SG_ASSOC.CADPRO.PDUCODFOR'
    end
    object Qr_ProPDUNOMFOR: TStringField
      FieldName = 'PDUNOMFOR'
      Origin = 'SG_ASSOC.CADPRO.PDUNOMFOR'
      Size = 40
    end
    object Qr_ProPDCUSFIN: TFloatField
      FieldName = 'PDCUSFIN'
      Origin = 'SG_ASSOC.CADPRO.PDCUSFIN'
    end
    object Qr_ProPDPRAT: TStringField
      FieldName = 'PDPRAT'
      Origin = 'SG_ASSOC.CADPRO.PDPRAT'
      Size = 10
    end
    object Qr_ProPDLADO: TStringField
      FieldName = 'PDLADO'
      Origin = 'SG_ASSOC.CADPRO.PDLADO'
      Size = 10
    end
    object Qr_ProPDRUA: TStringField
      FieldName = 'PDRUA'
      Origin = 'SG_ASSOC.CADPRO.PDRUA'
      Size = 10
    end
    object Qr_ProPDUNDVDA: TFloatField
      FieldName = 'PDUNDVDA'
      Origin = 'SG_ASSOC.CADPRO.PDUNDVDA'
    end
    object Qr_ProPDCOMIS_EXTRA: TFloatField
      FieldName = 'PDCOMIS_EXTRA'
      Origin = 'SG_ASSOC.CADPRO.PDCOMIS_EXTRA'
    end
    object Qr_ProPDQTDGRML: TFloatField
      FieldName = 'PDQTDGRML'
      Origin = 'SG_ASSOC.CADPRO.PDQTDGRML'
    end
    object Qr_ProPDSALDOT: TFloatField
      FieldName = 'PDSALDOT'
      Origin = 'SG_ASSOC.CADPRO.PDSALDOT'
    end
    object Qr_ProPDALTOT: TFloatField
      FieldName = 'PDALTOT'
      Origin = 'SG_ASSOC.CADPRO.PDALTOT'
    end
    object Qr_ProPDBAIXOT: TFloatField
      FieldName = 'PDBAIXOT'
      Origin = 'SG_ASSOC.CADPRO.PDBAIXOT'
    end
    object Qr_ProPDICMSCRED: TFloatField
      FieldName = 'PDICMSCRED'
      Origin = 'SG_ASSOC.CADPRO.PDICMSCRED'
    end
    object Qr_ProPDICMSDEB: TFloatField
      FieldName = 'PDICMSDEB'
      Origin = 'SG_ASSOC.CADPRO.PDICMSDEB'
    end
    object Qr_ProPDVLRINC: TFloatField
      FieldName = 'PDVLRINC'
      Origin = 'SG_ASSOC.CADPRO.PDVLRINC'
    end
    object Qr_ProPDAPLIC: TStringField
      FieldName = 'PDAPLIC'
      Origin = 'SG_ASSOC.CADPRO.PDAPLIC'
      Size = 100
    end
    object Qr_ProPDBLDESCAV: TFloatField
      FieldName = 'PDBLDESCAV'
      Origin = 'SG_ASSOC.CADPRO.PDBLDESCAV'
    end
    object Qr_ProPDRESTFOR: TFloatField
      FieldName = 'PDRESTFOR'
      Origin = 'SG_ASSOC.CADPRO.PDRESTFOR'
    end
    object Qr_ProPDRESTCON: TFloatField
      FieldName = 'PDRESTCON'
      Origin = 'SG_ASSOC.CADPRO.PDRESTCON'
    end
    object Qr_ProPDSITCF: TStringField
      FieldName = 'PDSITCF'
      Origin = 'SG_ASSOC.CADPRO.PDSITCF'
      Size = 3
    end
    object Qr_ProPDCODBAR_EMBPAD: TStringField
      FieldName = 'PDCODBAR_EMBPAD'
      Origin = 'SG_ASSOC.CADPRO.PDCODBAR_EMBPAD'
      Size = 50
    end
    object Qr_ProPDUSRALT: TFloatField
      FieldName = 'PDUSRALT'
      Origin = 'SG_ASSOC.CADPRO.PDUSRALT'
    end
    object Qr_ProPDUSRINC: TFloatField
      FieldName = 'PDUSRINC'
      Origin = 'SG_ASSOC.CADPRO.PDUSRINC'
    end
    object Qr_ProPDENTPEN: TFloatField
      FieldName = 'PDENTPEN'
      Origin = 'SG_ASSOC.CADPRO.PDENTPEN'
    end
    object Qr_ProPDSALDO_PRAT: TFloatField
      FieldName = 'PDSALDO_PRAT'
      Origin = 'SG_ASSOC.CADPRO.PDSALDO_PRAT'
    end
    object Qr_ProPDSALDO_DEP: TFloatField
      FieldName = 'PDSALDO_DEP'
      Origin = 'SG_ASSOC.CADPRO.PDSALDO_DEP'
    end
  end
end
