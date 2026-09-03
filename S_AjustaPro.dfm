object Frm_AjustaPro: TFrm_AjustaPro
  Left = 61
  Top = 111
  Width = 687
  Height = 375
  Caption = 'Ajustar descri'#231#227'o dos produtos'
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
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 296
    Width = 671
    Height = 41
    Align = alBottom
    TabOrder = 0
    object BitBtn1: TBitBtn
      Left = 256
      Top = 6
      Width = 146
      Height = 32
      Caption = '&Sair do Programa'
      TabOrder = 0
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
      NumGlyphs = 2
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 0
    Width = 671
    Height = 296
    Align = alClient
    DataSource = Src_Pro
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Courier New'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnExit = DBGrid1Exit
    Columns = <
      item
        Expanded = False
        FieldName = 'PDCODPRO'
        Width = 106
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PDNOME'
        Width = 296
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PDMARCA'
        Width = 241
        Visible = True
      end>
  end
  object Tb_Pro: TQuery
    CachedUpdates = True
    AfterPost = C
    AfterDelete = C
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select * from CADPRO')
    UpdateObject = U_Pro
    Left = 240
    Top = 112
    object Tb_ProPDCODEMP: TFloatField
      FieldName = 'PDCODEMP'
      Origin = 'SG_ASSOC.CADPRO.PDCODEMP'
    end
    object Tb_ProPDCODPRO: TFloatField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'PDCODPRO'
      Origin = 'SG_ASSOC.CADPRO.PDCODPRO'
    end
    object Tb_ProPDCODBAR: TFloatField
      FieldName = 'PDCODBAR'
      Origin = 'SG_ASSOC.CADPRO.PDCODBAR'
    end
    object Tb_ProPDNOME: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'PDNOME'
      Origin = 'SG_ASSOC.CADPRO.PDNOME'
      Size = 40
    end
    object Tb_ProPDNOME2: TStringField
      FieldName = 'PDNOME2'
      Origin = 'SG_ASSOC.CADPRO.PDNOME2'
      Size = 40
    end
    object Tb_ProPDMARCA: TStringField
      DisplayLabel = 'Marca'
      FieldName = 'PDMARCA'
      Origin = 'SG_ASSOC.CADPRO.PDMARCA'
    end
    object Tb_ProPDNIVEL: TFloatField
      FieldName = 'PDNIVEL'
      Origin = 'SG_ASSOC.CADPRO.PDNIVEL'
    end
    object Tb_ProPDCODFOR: TFloatField
      FieldName = 'PDCODFOR'
      Origin = 'SG_ASSOC.CADPRO.PDCODFOR'
    end
    object Tb_ProPDPRECO1: TFloatField
      FieldName = 'PDPRECO1'
      Origin = 'SG_ASSOC.CADPRO.PDPRECO1'
    end
    object Tb_ProPDPRECO2: TFloatField
      FieldName = 'PDPRECO2'
      Origin = 'SG_ASSOC.CADPRO.PDPRECO2'
    end
    object Tb_ProPDPRECO3: TFloatField
      FieldName = 'PDPRECO3'
      Origin = 'SG_ASSOC.CADPRO.PDPRECO3'
    end
    object Tb_ProPDPMC: TFloatField
      FieldName = 'PDPMC'
      Origin = 'SG_ASSOC.CADPRO.PDPMC'
    end
    object Tb_ProPDPRECOA1: TFloatField
      FieldName = 'PDPRECOA1'
      Origin = 'SG_ASSOC.CADPRO.PDPRECOA1'
    end
    object Tb_ProPDPRECOA2: TFloatField
      FieldName = 'PDPRECOA2'
      Origin = 'SG_ASSOC.CADPRO.PDPRECOA2'
    end
    object Tb_ProPDPRECOA3: TFloatField
      FieldName = 'PDPRECOA3'
      Origin = 'SG_ASSOC.CADPRO.PDPRECOA3'
    end
    object Tb_ProPDDESC1: TFloatField
      FieldName = 'PDDESC1'
      Origin = 'SG_ASSOC.CADPRO.PDDESC1'
    end
    object Tb_ProPDDESC1A: TFloatField
      FieldName = 'PDDESC1A'
      Origin = 'SG_ASSOC.CADPRO.PDDESC1A'
    end
    object Tb_ProPDDESC2: TFloatField
      FieldName = 'PDDESC2'
      Origin = 'SG_ASSOC.CADPRO.PDDESC2'
    end
    object Tb_ProPDDESC3: TFloatField
      FieldName = 'PDDESC3'
      Origin = 'SG_ASSOC.CADPRO.PDDESC3'
    end
    object Tb_ProPDQTDP: TFloatField
      FieldName = 'PDQTDP'
      Origin = 'SG_ASSOC.CADPRO.PDQTDP'
    end
    object Tb_ProPDPRAZO: TFloatField
      FieldName = 'PDPRAZO'
      Origin = 'SG_ASSOC.CADPRO.PDPRAZO'
    end
    object Tb_ProPDDESFIN: TFloatField
      FieldName = 'PDDESFIN'
      Origin = 'SG_ASSOC.CADPRO.PDDESFIN'
    end
    object Tb_ProPDSIT: TStringField
      FieldName = 'PDSIT'
      Origin = 'SG_ASSOC.CADPRO.PDSIT'
      Size = 3
    end
    object Tb_ProPDDTUATP1: TDateTimeField
      FieldName = 'PDDTUATP1'
      Origin = 'SG_ASSOC.CADPRO.PDDTUATP1'
    end
    object Tb_ProPDUSRALT1: TFloatField
      FieldName = 'PDUSRALT1'
      Origin = 'SG_ASSOC.CADPRO.PDUSRALT1'
    end
    object Tb_ProPDDTUATP2: TDateTimeField
      FieldName = 'PDDTUATP2'
      Origin = 'SG_ASSOC.CADPRO.PDDTUATP2'
    end
    object Tb_ProPDUSRALT2: TFloatField
      FieldName = 'PDUSRALT2'
      Origin = 'SG_ASSOC.CADPRO.PDUSRALT2'
    end
    object Tb_ProPDDTUATP3: TDateTimeField
      FieldName = 'PDDTUATP3'
      Origin = 'SG_ASSOC.CADPRO.PDDTUATP3'
    end
    object Tb_ProPDUSRALT3: TFloatField
      FieldName = 'PDUSRALT3'
      Origin = 'SG_ASSOC.CADPRO.PDUSRALT3'
    end
    object Tb_ProPDDATAUA: TDateTimeField
      FieldName = 'PDDATAUA'
      Origin = 'SG_ASSOC.CADPRO.PDDATAUA'
    end
    object Tb_ProPDUND: TStringField
      FieldName = 'PDUND'
      Origin = 'SG_ASSOC.CADPRO.PDUND'
      Size = 3
    end
    object Tb_ProPDCURVA: TStringField
      FieldName = 'PDCURVA'
      Origin = 'SG_ASSOC.CADPRO.PDCURVA'
      Size = 1
    end
    object Tb_ProPDCODGRU: TFloatField
      FieldName = 'PDCODGRU'
      Origin = 'SG_ASSOC.CADPRO.PDCODGRU'
    end
    object Tb_ProPDCODCON: TFloatField
      FieldName = 'PDCODCON'
      Origin = 'SG_ASSOC.CADPRO.PDCODCON'
    end
    object Tb_ProPDCODRAM: TFloatField
      FieldName = 'PDCODRAM'
      Origin = 'SG_ASSOC.CADPRO.PDCODRAM'
    end
    object Tb_ProPDCODTIP: TFloatField
      FieldName = 'PDCODTIP'
      Origin = 'SG_ASSOC.CADPRO.PDCODTIP'
    end
    object Tb_ProPDESTMAX: TFloatField
      FieldName = 'PDESTMAX'
      Origin = 'SG_ASSOC.CADPRO.PDESTMAX'
    end
    object Tb_ProPDESTMIN: TFloatField
      FieldName = 'PDESTMIN'
      Origin = 'SG_ASSOC.CADPRO.PDESTMIN'
    end
    object Tb_ProPDFRACAO: TFloatField
      FieldName = 'PDFRACAO'
      Origin = 'SG_ASSOC.CADPRO.PDFRACAO'
    end
    object Tb_ProPDLISTA: TFloatField
      FieldName = 'PDLISTA'
      Origin = 'SG_ASSOC.CADPRO.PDLISTA'
    end
    object Tb_ProPDPRECOC: TFloatField
      FieldName = 'PDPRECOC'
      Origin = 'SG_ASSOC.CADPRO.PDPRECOC'
    end
    object Tb_ProPDPCOMC: TFloatField
      FieldName = 'PDPCOMC'
      Origin = 'SG_ASSOC.CADPRO.PDPCOMC'
    end
    object Tb_ProPDPCOFAB: TFloatField
      FieldName = 'PDPCOFAB'
      Origin = 'SG_ASSOC.CADPRO.PDPCOFAB'
    end
    object Tb_ProPDSTATUS: TFloatField
      FieldName = 'PDSTATUS'
      Origin = 'SG_ASSOC.CADPRO.PDSTATUS'
    end
    object Tb_ProPDTABICM: TStringField
      FieldName = 'PDTABICM'
      Origin = 'SG_ASSOC.CADPRO.PDTABICM'
      Size = 1
    end
    object Tb_ProPDIPI: TFloatField
      FieldName = 'PDIPI'
      Origin = 'SG_ASSOC.CADPRO.PDIPI'
    end
    object Tb_ProPDREGMS: TStringField
      FieldName = 'PDREGMS'
      Origin = 'SG_ASSOC.CADPRO.PDREGMS'
    end
    object Tb_ProPDCLAS: TStringField
      FieldName = 'PDCLAS'
      Origin = 'SG_ASSOC.CADPRO.PDCLAS'
    end
    object Tb_ProPDSECAO: TStringField
      FieldName = 'PDSECAO'
      Origin = 'SG_ASSOC.CADPRO.PDSECAO'
      Size = 10
    end
    object Tb_ProPDEMBPAD: TFloatField
      FieldName = 'PDEMBPAD'
      Origin = 'SG_ASSOC.CADPRO.PDEMBPAD'
    end
    object Tb_ProPDEMBMUL: TFloatField
      FieldName = 'PDEMBMUL'
      Origin = 'SG_ASSOC.CADPRO.PDEMBMUL'
    end
    object Tb_ProPDCOMIS: TFloatField
      FieldName = 'PDCOMIS'
      Origin = 'SG_ASSOC.CADPRO.PDCOMIS'
    end
    object Tb_ProPDSEMCOM: TFloatField
      FieldName = 'PDSEMCOM'
      Origin = 'SG_ASSOC.CADPRO.PDSEMCOM'
    end
    object Tb_ProPDPRZVAL: TFloatField
      FieldName = 'PDPRZVAL'
      Origin = 'SG_ASSOC.CADPRO.PDPRZVAL'
    end
    object Tb_ProPDUCPR: TFloatField
      FieldName = 'PDUCPR'
      Origin = 'SG_ASSOC.CADPRO.PDUCPR'
    end
    object Tb_ProPDCODUSR: TFloatField
      FieldName = 'PDCODUSR'
      Origin = 'SG_ASSOC.CADPRO.PDCODUSR'
    end
    object Tb_ProPDSALDO: TFloatField
      FieldName = 'PDSALDO'
      Origin = 'SG_ASSOC.CADPRO.PDSALDO'
    end
    object Tb_ProPDDTALT: TDateTimeField
      FieldName = 'PDDTALT'
      Origin = 'SG_ASSOC.CADPRO.PDDTALT'
    end
    object Tb_ProPDHRALT: TStringField
      FieldName = 'PDHRALT'
      Origin = 'SG_ASSOC.CADPRO.PDHRALT'
      Size = 10
    end
    object Tb_ProPDEMBPAD2: TStringField
      FieldName = 'PDEMBPAD2'
      Origin = 'SG_ASSOC.CADPRO.PDEMBPAD2'
      Size = 12
    end
    object Tb_ProPDCODPROC: TFloatField
      FieldName = 'PDCODPROC'
      Origin = 'SG_ASSOC.CADPRO.PDCODPROC'
    end
    object Tb_ProPDPROALT: TFloatField
      FieldName = 'PDPROALT'
      Origin = 'SG_ASSOC.CADPRO.PDPROALT'
    end
    object Tb_ProPDDTULTSAI: TDateTimeField
      FieldName = 'PDDTULTSAI'
      Origin = 'SG_ASSOC.CADPRO.PDDTULTSAI'
    end
    object Tb_ProPDDTULTENT: TDateTimeField
      FieldName = 'PDDTULTENT'
      Origin = 'SG_ASSOC.CADPRO.PDDTULTENT'
    end
    object Tb_ProPDVDAMAXM: TFloatField
      FieldName = 'PDVDAMAXM'
      Origin = 'SG_ASSOC.CADPRO.PDVDAMAXM'
    end
    object Tb_ProPDREST: TFloatField
      FieldName = 'PDREST'
      Origin = 'SG_ASSOC.CADPRO.PDREST'
    end
    object Tb_ProPDPESOB: TFloatField
      FieldName = 'PDPESOB'
      Origin = 'SG_ASSOC.CADPRO.PDPESOB'
    end
    object Tb_ProPDPESOL: TFloatField
      FieldName = 'PDPESOL'
      Origin = 'SG_ASSOC.CADPRO.PDPESOL'
    end
    object Tb_ProPDBAIXO: TFloatField
      FieldName = 'PDBAIXO'
      Origin = 'SG_ASSOC.CADPRO.PDBAIXO'
    end
    object Tb_ProPDALTO: TFloatField
      FieldName = 'PDALTO'
      Origin = 'SG_ASSOC.CADPRO.PDALTO'
    end
    object Tb_ProPDDATCAD: TDateTimeField
      FieldName = 'PDDATCAD'
      Origin = 'SG_ASSOC.CADPRO.PDDATCAD'
    end
    object Tb_ProPDNOMFOR: TStringField
      FieldName = 'PDNOMFOR'
      Origin = 'SG_ASSOC.CADPRO.PDNOMFOR'
      Size = 40
    end
    object Tb_ProPDNOMPROC: TStringField
      FieldName = 'PDNOMPROC'
      Origin = 'SG_ASSOC.CADPRO.PDNOMPROC'
      Size = 40
    end
    object Tb_ProPDNOMGRU: TStringField
      FieldName = 'PDNOMGRU'
      Origin = 'SG_ASSOC.CADPRO.PDNOMGRU'
      Size = 40
    end
    object Tb_ProPDNOMCON: TStringField
      FieldName = 'PDNOMCON'
      Origin = 'SG_ASSOC.CADPRO.PDNOMCON'
      Size = 40
    end
    object Tb_ProPDNOMRAM: TStringField
      FieldName = 'PDNOMRAM'
      Origin = 'SG_ASSOC.CADPRO.PDNOMRAM'
      Size = 40
    end
    object Tb_ProPDNOMTIP: TStringField
      FieldName = 'PDNOMTIP'
      Origin = 'SG_ASSOC.CADPRO.PDNOMTIP'
      Size = 40
    end
    object Tb_ProPDNOMPROALT: TStringField
      FieldName = 'PDNOMPROALT'
      Origin = 'SG_ASSOC.CADPRO.PDNOMPROALT'
      Size = 40
    end
    object Tb_ProPDSTATUS02: TFloatField
      FieldName = 'PDSTATUS02'
      Origin = 'SG_ASSOC.CADPRO.PDSTATUS02'
    end
  end
  object U_Pro: TUpdateSQL
    ModifySQL.Strings = (
      'update CADPRO'
      'set'
      '  PDCODEMP = :PDCODEMP,'
      '  PDCODPRO = :PDCODPRO,'
      '  PDCODBAR = :PDCODBAR,'
      '  PDNOME = :PDNOME,'
      '  PDNOME2 = :PDNOME2,'
      '  PDMARCA = :PDMARCA,'
      '  PDNIVEL = :PDNIVEL,'
      '  PDCODFOR = :PDCODFOR,'
      '  PDPRECO1 = :PDPRECO1,'
      '  PDPRECO2 = :PDPRECO2,'
      '  PDPRECO3 = :PDPRECO3,'
      '  PDPMC = :PDPMC,'
      '  PDPRECOA1 = :PDPRECOA1,'
      '  PDPRECOA2 = :PDPRECOA2,'
      '  PDPRECOA3 = :PDPRECOA3,'
      '  PDDESC1 = :PDDESC1,'
      '  PDDESC1A = :PDDESC1A,'
      '  PDDESC2 = :PDDESC2,'
      '  PDDESC3 = :PDDESC3,'
      '  PDQTDP = :PDQTDP,'
      '  PDPRAZO = :PDPRAZO,'
      '  PDDESFIN = :PDDESFIN,'
      '  PDSIT = :PDSIT,'
      '  PDDTUATP1 = :PDDTUATP1,'
      '  PDUSRALT1 = :PDUSRALT1,'
      '  PDDTUATP2 = :PDDTUATP2,'
      '  PDUSRALT2 = :PDUSRALT2,'
      '  PDDTUATP3 = :PDDTUATP3,'
      '  PDUSRALT3 = :PDUSRALT3,'
      '  PDDATAUA = :PDDATAUA,'
      '  PDUND = :PDUND,'
      '  PDCURVA = :PDCURVA,'
      '  PDCODGRU = :PDCODGRU,'
      '  PDCODCON = :PDCODCON,'
      '  PDCODRAM = :PDCODRAM,'
      '  PDCODTIP = :PDCODTIP,'
      '  PDESTMAX = :PDESTMAX,'
      '  PDESTMIN = :PDESTMIN,'
      '  PDFRACAO = :PDFRACAO,'
      '  PDLISTA = :PDLISTA,'
      '  PDPRECOC = :PDPRECOC,'
      '  PDPCOMC = :PDPCOMC,'
      '  PDPCOFAB = :PDPCOFAB,'
      '  PDSTATUS = :PDSTATUS,'
      '  PDTABICM = :PDTABICM,'
      '  PDIPI = :PDIPI,'
      '  PDREGMS = :PDREGMS,'
      '  PDCLAS = :PDCLAS,'
      '  PDSECAO = :PDSECAO,'
      '  PDEMBPAD = :PDEMBPAD,'
      '  PDEMBMUL = :PDEMBMUL,'
      '  PDCOMIS = :PDCOMIS,'
      '  PDSEMCOM = :PDSEMCOM,'
      '  PDPRZVAL = :PDPRZVAL,'
      '  PDUCPR = :PDUCPR,'
      '  PDCODUSR = :PDCODUSR,'
      '  PDSALDO = :PDSALDO,'
      '  PDDTALT = :PDDTALT,'
      '  PDHRALT = :PDHRALT,'
      '  PDEMBPAD2 = :PDEMBPAD2,'
      '  PDCODPROC = :PDCODPROC,'
      '  PDPROALT = :PDPROALT,'
      '  PDDTULTSAI = :PDDTULTSAI,'
      '  PDDTULTENT = :PDDTULTENT,'
      '  PDVDAMAXM = :PDVDAMAXM,'
      '  PDREST = :PDREST,'
      '  PDPESOB = :PDPESOB,'
      '  PDPESOL = :PDPESOL,'
      '  PDBAIXO = :PDBAIXO,'
      '  PDALTO = :PDALTO,'
      '  PDDATCAD = :PDDATCAD,'
      '  PDNOMFOR = :PDNOMFOR,'
      '  PDNOMPROC = :PDNOMPROC,'
      '  PDNOMGRU = :PDNOMGRU,'
      '  PDNOMCON = :PDNOMCON,'
      '  PDNOMRAM = :PDNOMRAM,'
      '  PDNOMTIP = :PDNOMTIP,'
      '  PDNOMPROALT = :PDNOMPROALT,'
      '  PDSTATUS02 = :PDSTATUS02'
      'where'
      '  PDCODEMP = :OLD_PDCODEMP and'
      '  PDCODPRO = :OLD_PDCODPRO and'
      '  PDNOME = :OLD_PDNOME')
    InsertSQL.Strings = (
      'insert into CADPRO'
      '  (PDCODEMP, PDCODPRO, PDCODBAR, PDNOME, PDNOME2, PDMARCA, '
      'PDNIVEL, PDCODFOR, '
      '   PDPRECO1, PDPRECO2, PDPRECO3, PDPMC, PDPRECOA1, PDPRECOA2, '
      'PDPRECOA3, '
      
        '   PDDESC1, PDDESC1A, PDDESC2, PDDESC3, PDQTDP, PDPRAZO, PDDESFI' +
        'N, '
      'PDSIT, '
      '   PDDTUATP1, PDUSRALT1, PDDTUATP2, PDUSRALT2, PDDTUATP3, '
      'PDUSRALT3, PDDATAUA, '
      '   PDUND, PDCURVA, PDCODGRU, PDCODCON, PDCODRAM, PDCODTIP, '
      'PDESTMAX, PDESTMIN, '
      '   PDFRACAO, PDLISTA, PDPRECOC, PDPCOMC, PDPCOFAB, PDSTATUS, '
      'PDTABICM, '
      
        '   PDIPI, PDREGMS, PDCLAS, PDSECAO, PDEMBPAD, PDEMBMUL, PDCOMIS,' +
        ' '
      'PDSEMCOM, '
      '   PDPRZVAL, PDUCPR, PDCODUSR, PDSALDO, PDDTALT, PDHRALT, '
      'PDEMBPAD2, PDCODPROC, '
      
        '   PDPROALT, PDDTULTSAI, PDDTULTENT, PDVDAMAXM, PDREST, PDPESOB,' +
        ' '
      'PDPESOL, '
      '   PDBAIXO, PDALTO, PDDATCAD, PDNOMFOR, PDNOMPROC, PDNOMGRU, '
      'PDNOMCON, '
      '   PDNOMRAM, PDNOMTIP, PDNOMPROALT, PDSTATUS02)'
      'values'
      
        '  (:PDCODEMP, :PDCODPRO, :PDCODBAR, :PDNOME, :PDNOME2, :PDMARCA,' +
        ' '
      ':PDNIVEL, '
      
        '   :PDCODFOR, :PDPRECO1, :PDPRECO2, :PDPRECO3, :PDPMC, :PDPRECOA' +
        '1, '
      ':PDPRECOA2, '
      
        '   :PDPRECOA3, :PDDESC1, :PDDESC1A, :PDDESC2, :PDDESC3, :PDQTDP,' +
        ' '
      ':PDPRAZO, '
      
        '   :PDDESFIN, :PDSIT, :PDDTUATP1, :PDUSRALT1, :PDDTUATP2, :PDUSR' +
        'ALT2, '
      ':PDDTUATP3, '
      
        '   :PDUSRALT3, :PDDATAUA, :PDUND, :PDCURVA, :PDCODGRU, :PDCODCON' +
        ', '
      ':PDCODRAM, '
      
        '   :PDCODTIP, :PDESTMAX, :PDESTMIN, :PDFRACAO, :PDLISTA, :PDPREC' +
        'OC, '
      ':PDPCOMC, '
      '   :PDPCOFAB, :PDSTATUS, :PDTABICM, :PDIPI, :PDREGMS, :PDCLAS, '
      ':PDSECAO, '
      
        '   :PDEMBPAD, :PDEMBMUL, :PDCOMIS, :PDSEMCOM, :PDPRZVAL, :PDUCPR' +
        ', '
      ':PDCODUSR, '
      
        '   :PDSALDO, :PDDTALT, :PDHRALT, :PDEMBPAD2, :PDCODPROC, :PDPROA' +
        'LT, '
      ':PDDTULTSAI, '
      
        '   :PDDTULTENT, :PDVDAMAXM, :PDREST, :PDPESOB, :PDPESOL, :PDBAIX' +
        'O, '
      ':PDALTO, '
      '   :PDDATCAD, :PDNOMFOR, :PDNOMPROC, :PDNOMGRU, :PDNOMCON, '
      ':PDNOMRAM, :PDNOMTIP, '
      '   :PDNOMPROALT, :PDSTATUS02)')
    DeleteSQL.Strings = (
      'delete from CADPRO'
      'where'
      '  PDCODEMP = :OLD_PDCODEMP and'
      '  PDCODPRO = :OLD_PDCODPRO and'
      '  PDNOME = :OLD_PDNOME')
    Left = 272
    Top = 115
  end
  object Src_Pro: TDataSource
    DataSet = Tb_Pro
    Left = 312
    Top = 112
  end
end
