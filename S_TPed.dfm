object Frm_TPed: TFrm_TPed
  Left = 256
  Top = 235
  Width = 544
  Height = 289
  Caption = 'Rel'#225'torio de Mercadorias de Pedido..:'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = [fsBold]
  FormStyle = fsMDIChild
  KeyPreview = True
  OldCreateOrder = False
  Position = poDefault
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 528
    Height = 210
    Align = alClient
    TabOrder = 0
    object Label1: TLabel
      Left = 24
      Top = 11
      Width = 66
      Height = 13
      Caption = 'Periodo de '
    end
    object Label2: TLabel
      Left = 194
      Top = 12
      Width = 8
      Height = 13
      Caption = #225
    end
    object Label3: TLabel
      Left = 28
      Top = 36
      Width = 60
      Height = 13
      Caption = 'Cliente....:'
    end
    object NOMCLI: TLabel
      Left = 189
      Top = 33
      Width = 48
      Height = 13
      Caption = 'Todos...'
    end
    object SpeedButton1: TSpeedButton
      Left = 158
      Top = 29
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
    object MDT1: TMaskEdit
      Left = 93
      Top = 8
      Width = 90
      Height = 19
      Ctl3D = False
      EditMask = '!99/99/9999;1; '
      MaxLength = 10
      ParentCtl3D = False
      TabOrder = 0
      Text = '  /  /    '
      OnExit = MDT1Exit
    end
    object MDT2: TMaskEdit
      Left = 212
      Top = 8
      Width = 90
      Height = 19
      Ctl3D = False
      EditMask = '!99/99/9999;1; '
      MaxLength = 10
      ParentCtl3D = False
      TabOrder = 1
      Text = '  /  /    '
      OnExit = MDT2Exit
    end
    object RG_TIPO: TRadioGroup
      Left = 26
      Top = 59
      Width = 444
      Height = 132
      Caption = 'Tipos de Pedidos:'
      Columns = 2
      Ctl3D = False
      ItemIndex = 0
      Items.Strings = (
        'Todo&s'
        '&Or'#231'amento'
        '&Venda Normal'
        '&Simples Remessa'
        '&Dev. a Fornecedor'
        'Remess&a p/Troca'
        '&Transferencia'
        'R&emessa p/Beneficiamento'
        'Re&messa p/Venda'
        '&Dev.Cliente(Entrada)')
      ParentCtl3D = False
      TabOrder = 2
    end
    object CODCLI: TEdit
      Left = 93
      Top = 29
      Width = 63
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 3
      OnExit = CODCLIExit
      OnKeyPress = CODCLIKeyPress
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 210
    Width = 528
    Height = 41
    Align = alBottom
    TabOrder = 1
    object BitBtn1: TBitBtn
      Left = 128
      Top = 9
      Width = 75
      Height = 25
      Caption = '&Imprimir'
      TabOrder = 0
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
      Left = 344
      Top = 9
      Width = 75
      Height = 25
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
  object Qr_Ped: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select sum(P2QTD)  as qtd,P2CODPRO,PDNOME,PDUND '
      'from CADP02,CADPRO where P2CODEMP=1 and'
      'PDCODEMP=P2CODEMP and'
      'PDCODPRO=P2CODPRO '
      'group by P2CODPRO,PDNOME,PDUND'
      'order by PDNOME')
    Left = 448
    Top = 128
    object Qr_PedQTD: TFloatField
      FieldName = 'QTD'
      Origin = 'SG_ASSOC.CADP02.P2QTD'
    end
    object Qr_PedP2CODPRO: TFloatField
      FieldName = 'P2CODPRO'
      Origin = 'SG_ASSOC.CADP02.P2CODPRO'
    end
    object Qr_PedPDNOME: TStringField
      FieldName = 'PDNOME'
      Origin = 'SG_ASSOC.CADPRO.PDNOME'
      Size = 40
    end
    object Qr_PedPDUND: TStringField
      FieldName = 'PDUND'
      Origin = 'SG_ASSOC.CADPRO.PDUND'
      Size = 3
    end
  end
end
