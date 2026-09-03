object Frm_Per: TFrm_Per
  Left = 184
  Top = 177
  Width = 234
  Height = 375
  BorderIcons = [biSystemMenu]
  Caption = 'Emiss'#228'o de Relat'#243'rios'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 226
    Height = 229
    Align = alClient
    TabOrder = 0
    object DBGrid1: TDBGrid
      Left = 1
      Top = 1
      Width = 224
      Height = 227
      Align = alClient
      DataSource = Src_Rel
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'TCNOME'
          Title.Caption = 'Nome do Relat'#243'rio'
          Width = 272
          Visible = True
        end>
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 307
    Width = 226
    Height = 41
    Align = alBottom
    TabOrder = 2
    object YusoftGradientButton1: TYusoftGradientButton
      Left = 2
      Top = 1
      Width = 223
      Height = 38
      LightColor = clBtnHighlight
      ShadowColor = clBtnShadow
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
      GrayedInactive = True
      Caption = '&Sair'
      Layout = blGlyphRight
      BevelWidth = 5
      GroupIndex = 0
      Flat = True
      Vertical = False
      WindowCaption = False
      OnClick = YusoftGradientButton1Click
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 229
    Width = 226
    Height = 78
    Align = alBottom
    TabOrder = 1
    object DBMemo1: TDBMemo
      Left = 1
      Top = 18
      Width = 224
      Height = 59
      Align = alClient
      DataField = 'TCOBS'
      DataSource = Src_Rel
      ReadOnly = True
      TabOrder = 0
    end
    object HeaderControl1: THeaderControl
      Left = 1
      Top = 1
      Width = 224
      Height = 17
      DragReorder = False
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
    object Qr_RelTCOBS: TStringField
      FieldName = 'TCOBS'
      Origin = 'SG_ASSOC.CTDVCA.TCOBS'
      Size = 200
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
  end
  object Src_Rel: TDataSource
    DataSet = Qr_Rel
    Left = 128
    Top = 16
  end
end
