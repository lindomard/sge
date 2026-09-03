object Frm_Per2: TFrm_Per2
  Left = 336
  Top = 180
  Width = 367
  Height = 375
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Emiss'#228'o de Relat'#243'rios'
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
    Top = 0
    Width = 351
    Height = 218
    Align = alClient
    TabOrder = 0
    object DBGrid1: TDBGrid
      Left = 1
      Top = 1
      Width = 349
      Height = 216
      Align = alClient
      DataSource = Src_Rel
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnDblClick = DBGrid1DblClick
      Columns = <
        item
          Expanded = False
          FieldName = 'TCNOME'
          Title.Caption = 'Nome do Relat'#243'rio'
          Width = 332
          Visible = True
        end>
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 296
    Width = 351
    Height = 41
    Align = alBottom
    TabOrder = 2
    object BitBtn1: TBitBtn
      Left = 0
      Top = 0
      Width = 110
      Height = 41
      Caption = 'S&elecionar'
      TabOrder = 0
      OnClick = BitBtn1Click
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
    object BitBtn2: TBitBtn
      Left = 247
      Top = 0
      Width = 110
      Height = 41
      Caption = '&Sair'
      TabOrder = 1
      OnClick = BitBtn2Click
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
  object Panel3: TPanel
    Left = 0
    Top = 218
    Width = 351
    Height = 78
    Align = alBottom
    TabOrder = 1
    object DBMemo1: TDBMemo
      Left = 1
      Top = 18
      Width = 349
      Height = 59
      Align = alClient
      DataField = 'TCOBS'
      DataSource = Src_Rel
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsItalic]
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
    end
    object HeaderControl1: THeaderControl
      Left = 1
      Top = 1
      Width = 349
      Height = 17
      Sections = <
        item
          ImageIndex = -1
          Text = 'Descri'#231#228'o do Relat'#243'rio'
          Width = 800
        end>
    end
  end
  object Qr_Rel: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select * from CTDVCA Where TCCODEMP is null')
    Left = 88
    Top = 16
    object Qr_RelTCCODEMP: TFloatField
      FieldName = 'TCCODEMP'
      Origin = 'SG_ASSOC.CTDVCA.TCCODEMP'
    end
    object Qr_RelTCDOC: TStringField
      FieldName = 'TCDOC'
      Origin = 'SG_ASSOC.CTDVCA.TCDOC'
      Size = 10
    end
    object Qr_RelTCNOME: TStringField
      FieldName = 'TCNOME'
      Origin = 'SG_ASSOC.CTDVCA.TCNOME'
    end
    object Qr_RelTCQTDLIN: TFloatField
      FieldName = 'TCQTDLIN'
      Origin = 'SG_ASSOC.CTDVCA.TCQTDLIN'
    end
    object Qr_RelTCQTDCOL: TFloatField
      FieldName = 'TCQTDCOL'
      Origin = 'SG_ASSOC.CTDVCA.TCQTDCOL'
    end
    object Qr_RelTCFPADRAO: TFloatField
      FieldName = 'TCFPADRAO'
      Origin = 'SG_ASSOC.CTDVCA.TCFPADRAO'
    end
    object Qr_RelTCQTDITEM: TFloatField
      FieldName = 'TCQTDITEM'
      Origin = 'SG_ASSOC.CTDVCA.TCQTDITEM'
    end
    object Qr_RelTCQTDLPP: TFloatField
      FieldName = 'TCQTDLPP'
      Origin = 'SG_ASSOC.CTDVCA.TCQTDLPP'
    end
    object Qr_RelTCNUMCOL: TFloatField
      FieldName = 'TCNUMCOL'
      Origin = 'SG_ASSOC.CTDVCA.TCNUMCOL'
    end
    object Qr_RelTCINTCOL: TFloatField
      FieldName = 'TCINTCOL'
      Origin = 'SG_ASSOC.CTDVCA.TCINTCOL'
    end
    object Qr_RelTCTPCOL: TFloatField
      FieldName = 'TCTPCOL'
      Origin = 'SG_ASSOC.CTDVCA.TCTPCOL'
    end
    object Qr_RelTCORDEM: TFloatField
      FieldName = 'TCORDEM'
      Origin = 'SG_ASSOC.CTDVCA.TCORDEM'
    end
    object Qr_RelTCMPAGGR: TFloatField
      FieldName = 'TCMPAGGR'
      Origin = 'SG_ASSOC.CTDVCA.TCMPAGGR'
    end
    object Qr_RelTCOBS: TStringField
      FieldName = 'TCOBS'
      Origin = 'SG_ASSOC.CTDVCA.TCOBS'
      Size = 200
    end
    object Qr_RelTCTPESQ: TFloatField
      FieldName = 'TCTPESQ'
      Origin = 'SG_ASSOC.CTDVCA.TCTPESQ'
    end
    object Qr_RelTCTPREL: TFloatField
      FieldName = 'TCTPREL'
      Origin = 'SG_ASSOC.CTDVCA.TCTPREL'
    end
    object Qr_RelTCIMPG: TFloatField
      FieldName = 'TCIMPG'
      Origin = 'SG_ASSOC.CTDVCA.TCIMPG'
    end
    object Qr_RelTCIMPSG: TFloatField
      FieldName = 'TCIMPSG'
      Origin = 'SG_ASSOC.CTDVCA.TCIMPSG'
    end
    object Qr_RelTCAVPTPI: TFloatField
      FieldName = 'TCAVPTPI'
      Origin = 'SG_ASSOC.CTDVCA.TCAVPTPI'
    end
    object Qr_RelTCAVPIPF: TFloatField
      FieldName = 'TCAVPIPF'
      Origin = 'SG_ASSOC.CTDVCA.TCAVPIPF'
    end
    object Qr_RelTCSTATUS: TFloatField
      FieldName = 'TCSTATUS'
      Origin = 'SG_ASSOC.CTDVCA.TCSTATUS'
    end
    object Qr_RelTCVIS: TFloatField
      FieldName = 'TCVIS'
      Origin = 'SG_ASSOC.CTDVCA.TCVIS'
    end
    object Qr_RelTCQTDSER: TFloatField
      FieldName = 'TCQTDSER'
      Origin = 'SG_ASSOC.CTDVCA.TCQTDSER'
    end
    object Qr_RelTCIMPDA: TFloatField
      FieldName = 'TCIMPDA'
      Origin = 'SG_ASSOC.CTDVCA.TCIMPDA'
    end
    object Qr_RelTCTAB01: TStringField
      FieldName = 'TCTAB01'
      Origin = 'SG_ASSOC.CTDVCA.TCTAB01'
      Size = 40
    end
    object Qr_RelTCTAB02: TStringField
      FieldName = 'TCTAB02'
      Origin = 'SG_ASSOC.CTDVCA.TCTAB02'
      Size = 40
    end
    object Qr_RelTCTAB02N: TFloatField
      FieldName = 'TCTAB02N'
      Origin = 'SG_ASSOC.CTDVCA.TCTAB02N'
    end
    object Qr_RelTCTAB03: TStringField
      FieldName = 'TCTAB03'
      Origin = 'SG_ASSOC.CTDVCA.TCTAB03'
      Size = 40
    end
    object Qr_RelTCTAB03N: TFloatField
      FieldName = 'TCTAB03N'
      Origin = 'SG_ASSOC.CTDVCA.TCTAB03N'
    end
    object Qr_RelTCTAB04: TStringField
      FieldName = 'TCTAB04'
      Origin = 'SG_ASSOC.CTDVCA.TCTAB04'
      Size = 40
    end
    object Qr_RelTCTAB04N: TFloatField
      FieldName = 'TCTAB04N'
      Origin = 'SG_ASSOC.CTDVCA.TCTAB04N'
    end
    object Qr_RelTCTAB05: TStringField
      FieldName = 'TCTAB05'
      Origin = 'SG_ASSOC.CTDVCA.TCTAB05'
      Size = 40
    end
    object Qr_RelTCTAB05N: TFloatField
      FieldName = 'TCTAB05N'
      Origin = 'SG_ASSOC.CTDVCA.TCTAB05N'
    end
    object Qr_RelTCORDEM2: TStringField
      FieldName = 'TCORDEM2'
      Origin = 'SG_ASSOC.CTDVCA.TCORDEM2'
      Size = 240
    end
    object Qr_RelTCFILTRO: TStringField
      FieldName = 'TCFILTRO'
      Origin = 'SG_ASSOC.CTDVCA.TCFILTRO'
      Size = 240
    end
    object Qr_RelTCCONT_M: TStringField
      FieldName = 'TCCONT_M'
      Origin = 'SG_ASSOC.CTDVCA.TCCONT_M'
      Size = 30
    end
    object Qr_RelTCCONT_R: TStringField
      FieldName = 'TCCONT_R'
      Origin = 'SG_ASSOC.CTDVCA.TCCONT_R'
      Size = 40
    end
    object Qr_RelTCCONT_AP: TFloatField
      FieldName = 'TCCONT_AP'
      Origin = 'SG_ASSOC.CTDVCA.TCCONT_AP'
    end
    object Qr_RelTCBLOQ: TFloatField
      FieldName = 'TCBLOQ'
      Origin = 'SG_ASSOC.CTDVCA.TCBLOQ'
    end
    object Qr_RelTCAGRUPAR: TFloatField
      FieldName = 'TCAGRUPAR'
      Origin = 'SG_ASSOC.CTDVCA.TCAGRUPAR'
    end
    object Qr_RelTCMASC: TStringField
      FieldName = 'TCMASC'
      Origin = 'SG_ASSOC.CTDVCA.TCMASC'
      Size = 40
    end
    object Qr_RelTCPERIODO: TStringField
      FieldName = 'TCPERIODO'
      Origin = 'SG_ASSOC.CTDVCA.TCPERIODO'
      Size = 40
    end
    object Qr_RelTCDIMGRU: TFloatField
      FieldName = 'TCDIMGRU'
      Origin = 'SG_ASSOC.CTDVCA.TCDIMGRU'
    end
    object Qr_RelTCDIMSG: TFloatField
      FieldName = 'TCDIMSG'
      Origin = 'SG_ASSOC.CTDVCA.TCDIMSG'
    end
    object Qr_RelTCTPFORM: TFloatField
      FieldName = 'TCTPFORM'
      Origin = 'SG_ASSOC.CTDVCA.TCTPFORM'
    end
    object Qr_RelTCQTDDIV: TFloatField
      FieldName = 'TCQTDDIV'
      Origin = 'SG_ASSOC.CTDVCA.TCQTDDIV'
    end
    object Qr_RelTCTAB06: TStringField
      FieldName = 'TCTAB06'
      Origin = 'SG_ASSOC.CTDVCA.TCTAB06'
      Size = 40
    end
    object Qr_RelTCTAB06N: TFloatField
      FieldName = 'TCTAB06N'
      Origin = 'SG_ASSOC.CTDVCA.TCTAB06N'
    end
    object Qr_RelTCTAB07: TStringField
      FieldName = 'TCTAB07'
      Origin = 'SG_ASSOC.CTDVCA.TCTAB07'
      Size = 40
    end
    object Qr_RelTCTAB07N: TFloatField
      FieldName = 'TCTAB07N'
      Origin = 'SG_ASSOC.CTDVCA.TCTAB07N'
    end
    object Qr_RelTCTAB08: TStringField
      FieldName = 'TCTAB08'
      Origin = 'SG_ASSOC.CTDVCA.TCTAB08'
      Size = 40
    end
    object Qr_RelTCTAB08N: TFloatField
      FieldName = 'TCTAB08N'
      Origin = 'SG_ASSOC.CTDVCA.TCTAB08N'
    end
    object Qr_RelTCTAB09: TStringField
      FieldName = 'TCTAB09'
      Origin = 'SG_ASSOC.CTDVCA.TCTAB09'
      Size = 40
    end
    object Qr_RelTCTAB09N: TFloatField
      FieldName = 'TCTAB09N'
      Origin = 'SG_ASSOC.CTDVCA.TCTAB09N'
    end
  end
  object Src_Rel: TDataSource
    DataSet = Qr_Rel
    Left = 128
    Top = 16
  end
end
