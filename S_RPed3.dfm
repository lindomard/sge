object Frm_RPed3: TFrm_RPed3
  Left = 169
  Top = 150
  Width = 544
  Height = 248
  Caption = 'Relatorio de Pedidos/Caixa'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 536
    Height = 214
    Align = alClient
    TabOrder = 0
    object Label1: TLabel
      Left = 12
      Top = 20
      Width = 54
      Height = 13
      Caption = 'Periodo de '
    end
    object Label2: TLabel
      Left = 154
      Top = 21
      Width = 6
      Height = 13
      Caption = #224
    end
    object Label3: TLabel
      Left = 12
      Top = 66
      Width = 60
      Height = 13
      Caption = 'Conv'#234'nio....:'
    end
    object Label4: TLabel
      Left = 13
      Top = 90
      Width = 61
      Height = 13
      Caption = 'Associado...:'
    end
    object Label5: TLabel
      Left = 12
      Top = 114
      Width = 52
      Height = 13
      Caption = 'Atendente:'
    end
    object Label7: TLabel
      Left = 11
      Top = 42
      Width = 66
      Height = 13
      Caption = 'Pedido Inicial:'
    end
    object Label8: TLabel
      Left = 167
      Top = 44
      Width = 61
      Height = 13
      Caption = 'Pedido Final:'
    end
    object Label6: TLabel
      Left = 12
      Top = 138
      Width = 65
      Height = 13
      Caption = 'Caixa/Banco:'
    end
    object MDT1: TMaskEdit
      Left = 78
      Top = 17
      Width = 66
      Height = 21
      EditMask = '!99/99/9999;1; '
      MaxLength = 10
      TabOrder = 0
      Text = '  /  /    '
      OnExit = MDT1Exit
    end
    object MDT2: TMaskEdit
      Left = 175
      Top = 17
      Width = 66
      Height = 21
      EditMask = '!99/99/9999;1; '
      MaxLength = 10
      TabOrder = 1
      Text = '  /  /    '
      OnExit = MDT2Exit
    end
    object CODCON: TEdit
      Left = 78
      Top = 63
      Width = 66
      Height = 21
      TabOrder = 4
      OnExit = CODCONExit
      OnKeyPress = CODCONKeyPress
    end
    object CODASS: TEdit
      Left = 78
      Top = 85
      Width = 66
      Height = 21
      TabOrder = 5
      OnExit = CODASSExit
      OnKeyPress = CODASSKeyPress
    end
    object CODVEN: TEdit
      Left = 78
      Top = 107
      Width = 66
      Height = 21
      TabOrder = 6
      OnExit = CODVENExit
      OnKeyPress = CODVENKeyPress
    end
    object BitBtn1: TBitBtn
      Left = 6
      Top = 164
      Width = 150
      Height = 40
      Caption = '&Imprimir'
      TabOrder = 7
      OnClick = BitBtn1Click
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
    object BitBtn2: TBitBtn
      Left = 382
      Top = 166
      Width = 150
      Height = 40
      Caption = '&Sair'
      TabOrder = 8
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
    object MPEDI: TEdit
      Left = 78
      Top = 39
      Width = 66
      Height = 21
      TabOrder = 2
      OnKeyPress = MPEDFKeyPress
    end
    object MPEDF: TEdit
      Left = 240
      Top = 39
      Width = 66
      Height = 21
      TabOrder = 3
      OnExit = MPEDFExit
      OnKeyPress = MPEDFKeyPress
    end
    object CODCAI: TEdit
      Left = 78
      Top = 131
      Width = 66
      Height = 21
      TabOrder = 9
      OnExit = CODCAIExit
    end
    object NOMCONV: TEdit
      Left = 160
      Top = 64
      Width = 337
      Height = 21
      Enabled = False
      ParentColor = True
      TabOrder = 10
      Text = 'Todos...'
    end
    object NOMASS: TEdit
      Left = 160
      Top = 87
      Width = 337
      Height = 21
      Enabled = False
      ParentColor = True
      TabOrder = 11
      Text = 'Todos...'
    end
    object NOMVEN: TEdit
      Left = 161
      Top = 111
      Width = 337
      Height = 21
      Enabled = False
      ParentColor = True
      TabOrder = 12
      Text = 'Todos...'
    end
    object NOMCAI: TEdit
      Left = 160
      Top = 134
      Width = 337
      Height = 21
      Enabled = False
      ParentColor = True
      TabOrder = 13
      Text = 'Todos...'
    end
  end
  object Qr_Ped: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      
        'Select P1CHAVE,P1CODASS,P1TOTLIQ,P1TAXENT,P1DATAP,P1ACFIN,P1NCUP' +
        'OM,P1CAIXA,'
      
        ' P1DATAE,P1NAUT,CNOME,CCIDADE,CUF, 0 as TIPO  from CADP01, CADAS' +
        'S'
      ' Where P1CODEMP=1'
      ' and CCODEMP=P1CODEMP'
      ' and CCODCLI=P1CODASS'
      'and P1CHAVE IS null')
    Left = 302
    Top = 44
    object Qr_PedP1CHAVE: TFloatField
      FieldName = 'P1CHAVE'
    end
    object Qr_PedP1CODASS: TFloatField
      FieldName = 'P1CODASS'
    end
    object Qr_PedP1TOTLIQ: TFloatField
      FieldName = 'P1TOTLIQ'
    end
    object Qr_PedP1TAXENT: TFloatField
      FieldName = 'P1TAXENT'
    end
    object Qr_PedP1DATAP: TDateTimeField
      FieldName = 'P1DATAP'
    end
    object Qr_PedP1ACFIN: TFloatField
      FieldName = 'P1ACFIN'
    end
    object Qr_PedP1NCUPOM: TFloatField
      FieldName = 'P1NCUPOM'
    end
    object Qr_PedP1CAIXA: TFloatField
      FieldName = 'P1CAIXA'
    end
    object Qr_PedP1DATAE: TDateTimeField
      FieldName = 'P1DATAE'
    end
    object Qr_PedP1NAUT: TStringField
      FieldName = 'P1NAUT'
      Size = 30
    end
    object Qr_PedCNOME: TStringField
      FieldName = 'CNOME'
      Size = 40
    end
    object Qr_PedCCIDADE: TStringField
      FieldName = 'CCIDADE'
      Size = 30
    end
    object Qr_PedCUF: TStringField
      FieldName = 'CUF'
      Size = 30
    end
    object Qr_PedTIPO: TFloatField
      FieldName = 'TIPO'
    end
  end
end
