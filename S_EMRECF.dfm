object Frm_EMRECF: TFrm_EMRECF
  Left = 192
  Top = 107
  Width = 519
  Height = 296
  Caption = 'Emiss'#227'o do Mapa Resumo do ECF'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = [fsBold]
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label4: TLabel
    Left = 10
    Top = 12
    Width = 120
    Height = 13
    Caption = 'Data......................:'
  end
  object Label1: TLabel
    Left = 9
    Top = 31
    Width = 129
    Height = 13
    Caption = 'C'#243'digo  Impressora.....'
  end
  object MDT1: TMaskEdit
    Left = 130
    Top = 4
    Width = 89
    Height = 21
    EditMask = '!99/99/9999;1; '
    MaxLength = 10
    TabOrder = 0
    Text = '  /  /    '
    OnExit = MDT1Exit
  end
  object CODIMP: TEdit
    Left = 130
    Top = 27
    Width = 64
    Height = 21
    TabOrder = 1
    OnExit = CODIMPExit
    OnKeyPress = CODIMPKeyPress
  end
  object nomimp: TEdit
    Left = 196
    Top = 27
    Width = 311
    Height = 21
    Enabled = False
    ParentColor = True
    TabOrder = 2
    Text = 'Todas...'
  end
  object CB_VIS: TCheckBox
    Left = 13
    Top = 52
    Width = 180
    Height = 17
    Caption = 'Visualizar Antes de Imprimir'
    TabOrder = 3
  end
  object CB_TPIMP: TCheckBox
    Left = 284
    Top = 52
    Width = 180
    Height = 17
    Caption = 'Impress'#227'o Simples(Matricial)'
    TabOrder = 4
    Visible = False
  end
  object Panel1: TPanel
    Left = 0
    Top = 200
    Width = 507
    Height = 41
    Align = alBottom
    TabOrder = 7
    object bbImprimir: TBitBtn
      Left = 7
      Top = 4
      Width = 168
      Height = 37
      Caption = '&Imprimir'
      TabOrder = 0
      OnClick = bbImprimirClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
        00033FFFFFFFFFFFFFFF0888888888888880777777777777777F088888888888
        8880777777777777777F0000000000000000FFFFFFFFFFFFFFFF0F8F8F8F8F8F
        8F80777777777777777F08F8F8F8F8F8F9F0777777777777777F0F8F8F8F8F8F
        8F807777777777777F7F0000000000000000777777777777777F3330FFFFFFFF
        03333337F3FFFF3F7F333330F0000F0F03333337F77773737F333330FFFFFFFF
        03333337F3FF3FFF7F333330F00F000003333337F773777773333330FFFF0FF0
        33333337F3FF7F3733333330F08F0F0333333337F7737F7333333330FFFF0033
        33333337FFFF7733333333300000033333333337777773333333}
      NumGlyphs = 2
    end
    object bbSair: TBitBtn
      Left = 340
      Top = 4
      Width = 168
      Height = 37
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
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 139
    Width = 507
    Height = 61
    Align = alBottom
    Caption = 'Observa'#231#245'es:'
    TabOrder = 5
    object observ: TMemo
      Left = 2
      Top = 15
      Width = 503
      Height = 44
      Align = alClient
      TabOrder = 0
    end
  end
  object GroupBox2: TGroupBox
    Left = 0
    Top = 76
    Width = 507
    Height = 63
    Align = alBottom
    Caption = 'Dados do Respons'#225'vel:'
    TabOrder = 6
    object Label2: TLabel
      Left = 9
      Top = 16
      Width = 61
      Height = 13
      Caption = 'Nome......:'
    end
    object Label3: TLabel
      Left = 10
      Top = 37
      Width = 59
      Height = 13
      Caption = 'Fun'#231#227'o...:'
    end
    object NOMRES: TEdit
      Left = 73
      Top = 14
      Width = 368
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 0
    end
    object Funcao: TEdit
      Left = 73
      Top = 35
      Width = 155
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 1
    end
  end
  object Qr_MI01: TQuery
    OnCalcFields = Qr_MI01CalcFields
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select * from CADMI01')
    Left = 200
    Top = 80
    object Qr_MI01CMCODEMP: TFloatField
      FieldName = 'CMCODEMP'
      Origin = 'SG_ASSOC.CADMI01.CMCODEMP'
    end
    object Qr_MI01CMCODIMP: TFloatField
      FieldName = 'CMCODIMP'
      Origin = 'SG_ASSOC.CADMI01.CMCODIMP'
    end
    object Qr_MI01CMDATA: TDateTimeField
      FieldName = 'CMDATA'
      Origin = 'SG_ASSOC.CADMI01.CMDATA'
    end
    object Qr_MI01CMCONRED: TFloatField
      FieldName = 'CMCONRED'
      Origin = 'SG_ASSOC.CADMI01.CMCONRED'
    end
    object Qr_MI01CMCOO: TFloatField
      FieldName = 'CMCOO'
      Origin = 'SG_ASSOC.CADMI01.CMCOO'
    end
    object Qr_MI01CMVDABRUT: TFloatField
      FieldName = 'CMVDABRUT'
      Origin = 'SG_ASSOC.CADMI01.CMVDABRUT'
      DisplayFormat = '0.00'
    end
    object Qr_MI01CMVDALIQ: TFloatField
      FieldName = 'CMVDALIQ'
      Origin = 'SG_ASSOC.CADMI01.CMVDALIQ'
      DisplayFormat = '0.00'
    end
    object Qr_MI01CMCUPCAN: TFloatField
      FieldName = 'CMCUPCAN'
      Origin = 'SG_ASSOC.CADMI01.CMCUPCAN'
      DisplayFormat = '0.00'
    end
    object Qr_MI01CMACRECUP: TFloatField
      FieldName = 'CMACRECUP'
      Origin = 'SG_ASSOC.CADMI01.CMACRECUP'
      DisplayFormat = '0.00'
    end
    object Qr_MI01CMDESCUP: TFloatField
      FieldName = 'CMDESCUP'
      Origin = 'SG_ASSOC.CADMI01.CMDESCUP'
      DisplayFormat = '0.00'
    end
    object Qr_MI01CMISSCUP: TFloatField
      FieldName = 'CMISSCUP'
      Origin = 'SG_ASSOC.CADMI01.CMISSCUP'
      DisplayFormat = '0.00'
    end
    object Qr_MI01CMISENTAS: TFloatField
      FieldName = 'CMISENTAS'
      Origin = 'SG_ASSOC.CADMI01.CMISENTAS'
      DisplayFormat = '0.00'
    end
    object Qr_MI01CMNAOINC: TFloatField
      FieldName = 'CMNAOINC'
      Origin = 'SG_ASSOC.CADMI01.CMNAOINC'
      DisplayFormat = '0.00'
    end
    object Qr_MI01CMSUBTRI: TFloatField
      FieldName = 'CMSUBTRI'
      Origin = 'SG_ASSOC.CADMI01.CMSUBTRI'
      DisplayFormat = '0.00'
    end
    object Qr_MI01aliq01: TFloatField
      FieldKind = fkCalculated
      FieldName = 'aliq01'
      DisplayFormat = '0.00'
      Calculated = True
    end
    object Qr_MI01valiq01: TFloatField
      FieldKind = fkCalculated
      FieldName = 'valiq01'
      DisplayFormat = '0.00'
      Calculated = True
    end
    object Qr_MI01aliq02: TFloatField
      FieldKind = fkCalculated
      FieldName = 'aliq02'
      DisplayFormat = '0.00'
      Calculated = True
    end
    object Qr_MI01valiq02: TFloatField
      FieldKind = fkCalculated
      FieldName = 'valiq02'
      DisplayFormat = '0.00'
      Calculated = True
    end
    object Qr_MI01aliq03: TFloatField
      FieldKind = fkCalculated
      FieldName = 'aliq03'
      DisplayFormat = '0.00'
      Calculated = True
    end
    object Qr_MI01valiq03: TFloatField
      FieldKind = fkCalculated
      FieldName = 'valiq03'
      DisplayFormat = '0.00'
      Calculated = True
    end
    object Qr_MI01aliq04: TFloatField
      FieldKind = fkCalculated
      FieldName = 'aliq04'
      DisplayFormat = '0.00'
      Calculated = True
    end
    object Qr_MI01valiq04: TFloatField
      FieldKind = fkCalculated
      FieldName = 'valiq04'
      DisplayFormat = '0.00'
      Calculated = True
    end
    object Qr_MI01aliq05: TFloatField
      FieldKind = fkCalculated
      FieldName = 'aliq05'
      DisplayFormat = '0.00'
      Calculated = True
    end
    object Qr_MI01valiq05: TFloatField
      FieldKind = fkCalculated
      FieldName = 'valiq05'
      DisplayFormat = '0.00'
      Calculated = True
    end
    object Qr_MI01serie: TStringField
      FieldKind = fkCalculated
      FieldName = 'serie'
      Size = 5
      Calculated = True
    end
    object Qr_MI01ordem: TStringField
      FieldKind = fkCalculated
      FieldName = 'ordem'
      Size = 10
      Calculated = True
    end
    object Qr_MI01desccanc: TFloatField
      FieldKind = fkCalculated
      FieldName = 'desccanc'
      DisplayFormat = '0.00'
      Calculated = True
    end
    object Qr_MI01totimp: TFloatField
      FieldKind = fkCalculated
      FieldName = 'totimp'
      DisplayFormat = '0.00'
      Calculated = True
    end
    object Qr_MI01outrosrec: TFloatField
      FieldKind = fkCalculated
      FieldName = 'outrosrec'
      DisplayFormat = '0.00'
      Calculated = True
    end
  end
end
