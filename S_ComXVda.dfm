object Frm_ComXVda: TFrm_ComXVda
  Left = 192
  Top = 114
  Width = 544
  Height = 175
  Caption = 'Valor de Compra comparado ao valor vendido/a vender(estimado)'
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
  object Label1: TLabel
    Left = 14
    Top = 26
    Width = 68
    Height = 13
    Caption = 'Per'#237'odo de '
  end
  object Label2: TLabel
    Left = 210
    Top = 25
    Width = 8
    Height = 13
    Caption = #224
  end
  object Label5: TLabel
    Left = 15
    Top = 56
    Width = 77
    Height = 13
    Caption = 'Fornecedor..:'
  end
  object MDT1: TMaskEdit
    Left = 115
    Top = 23
    Width = 82
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
    Left = 234
    Top = 23
    Width = 82
    Height = 19
    Ctl3D = False
    EditMask = '!99/99/9999;1; '
    MaxLength = 10
    ParentCtl3D = False
    TabOrder = 1
    Text = '  /  /    '
    OnExit = MDT2Exit
  end
  object bbImprimir: TBitBtn
    Left = 15
    Top = 85
    Width = 155
    Height = 25
    Caption = '&Imprimir'
    TabOrder = 4
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
  object CODFOR: TEdit
    Left = 116
    Top = 51
    Width = 69
    Height = 19
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 2
    OnExit = CODFORExit
    OnKeyPress = CODFORKeyPress
  end
  object NOMFOR: TEdit
    Left = 188
    Top = 50
    Width = 305
    Height = 21
    Enabled = False
    ParentColor = True
    TabOrder = 3
    Text = 'Todos...'
  end
  object bbSair: TBitBtn
    Left = 338
    Top = 84
    Width = 155
    Height = 25
    Caption = '&Sair'
    TabOrder = 5
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
  object Tb_Pfor01: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select PF1LOTSEQ,PF1CHAVE,PF1CODEMP,PF1TOTLIQ,PF1DATAENT'
      'from CADPF1 where PF1CHAVE is null')
    Left = 200
    Top = 88
    object Tb_Pfor01PF1CHAVE: TFloatField
      FieldName = 'PF1CHAVE'
      Origin = 'SG_ASSOC.CADPF1.PF1CHAVE'
    end
    object Tb_Pfor01PF1TOTLIQ: TFloatField
      FieldName = 'PF1TOTLIQ'
      Origin = 'SG_ASSOC.CADPF1.PF1TOTLIQ'
    end
    object Tb_Pfor01PF1CODEMP: TFloatField
      FieldName = 'PF1CODEMP'
      Origin = 'SG_ASSOC.CADPF1.PF1CODEMP'
    end
    object Tb_Pfor01PF1DATAENT: TDateTimeField
      FieldName = 'PF1DATAENT'
      Origin = 'SG_ASSOC.CADPF1.PF1DATAENT'
    end
    object Tb_Pfor01PF1LOTSEQ: TFloatField
      FieldName = 'PF1LOTSEQ'
      Origin = 'SG_ASSOC.CADPF1.PF1LOTSEQ'
    end
  end
  object Tb_PFor02: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select PF2CODPRO,PF2QTDP,PF2PU,PF2PCOTAB'
      'from CADPF2'
      'where PF2CODEMP is null')
    Left = 240
    Top = 88
    object Tb_PFor02PF2CODPRO: TFloatField
      FieldName = 'PF2CODPRO'
      Origin = 'SG_ASSOC.CADPF2.PF2CODPRO'
    end
    object Tb_PFor02PF2QTDP: TFloatField
      FieldName = 'PF2QTDP'
      Origin = 'SG_ASSOC.CADPF2.PF2QTDP'
    end
    object Tb_PFor02PF2PU: TFloatField
      FieldName = 'PF2PU'
      Origin = 'SG_ASSOC.CADPF2.PF2PU'
    end
    object Tb_PFor02PF2PCOTAB: TFloatField
      FieldName = 'PF2PCOTAB'
      Origin = 'SG_ASSOC.CADPF2.PF2PCOTAB'
    end
  end
  object Tb_Temporaria: TQuery
    OnCalcFields = Tb_TemporariaCalcFields
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select * from TMP00015')
    Left = 280
    Top = 88
    object Tb_TemporariaTMNUMNF: TFloatField
      FieldName = 'TMNUMNF'
      Origin = 'SG_ASSOC.TMP00015.TMNUMNF'
    end
    object Tb_TemporariaTMCHAVEP: TFloatField
      FieldName = 'TMCHAVEP'
      Origin = 'SG_ASSOC.TMP00015.TMCHAVEP'
    end
    object Tb_TemporariaTMDATANF: TDateTimeField
      FieldName = 'TMDATANF'
      Origin = 'SG_ASSOC.TMP00015.TMDATANF'
    end
    object Tb_TemporariaTMDTVCTO: TDateTimeField
      FieldName = 'TMDTVCTO'
      Origin = 'SG_ASSOC.TMP00015.TMDTVCTO'
    end
    object Tb_TemporariaTMTOTPF: TFloatField
      FieldName = 'TMTOTPF'
      Origin = 'SG_ASSOC.TMP00015.TMTOTPF'
    end
    object Tb_TemporariaTMTOTNF: TFloatField
      FieldName = 'TMTOTNF'
      Origin = 'SG_ASSOC.TMP00015.TMTOTNF'
    end
    object Tb_TemporariaTMTOTDUP: TFloatField
      FieldName = 'TMTOTDUP'
      Origin = 'SG_ASSOC.TMP00015.TMTOTDUP'
    end
    object Tb_TemporariaTMTOTPAG: TFloatField
      FieldName = 'TMTOTPAG'
      Origin = 'SG_ASSOC.TMP00015.TMTOTPAG'
    end
    object Tb_TemporariaTMTOTDES: TFloatField
      FieldName = 'TMTOTDES'
      Origin = 'SG_ASSOC.TMP00015.TMTOTDES'
    end
    object Tb_TemporariaTMTOTJUR: TFloatField
      FieldName = 'TMTOTJUR'
      Origin = 'SG_ASSOC.TMP00015.TMTOTJUR'
    end
    object Tb_TemporariaTMTOTPED: TFloatField
      FieldName = 'TMTOTPED'
      Origin = 'SG_ASSOC.TMP00015.TMTOTPED'
    end
    object Tb_TemporariaTMQTDDUP: TFloatField
      FieldName = 'TMQTDDUP'
      Origin = 'SG_ASSOC.TMP00015.TMQTDDUP'
    end
    object Tb_TemporariaTMQTDNF: TFloatField
      FieldName = 'TMQTDNF'
      Origin = 'SG_ASSOC.TMP00015.TMQTDNF'
    end
    object Tb_Temporarialucro: TFloatField
      FieldKind = fkCalculated
      FieldName = 'lucro'
      Calculated = True
    end
    object Tb_Temporariapercentual: TFloatField
      FieldKind = fkCalculated
      FieldName = 'percentual'
      Calculated = True
    end
  end
end
