object Frm_ResMapaRes: TFrm_ResMapaRes
  Left = 192
  Top = 114
  Width = 453
  Height = 134
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = '&Gerar Mapa Resumo ECF atrav'#233's dos Cupons(CADNS)'
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
  object Label2: TLabel
    Left = 82
    Top = 13
    Width = 41
    Height = 13
    Caption = 'Per'#237'odo:'
  end
  object Label3: TLabel
    Left = 226
    Top = 15
    Width = 6
    Height = 13
    Caption = #224
  end
  object MDT1: TMaskEdit
    Left = 138
    Top = 11
    Width = 81
    Height = 19
    Ctl3D = False
    EditMask = '!99/99/9999;1; '
    MaxLength = 10
    ParentCtl3D = False
    TabOrder = 0
    Text = '  /  /    '
  end
  object MDT2: TMaskEdit
    Left = 245
    Top = 11
    Width = 81
    Height = 19
    Ctl3D = False
    EditMask = '!99/99/9999;1; '
    MaxLength = 10
    ParentCtl3D = False
    TabOrder = 1
    Text = '  /  /    '
  end
  object BitBtn1: TBitBtn
    Left = 40
    Top = 55
    Width = 160
    Height = 30
    Caption = 'Processar Agora'
    TabOrder = 2
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
  object bbSair: TBitBtn
    Left = 223
    Top = 56
    Width = 160
    Height = 30
    Caption = '&Sair do Programa'
    TabOrder = 3
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
  object Qr_Notas: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select sum(NSTOTNOTA) AS VDALIQ'
      '       ,sum(NSVISSQN) AS ISSCUP'
      '       ,sum(NSTOTISEN) AS ISENTAS'
      '       ,sum(NSTOTRET)  AS SUBTRI'
      '       ,sum(NSTOTOUT) AS OUTRAS'
      '       ,count(*) as QTDCUP'
      '       ,NSDATCUP'
      '       ,NSCODECF,NSSERIEECF,NSMODECF,NSCHAVEP'
      '       from CADNS where NSCODEMP is null'
      'group by NSDATCUP,NSCODECF,NSSERIEECF,NSMODECF,NSCHAVEP')
    Left = 8
    Top = 24
    object Qr_NotasVDALIQ: TFloatField
      FieldName = 'VDALIQ'
      Origin = 'SG_ASSOC.CADNS.NSTOTNOTA'
    end
    object Qr_NotasISSCUP: TFloatField
      FieldName = 'ISSCUP'
      Origin = 'SG_ASSOC.CADNS.NSVISSQN'
    end
    object Qr_NotasISENTAS: TFloatField
      FieldName = 'ISENTAS'
      Origin = 'SG_ASSOC.CADNS.NSTOTISEN'
    end
    object Qr_NotasSUBTRI: TFloatField
      FieldName = 'SUBTRI'
      Origin = 'SG_ASSOC.CADNS.NSTOTRET'
    end
    object Qr_NotasNSDATCUP: TDateTimeField
      FieldName = 'NSDATCUP'
      Origin = 'SG_ASSOC.CADNS.NSDATCUP'
    end
    object Qr_NotasNSCODECF: TFloatField
      FieldName = 'NSCODECF'
      Origin = 'SG_ASSOC.CADNS.NSCODECF'
    end
    object Qr_NotasNSSERIEECF: TStringField
      FieldName = 'NSSERIEECF'
      Origin = 'SG_ASSOC.CADNS.NSSERIEECF'
    end
    object Qr_NotasNSMODECF: TStringField
      FieldName = 'NSMODECF'
      Origin = 'SG_ASSOC.CADNS.NSMODECF'
      Size = 2
    end
    object Qr_NotasQTDCUP: TFloatField
      FieldName = 'QTDCUP'
    end
    object Qr_NotasOUTRAS: TFloatField
      FieldName = 'OUTRAS'
    end
  end
end
