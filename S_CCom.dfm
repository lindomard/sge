object Frm_CCom: TFrm_CCom
  Left = 39
  Top = 115
  Width = 761
  Height = 375
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Compras de Clientes'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = [fsBold]
  FormStyle = fsMDIChild
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 745
    Height = 79
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 8
      Width = 44
      Height = 13
      Caption = '&Cliente:'
    end
    object Label2: TLabel
      Left = 8
      Top = 28
      Width = 66
      Height = 13
      Caption = 'Periodo de:'
    end
    object Label3: TLabel
      Left = 184
      Top = 26
      Width = 8
      Height = 13
      Caption = #224
    end
    object CODCLI: TEdit
      Left = 88
      Top = 4
      Width = 80
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 0
      OnExit = CODCLIExit
      OnKeyPress = CODCLIKeyPress
    end
    object NOMCLI: TEdit
      Left = 170
      Top = 4
      Width = 318
      Height = 21
      Enabled = False
      ParentColor = True
      TabOrder = 1
      Text = 'Todos...'
    end
    object MDT1: TMaskEdit
      Left = 88
      Top = 25
      Width = 80
      Height = 19
      Ctl3D = False
      EditMask = '!99/99/9999;1; '
      MaxLength = 10
      ParentCtl3D = False
      TabOrder = 2
      Text = '  /  /    '
      OnExit = MDT1Exit
    end
    object MDT2: TMaskEdit
      Left = 209
      Top = 25
      Width = 80
      Height = 19
      Ctl3D = False
      EditMask = '!99/99/9999;1; '
      MaxLength = 10
      ParentCtl3D = False
      TabOrder = 3
      Text = '  /  /    '
      OnExit = MDT2Exit
    end
    object RG_TIPO: TRadioGroup
      Left = 10
      Top = 44
      Width = 275
      Height = 30
      Caption = 'Situa'#231#227'o do documento:'
      Columns = 3
      ItemIndex = 0
      Items.Strings = (
        '&Todos'
        '&Em Abertos'
        '&Pagos')
      TabOrder = 4
    end
    object BitBtn1: TBitBtn
      Left = 299
      Top = 50
      Width = 150
      Height = 25
      Caption = '&Atualizar Informa'#231#245'es'
      TabOrder = 5
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
    object VERSIT: TBitBtn
      Left = 455
      Top = 50
      Width = 234
      Height = 25
      Caption = 'Verificar Situa'#231#227'o de Cr'#233'dito'
      Enabled = False
      TabOrder = 6
      OnClick = VERSITClick
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
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 79
    Width = 745
    Height = 225
    Align = alClient
    TabOrder = 1
    object STG1: TStringGrid
      Left = 1
      Top = 1
      Width = 743
      Height = 192
      Align = alClient
      ColCount = 20
      DefaultRowHeight = 15
      FixedCols = 0
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Courier New'
      Font.Style = [fsBold]
      Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goColSizing]
      ParentFont = False
      TabOrder = 0
      OnDrawCell = STG1DrawCell
      ColWidths = (
        64
        31
        122
        247
        78
        73
        82
        74
        77
        80
        76
        73
        80
        72
        75
        64
        64
        64
        64
        64)
    end
    object Panel4: TPanel
      Left = 1
      Top = 193
      Width = 743
      Height = 31
      Align = alBottom
      TabOrder = 1
      object Label6: TLabel
        Left = 5
        Top = 8
        Width = 96
        Height = 13
        Caption = 'Total dos titulos:'
      end
      object Label7: TLabel
        Left = 263
        Top = 8
        Width = 86
        Height = 13
        Caption = 'Valores Pagos:'
      end
      object Label8: TLabel
        Left = 493
        Top = 8
        Width = 115
        Height = 13
        Caption = 'Valores Em Abertos:'
      end
      object TOTG: TEdit
        Left = 104
        Top = 5
        Width = 121
        Height = 21
        Enabled = False
        ParentColor = True
        TabOrder = 0
      end
      object TOTP: TEdit
        Left = 354
        Top = 5
        Width = 121
        Height = 21
        Enabled = False
        ParentColor = True
        TabOrder = 1
      end
      object TOTA: TEdit
        Left = 622
        Top = 5
        Width = 121
        Height = 21
        Enabled = False
        ParentColor = True
        TabOrder = 2
      end
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 304
    Width = 745
    Height = 33
    Align = alBottom
    TabOrder = 2
    object Label4: TLabel
      Left = 5
      Top = 2
      Width = 108
      Height = 13
      Alignment = taCenter
      AutoSize = False
      Caption = 'Titulo pago Parcial'
      Color = clBlue
      ParentColor = False
    end
    object Label5: TLabel
      Left = 5
      Top = 16
      Width = 108
      Height = 13
      Alignment = taCenter
      AutoSize = False
      Caption = 'Titulo em atraso'
      Color = clRed
      ParentColor = False
    end
    object BBFORMA: TBitBtn
      Left = 116
      Top = 1
      Width = 150
      Height = 30
      Caption = '&Formas de Pagamento'
      Enabled = False
      TabOrder = 0
      OnClick = BBFORMAClick
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
    end
    object BBIMPRIMIR: TBitBtn
      Left = 417
      Top = 1
      Width = 150
      Height = 30
      Caption = '&Imprimir'
      Enabled = False
      TabOrder = 1
      OnClick = BBIMPRIMIRClick
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
      Left = 567
      Top = 1
      Width = 150
      Height = 30
      Caption = '&Sair do Programa'
      TabOrder = 2
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
  object Qr_Dup: TQuery
    OnCalcFields = Qr_DupCalcFields
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select CRNUMERO,CRDESD,CRDUP,CRCODCLI,CRDTEMIS,'
      '           CRDTVCTO,CRVALOR,CRVALPAG,CRDTPAG,'
      '           CRJUROS,CRDESC,CRNPED,CRORDEM,CRSTATUS,CRCODVEN,'
      '           CRCODBCO,CRCODEMP,CRAZAO,CRLOTSEQ_LB'
      '           from CADDAR,CADCLI '
      '          where CRCODEMP=1 '
      '          and     CRCODCLI is null'
      '          and     CCODEMP=CRCODEMP'
      '          and     CCODCLI=CRCODCLI')
    Left = 648
    Top = 24
    object Qr_DupCRNUMERO: TFloatField
      FieldName = 'CRNUMERO'
      Origin = 'SG_ASSOC.CADDAR.CRNUMERO'
    end
    object Qr_DupCRDESD: TStringField
      FieldName = 'CRDESD'
      Origin = 'SG_ASSOC.CADDAR.CRDESD'
      Size = 2
    end
    object Qr_DupCRDUP: TFloatField
      FieldName = 'CRDUP'
      Origin = 'SG_ASSOC.CADDAR.CRDUP'
    end
    object Qr_DupCRCODCLI: TFloatField
      FieldName = 'CRCODCLI'
      Origin = 'SG_ASSOC.CADDAR.CRCODCLI'
    end
    object Qr_DupCRDTEMIS: TDateTimeField
      FieldName = 'CRDTEMIS'
      Origin = 'SG_ASSOC.CADDAR.CRDTEMIS'
    end
    object Qr_DupCRDTVCTO: TDateTimeField
      FieldName = 'CRDTVCTO'
      Origin = 'SG_ASSOC.CADDAR.CRDTVCTO'
    end
    object Qr_DupCRVALOR: TFloatField
      FieldName = 'CRVALOR'
      Origin = 'SG_ASSOC.CADDAR.CRVALOR'
    end
    object Qr_DupCRVALPAG: TFloatField
      FieldName = 'CRVALPAG'
      Origin = 'SG_ASSOC.CADDAR.CRVALPAG'
    end
    object Qr_DupCRDTPAG: TDateTimeField
      FieldName = 'CRDTPAG'
      Origin = 'SG_ASSOC.CADDAR.CRDTPAG'
    end
    object Qr_DupCRJUROS: TFloatField
      FieldName = 'CRJUROS'
      Origin = 'SG_ASSOC.CADDAR.CRJUROS'
    end
    object Qr_DupCRDESC: TFloatField
      FieldName = 'CRDESC'
      Origin = 'SG_ASSOC.CADDAR.CRDESC'
    end
    object Qr_DupCRNPED: TFloatField
      FieldName = 'CRNPED'
      Origin = 'SG_ASSOC.CADDAR.CRNPED'
    end
    object Qr_DupCRORDEM: TFloatField
      FieldName = 'CRORDEM'
      Origin = 'SG_ASSOC.CADDAR.CRORDEM'
    end
    object Qr_DupCRSTATUS: TFloatField
      FieldName = 'CRSTATUS'
      Origin = 'SG_ASSOC.CADDAR.CRSTATUS'
    end
    object Qr_DupCRAZAO: TStringField
      FieldName = 'CRAZAO'
      Origin = 'SG_ASSOC.CADCLI.CRAZAO'
      Size = 40
    end
    object Qr_Dupnombco: TStringField
      FieldKind = fkCalculated
      FieldName = 'nombco'
      Size = 30
      Calculated = True
    end
    object Qr_DupCRCODVEN: TFloatField
      FieldName = 'CRCODVEN'
      Origin = 'SG_ASSOC.CADDAR.CRCODVEN'
    end
    object Qr_DupCRCODBCO: TFloatField
      FieldName = 'CRCODBCO'
      Origin = 'SG_ASSOC.CADDAR.CRCODBCO'
    end
    object Qr_DupCRCODEMP: TFloatField
      FieldName = 'CRCODEMP'
      Origin = 'SG_ASSOC.CADDAR.CRCODEMP'
    end
    object Qr_DupCRLOTSEQ_LB: TFloatField
      FieldName = 'CRLOTSEQ_LB'
      Origin = 'SG_ASSOC.CADDAR.CRLOTSEQ_LB'
    end
  end
end
