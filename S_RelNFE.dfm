object Frm_RelNFE: TFrm_RelNFE
  Left = 192
  Top = 114
  Width = 544
  Height = 352
  Caption = 'Relat'#243'rio de Notas Fiscais de Entrada'
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
    Left = 73
    Top = 16
    Width = 41
    Height = 13
    Caption = 'Per'#237'odo:'
  end
  object Label3: TLabel
    Left = 212
    Top = 18
    Width = 6
    Height = 13
    Caption = #224
  end
  object Label1: TLabel
    Left = 11
    Top = 39
    Width = 108
    Height = 13
    Caption = 'C'#243'digo do Fornecedor:'
  end
  object Label4: TLabel
    Left = 75
    Top = 61
    Width = 36
    Height = 13
    Caption = 'Estado:'
  end
  object Label5: TLabel
    Left = 317
    Top = 103
    Width = 100
    Height = 13
    Caption = 'Quantos Fornecedor:'
  end
  object Label6: TLabel
    Left = 318
    Top = 124
    Width = 88
    Height = 13
    Caption = 'Quantos Produtos:'
  end
  object MDT1: TMaskEdit
    Left = 124
    Top = 14
    Width = 81
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
    Left = 231
    Top = 14
    Width = 81
    Height = 19
    Ctl3D = False
    EditMask = '!99/99/9999;1; '
    MaxLength = 10
    ParentCtl3D = False
    TabOrder = 1
    Text = '  /  /    '
    OnExit = MDT2Exit
  end
  object CODFOR: TEdit
    Left = 125
    Top = 37
    Width = 80
    Height = 19
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 2
    OnExit = CODFORExit
    OnKeyPress = CODFORKeyPress
  end
  object NOMCLI: TEdit
    Left = 210
    Top = 37
    Width = 303
    Height = 19
    Ctl3D = False
    Enabled = False
    ParentColor = True
    ParentCtl3D = False
    TabOrder = 3
    Text = 'Todos...'
  end
  object UF: TEdit
    Left = 125
    Top = 58
    Width = 80
    Height = 19
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 4
    OnExit = UFExit
    OnKeyDown = UFKeyDown
  end
  object NOMUF: TEdit
    Left = 211
    Top = 58
    Width = 303
    Height = 19
    Ctl3D = False
    Enabled = False
    ParentColor = True
    ParentCtl3D = False
    TabOrder = 5
    Text = 'Todos...'
  end
  object CB_Ana: TCheckBox
    Left = 125
    Top = 83
    Width = 97
    Height = 17
    Caption = 'Anal'#237'tico'
    TabOrder = 6
  end
  object bbImprimir: TBitBtn
    Left = 25
    Top = 237
    Width = 161
    Height = 46
    Caption = '&Imprimir'
    TabOrder = 12
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
    Left = 279
    Top = 236
    Width = 161
    Height = 46
    Caption = '&Sair'
    TabOrder = 13
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
  object CB_FORNECEDOR: TCheckBox
    Left = 125
    Top = 101
    Width = 192
    Height = 17
    Caption = 'Maiores Compras por Fornecedores'
    TabOrder = 7
  end
  object CB_PRODUTOS: TCheckBox
    Left = 125
    Top = 118
    Width = 164
    Height = 17
    Caption = 'Produtos mais Comprados'
    TabOrder = 9
  end
  object QTDCLI: TEdit
    Left = 423
    Top = 99
    Width = 54
    Height = 19
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 8
    OnExit = QTDCLIExit
  end
  object QTDPRO: TEdit
    Left = 424
    Top = 120
    Width = 54
    Height = 19
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 10
    OnExit = QTDPROExit
  end
  object RG_IE: TRadioGroup
    Left = 103
    Top = 152
    Width = 401
    Height = 39
    Caption = 'Sobre Inscri'#231#227'o Estadual'
    Columns = 3
    ItemIndex = 2
    Items.Strings = (
      'Com Inscri'#231#227'o '
      'Sem Inscri'#231#227'o '
      'Todos')
    TabOrder = 11
  end
  object Qr_NFE: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select NENUMERO,NESERIE,NEDTEMIS,NEDTENT,NECODFOR,NECFO,'
      'NETOTNOT,NEBASEN,NEICMSN,NEBASER AS BASERET,'
      'NEICMSR AS ICMSRET,NEISENTAS,'
      'NESTATUS,NECHAVEP,'
      'NEOUTRAS,NECODEMP, NELOTSEQ_CP, FRAZAO,FUF'
      ',NECFO AS CFO1'
      ',NECFO AS CFO2'
      'from CADNE,CADFOR'
      'Where NECODEMP is null'
      'and FCODEMP=NECODEMP'
      'and FCODFOR=NECODFOR')
    Left = 264
    Top = 80
    object Qr_NFENENUMERO: TFloatField
      FieldName = 'NENUMERO'
      Origin = 'SG_ASSOC.CADNE.NENUMERO'
    end
    object Qr_NFENESERIE: TStringField
      FieldName = 'NESERIE'
      Origin = 'SG_ASSOC.CADNE.NESERIE'
      Size = 6
    end
    object Qr_NFENEDTEMIS: TDateTimeField
      FieldName = 'NEDTEMIS'
      Origin = 'SG_ASSOC.CADNE.NEDTEMIS'
    end
    object Qr_NFENEDTENT: TDateTimeField
      FieldName = 'NEDTENT'
      Origin = 'SG_ASSOC.CADNE.NEDTENT'
    end
    object Qr_NFENECODFOR: TFloatField
      FieldName = 'NECODFOR'
      Origin = 'SG_ASSOC.CADNE.NECODFOR'
    end
    object Qr_NFENECFO: TFloatField
      FieldName = 'NECFO'
      Origin = 'SG_ASSOC.CADNE.NECFO'
    end
    object Qr_NFENETOTNOT: TFloatField
      FieldName = 'NETOTNOT'
      Origin = 'SG_ASSOC.CADNE.NETOTNOT'
    end
    object Qr_NFENEBASEN: TFloatField
      FieldName = 'NEBASEN'
      Origin = 'SG_ASSOC.CADNE.NEBASEN'
    end
    object Qr_NFENEICMSN: TFloatField
      FieldName = 'NEICMSN'
      Origin = 'SG_ASSOC.CADNE.NEICMSN'
    end
    object Qr_NFEBASERET: TFloatField
      FieldName = 'BASERET'
      Origin = 'SG_ASSOC.CADNE.NEBASER'
    end
    object Qr_NFEICMSRET: TFloatField
      FieldName = 'ICMSRET'
      Origin = 'SG_ASSOC.CADNE.NEICMSR'
    end
    object Qr_NFENEISENTAS: TFloatField
      FieldName = 'NEISENTAS'
      Origin = 'SG_ASSOC.CADNE.NEISENTAS'
    end
    object Qr_NFENESTATUS: TFloatField
      FieldName = 'NESTATUS'
      Origin = 'SG_ASSOC.CADNE.NESTATUS'
    end
    object Qr_NFENECHAVEP: TFloatField
      FieldName = 'NECHAVEP'
      Origin = 'SG_ASSOC.CADNE.NECHAVEP'
    end
    object Qr_NFENEOUTRAS: TFloatField
      FieldName = 'NEOUTRAS'
      Origin = 'SG_ASSOC.CADNE.NEOUTRAS'
    end
    object Qr_NFENECODEMP: TFloatField
      FieldName = 'NECODEMP'
      Origin = 'SG_ASSOC.CADNE.NECODEMP'
    end
    object Qr_NFENELOTSEQ_CP: TFloatField
      FieldName = 'NELOTSEQ_CP'
      Origin = 'SG_ASSOC.CADNE.NELOTSEQ_CP'
    end
    object Qr_NFEFRAZAO: TStringField
      FieldName = 'FRAZAO'
      Origin = 'SG_ASSOC.CADFOR.FRAZAO'
      Size = 40
    end
    object Qr_NFEFUF: TStringField
      FieldName = 'FUF'
      Origin = 'SG_ASSOC.CADFOR.FUF'
      Size = 2
    end
    object Qr_NFECFO1: TFloatField
      FieldName = 'CFO1'
      Origin = 'SG_ASSOC.CADNE.NECFO'
    end
    object Qr_NFECFO2: TFloatField
      FieldName = 'CFO2'
      Origin = 'SG_ASSOC.CADNE.NECFO'
    end
    object Qr_NFEPF2DIFAL: TFloatField
      FieldName = 'PF2DIFAL'
    end
  end
  object Qr_PedMer: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select PF2CHAVE,PF2CODPRO,'
      'PF2PU,PF2QTDP,PF2BASEN,PF2ICMSN,'
      'PF2BASER,PF2ICMSR,PF2TOTDES,PF2NOMPRO,PDMARCA,PDUND'
      'from CADPF2,CADPRO where'
      'PDCODEMP=PF2CODEMP and'
      'PDCODPRO=PF2CODPRO'
      'and PF2CODEMP is null')
    Left = 312
    Top = 70
    object Qr_PedMerPF2CHAVE: TFloatField
      FieldName = 'PF2CHAVE'
      Origin = 'SG_ASSOC.CADPF2.PF2CHAVE'
    end
    object Qr_PedMerPF2CODPRO: TFloatField
      FieldName = 'PF2CODPRO'
      Origin = 'SG_ASSOC.CADPF2.PF2CODPRO'
    end
    object Qr_PedMerPF2PU: TFloatField
      FieldName = 'PF2PU'
      Origin = 'SG_ASSOC.CADPF2.PF2PU'
    end
    object Qr_PedMerPF2QTDP: TFloatField
      FieldName = 'PF2QTDP'
      Origin = 'SG_ASSOC.CADPF2.PF2QTDP'
    end
    object Qr_PedMerPF2BASEN: TFloatField
      FieldName = 'PF2BASEN'
      Origin = 'SG_ASSOC.CADPF2.PF2BASEN'
    end
    object Qr_PedMerPF2ICMSN: TFloatField
      FieldName = 'PF2ICMSN'
      Origin = 'SG_ASSOC.CADPF2.PF2ICMSN'
    end
    object Qr_PedMerPF2BASER: TFloatField
      FieldName = 'PF2BASER'
      Origin = 'SG_ASSOC.CADPF2.PF2BASER'
    end
    object Qr_PedMerPF2ICMSR: TFloatField
      FieldName = 'PF2ICMSR'
      Origin = 'SG_ASSOC.CADPF2.PF2ICMSR'
    end
    object Qr_PedMerPF2TOTDES: TFloatField
      FieldName = 'PF2TOTDES'
      Origin = 'SG_ASSOC.CADPF2.PF2TOTDES'
    end
    object Qr_PedMerPDMARCA: TStringField
      FieldName = 'PDMARCA'
      Origin = 'SG_ASSOC.CADPRO.PDMARCA'
    end
    object Qr_PedMerPDUND: TStringField
      FieldName = 'PDUND'
      Origin = 'SG_ASSOC.CADPRO.PDUND'
      Size = 3
    end
    object Qr_PedMerPF2NOMPRO: TStringField
      FieldName = 'PF2NOMPRO'
      Origin = 'SG_ASSOC.CADPF2.PF2NOMPRO'
      Size = 120
    end
    object Qr_PedMerPF2DIFAL_VALOR: TFloatField
      FieldName = 'PF2DIFAL_VALOR'
    end
  end
  object Qr_Compras_For: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select FRAZAO AS NOME ,PF1CODFOR AS CODIGO, FCGC as CNPJ,'
      '       sum(pf1totLIQ) as total,'
      '       sum(PF1ICMSR) as ICMSR from CADPF1,CADFOR'
      '       where PF1STATUS<>9 and PF1CODEMP is null'
      '       and FCODEMP=PF1CODEMP'
      '       and FCODFOR=PF1CODFOR'
      '       and PF1STATUS=2'
      'group by FRAZAO,PF1CODFOR,FCGC')
    Left = 456
    Top = 24
    object Qr_Compras_ForNOME: TStringField
      FieldName = 'NOME'
      Origin = 'SG_ASSOC.CADFOR.FRAZAO'
      Size = 40
    end
    object Qr_Compras_ForCODIGO: TFloatField
      FieldName = 'CODIGO'
      Origin = 'SG_ASSOC.CADPF1.PF1CODFOR'
    end
    object Qr_Compras_ForCNPJ: TFloatField
      FieldName = 'CNPJ'
      Origin = 'SG_ASSOC.CADFOR.FCGC'
    end
    object Qr_Compras_ForTOTAL: TFloatField
      FieldName = 'TOTAL'
      Origin = 'SG_ASSOC.CADPF1.PF1TOTLIQ'
    end
    object Qr_Compras_ForICMSR: TFloatField
      FieldName = 'ICMSR'
      Origin = 'SG_ASSOC.CADPF1.PF1ICMSR'
    end
  end
  object Qr_Vendas_Pro: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      
        'Select PF2NOMPRO, PF2CODPRO,PDCLAS,sum((PF2QTDP*PF2PU)-PF2TOTDES' +
        ')  as total'
      '       from CADPF1,CADPF2,CADPRO'
      '       where PF1STATUS<>9 and PF1CODEMP is null'
      '       and PF2CODEMP=PF1CODEMP'
      '       and PF2LOTSEQ=PF1LOTSEQ and PF2CHAVE=PF1CHAVE'
      '       and PDCODEMP=PF2CODEMP'
      '       and PDCODPRO=PF2CODPRO'
      '       and PF1STATUS=2'
      '       Group by PF2NOMPRO,PF2CODPRO,PDCLAS')
    Left = 456
    Top = 62
    object Qr_Vendas_ProPF2CODPRO: TFloatField
      FieldName = 'PF2CODPRO'
    end
    object Qr_Vendas_ProPDCLAS: TStringField
      FieldName = 'PDCLAS'
    end
    object Qr_Vendas_ProTOTAL: TFloatField
      FieldName = 'TOTAL'
    end
    object Qr_Vendas_ProPF2NOMPRO: TStringField
      FieldName = 'PF2NOMPRO'
      Size = 120
    end
  end
end
