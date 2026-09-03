object Frm_CICMSR: TFrm_CICMSR
  Left = 165
  Top = 178
  Width = 357
  Height = 190
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Calcula o valor do ICMS retido'
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
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 32
    Top = 8
    Width = 64
    Height = 13
    Caption = 'Per'#237'odo de'
  end
  object Label2: TLabel
    Left = 200
    Top = 8
    Width = 8
    Height = 13
    Caption = #224
  end
  object MDT1: TMaskEdit
    Left = 103
    Top = 5
    Width = 83
    Height = 19
    Ctl3D = False
    EditMask = '!99/99/9999;1; '
    MaxLength = 10
    ParentCtl3D = False
    TabOrder = 0
    Text = '  /  /    '
  end
  object MDT2: TMaskEdit
    Left = 219
    Top = 5
    Width = 83
    Height = 19
    Ctl3D = False
    EditMask = '!99/99/9999;1; '
    MaxLength = 10
    ParentCtl3D = False
    TabOrder = 1
    Text = '  /  /    '
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 105
    Width = 349
    Height = 51
    Align = alBottom
    Caption = 'Progresso do Calculo:'
    TabOrder = 2
    Visible = False
    object Gauge1: TGauge
      Left = 2
      Top = 15
      Width = 345
      Height = 34
      Align = alClient
      Progress = 0
    end
  end
  object BitBtn1: TBitBtn
    Left = 5
    Top = 34
    Width = 121
    Height = 25
    Caption = '&Calcular'
    TabOrder = 3
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
    Left = 214
    Top = 33
    Width = 121
    Height = 25
    Caption = '&Sair'
    TabOrder = 4
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
  object RG_TPICMS: TRadioGroup
    Left = 7
    Top = 61
    Width = 335
    Height = 42
    Caption = 'Ratear ICMS do tipo:'
    Columns = 2
    ItemIndex = 0
    Items.Strings = (
      'Retido'
      'Normal')
    TabOrder = 5
  end
  object Qr_NE: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      
        'SELECT NECODEMP,NENUMERO,NESERIE,NEICMSR,NEBASER,NEBASEN,NEICMSN' +
        ','
      'NEFRETE,NEOUTRAS,NETOTNOT,NELOTSEQ_CP,NECHAVEP,'
      'pf1numnf,pf1chave,pf1data,pf1totliq,'
      'pf1icmsr,pf1totbru,pf1totdes,pf1totout from CADNE,CADPF1'
      'where PF1CODEMP=NECODEMP and  PF1LOTSEQ=NELOTSEQ_CP'
      'and NECODEMP is null')
    Left = 160
    Top = 31
    object Qr_NENENUMERO: TFloatField
      FieldName = 'NENUMERO'
      Origin = 'SG_ASSOC.CADNE.NENUMERO'
    end
    object Qr_NENESERIE: TStringField
      FieldName = 'NESERIE'
      Origin = 'SG_ASSOC.CADNE.NESERIE'
      Size = 6
    end
    object Qr_NENEICMSR: TFloatField
      FieldName = 'NEICMSR'
      Origin = 'SG_ASSOC.CADNE.NEICMSR'
    end
    object Qr_NENEFRETE: TFloatField
      FieldName = 'NEFRETE'
      Origin = 'SG_ASSOC.CADNE.NEFRETE'
    end
    object Qr_NENEOUTRAS: TFloatField
      FieldName = 'NEOUTRAS'
      Origin = 'SG_ASSOC.CADNE.NEOUTRAS'
    end
    object Qr_NENETOTNOT: TFloatField
      FieldName = 'NETOTNOT'
      Origin = 'SG_ASSOC.CADNE.NETOTNOT'
    end
    object Qr_NENECHAVEP: TFloatField
      FieldName = 'NECHAVEP'
      Origin = 'SG_ASSOC.CADNE.NECHAVEP'
    end
    object Qr_NEPF1NUMNF: TFloatField
      FieldName = 'PF1NUMNF'
      Origin = 'SG_ASSOC.CADPF1.PF1NUMNF'
    end
    object Qr_NEPF1CHAVE: TFloatField
      FieldName = 'PF1CHAVE'
      Origin = 'SG_ASSOC.CADPF1.PF1CHAVE'
    end
    object Qr_NEPF1DATA: TDateTimeField
      FieldName = 'PF1DATA'
      Origin = 'SG_ASSOC.CADPF1.PF1DATA'
    end
    object Qr_NEPF1TOTLIQ: TFloatField
      FieldName = 'PF1TOTLIQ'
      Origin = 'SG_ASSOC.CADPF1.PF1TOTLIQ'
    end
    object Qr_NEPF1ICMSR: TFloatField
      FieldName = 'PF1ICMSR'
      Origin = 'SG_ASSOC.CADPF1.PF1ICMSR'
    end
    object Qr_NEPF1TOTBRU: TFloatField
      FieldName = 'PF1TOTBRU'
      Origin = 'SG_ASSOC.CADPF1.PF1TOTBRU'
    end
    object Qr_NEPF1TOTDES: TFloatField
      FieldName = 'PF1TOTDES'
      Origin = 'SG_ASSOC.CADPF1.PF1TOTDES'
    end
    object Qr_NEPF1TOTOUT: TFloatField
      FieldName = 'PF1TOTOUT'
      Origin = 'SG_ASSOC.CADPF1.PF1TOTOUT'
    end
    object Qr_NENECODEMP: TFloatField
      FieldName = 'NECODEMP'
      Origin = 'SG_ASSOC.CADNE.NECODEMP'
    end
    object Qr_NENELOTSEQ_CP: TFloatField
      FieldName = 'NELOTSEQ_CP'
      Origin = 'SG_ASSOC.CADNE.NELOTSEQ_CP'
    end
    object Qr_NENEBASER: TFloatField
      FieldName = 'NEBASER'
      Origin = 'SG_ASSOC.CADNE.NEBASER'
    end
    object Qr_NENEBASEN: TFloatField
      FieldName = 'NEBASEN'
      Origin = 'SG_ASSOC.CADNE.NEBASEN'
    end
    object Qr_NENEICMSN: TFloatField
      FieldName = 'NEICMSN'
      Origin = 'SG_ASSOC.CADNE.NEICMSN'
    end
  end
end
