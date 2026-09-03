object Frm_LucEnt: TFrm_LucEnt
  Left = 131
  Top = 114
  Width = 605
  Height = 174
  Caption = 
    'Comparando as Compras em Rela'#231#227'o ao pre'#231'o de Venda(venda mais pr' +
    'oxima)'
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
  object Tb_Temporaria: TQuery
    OnCalcFields = Tb_TemporariaCalcFields
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select * from TMP00058')
    Left = 280
    Top = 88
    object Tb_TemporariaCPR_CODEMP: TFloatField
      FieldName = 'CPR_CODEMP'
      Origin = 'SG_ASSOC.TMP00058.CPR_CODEMP'
    end
    object Tb_TemporariaCPR_DESCRICAO: TStringField
      FieldName = 'CPR_DESCRICAO'
      Origin = 'SG_ASSOC.TMP00058.CPR_DESCRICAO'
      Size = 53
    end
    object Tb_TemporariaCPR_UNID: TStringField
      FieldName = 'CPR_UNID'
      Origin = 'SG_ASSOC.TMP00058.CPR_UNID'
      Size = 10
    end
    object Tb_TemporariaCPR_CODPROD: TFloatField
      FieldName = 'CPR_CODPROD'
      Origin = 'SG_ASSOC.TMP00058.CPR_CODPROD'
    end
    object Tb_TemporariaCPR_NUMERO: TFloatField
      FieldName = 'CPR_NUMERO'
      Origin = 'SG_ASSOC.TMP00058.CPR_NUMERO'
    end
    object Tb_TemporariaCPR_DATA: TDateTimeField
      FieldName = 'CPR_DATA'
      Origin = 'SG_ASSOC.TMP00058.CPR_DATA'
    end
    object Tb_TemporariaCPR_CNPJ: TStringField
      FieldName = 'CPR_CNPJ'
      Origin = 'SG_ASSOC.TMP00058.CPR_CNPJ'
      Size = 14
    end
    object Tb_TemporariaCPR_UF: TStringField
      FieldName = 'CPR_UF'
      Origin = 'SG_ASSOC.TMP00058.CPR_UF'
      Size = 2
    end
    object Tb_TemporariaCPR_CFOP: TFloatField
      FieldName = 'CPR_CFOP'
      Origin = 'SG_ASSOC.TMP00058.CPR_CFOP'
    end
    object Tb_TemporariaCPR_QUANTIDADE: TFloatField
      FieldName = 'CPR_QUANTIDADE'
      Origin = 'SG_ASSOC.TMP00058.CPR_QUANTIDADE'
    end
    object Tb_TemporariaCPR_ITEM: TStringField
      FieldName = 'CPR_ITEM'
      Origin = 'SG_ASSOC.TMP00058.CPR_ITEM'
      Size = 3
    end
    object Tb_TemporariaCPR_VLPRODUTO: TFloatField
      FieldName = 'CPR_VLPRODUTO'
      Origin = 'SG_ASSOC.TMP00058.CPR_VLPRODUTO'
    end
    object Tb_TemporariaCPR_PCOUNIT: TFloatField
      FieldName = 'CPR_PCOUNIT'
      Origin = 'SG_ASSOC.TMP00058.CPR_PCOUNIT'
    end
    object Tb_TemporariaCPR_VLDESCONTO: TFloatField
      FieldName = 'CPR_VLDESCONTO'
      Origin = 'SG_ASSOC.TMP00058.CPR_VLDESCONTO'
    end
    object Tb_TemporariaCPR_ICMSRET: TFloatField
      FieldName = 'CPR_ICMSRET'
      Origin = 'SG_ASSOC.TMP00058.CPR_ICMSRET'
    end
    object Tb_TemporariaCPR_ALIQ: TFloatField
      FieldName = 'CPR_ALIQ'
      Origin = 'SG_ASSOC.TMP00058.CPR_ALIQ'
    end
    object Tb_TemporariaCPR_ACRECV: TFloatField
      FieldName = 'CPR_ACRECV'
      Origin = 'SG_ASSOC.TMP00058.CPR_ACRECV'
    end
    object Tb_TemporariaCPR_ACREGER: TFloatField
      FieldName = 'CPR_ACREGER'
      Origin = 'SG_ASSOC.TMP00058.CPR_ACREGER'
    end
    object Tb_TemporariaCPR_CST: TStringField
      FieldName = 'CPR_CST'
      Origin = 'SG_ASSOC.TMP00058.CPR_CST'
      Size = 3
    end
    object Tb_TemporariaVDA_ALIQ: TFloatField
      FieldName = 'VDA_ALIQ'
      Origin = 'SG_ASSOC.TMP00058.VDA_ALIQ'
    end
    object Tb_TemporariaVDA_ICMSRET: TFloatField
      FieldName = 'VDA_ICMSRET'
      Origin = 'SG_ASSOC.TMP00058.VDA_ICMSRET'
    end
    object Tb_TemporariaVDA_CFOP: TFloatField
      FieldName = 'VDA_CFOP'
      Origin = 'SG_ASSOC.TMP00058.VDA_CFOP'
    end
    object Tb_TemporariaVDA_QUANTIDADE: TFloatField
      FieldName = 'VDA_QUANTIDADE'
      Origin = 'SG_ASSOC.TMP00058.VDA_QUANTIDADE'
    end
    object Tb_TemporariaVDA_DESCRAT: TFloatField
      FieldName = 'VDA_DESCRAT'
      Origin = 'SG_ASSOC.TMP00058.VDA_DESCRAT'
    end
    object Tb_TemporariaVDA_VLDESCONTO: TFloatField
      FieldName = 'VDA_VLDESCONTO'
      Origin = 'SG_ASSOC.TMP00058.VDA_VLDESCONTO'
    end
    object Tb_TemporariaVDA_VLUNITARIO: TFloatField
      FieldName = 'VDA_VLUNITARIO'
      Origin = 'SG_ASSOC.TMP00058.VDA_VLUNITARIO'
    end
    object Tb_TemporariaVDA_CNPJ: TStringField
      FieldName = 'VDA_CNPJ'
      Origin = 'SG_ASSOC.TMP00058.VDA_CNPJ'
      Size = 14
    end
    object Tb_TemporariaVDA_UF: TStringField
      FieldName = 'VDA_UF'
      Origin = 'SG_ASSOC.TMP00058.VDA_UF'
      Size = 2
    end
    object Tb_TemporariaVDA_NUMERO: TFloatField
      FieldName = 'VDA_NUMERO'
      Origin = 'SG_ASSOC.TMP00058.VDA_NUMERO'
    end
    object Tb_TemporariaVDA_DATA: TStringField
      FieldName = 'VDA_DATA'
      Origin = 'SG_ASSOC.TMP00058.VDA_DATA'
      Size = 10
    end
    object Tb_Temporariacpr_total: TFloatField
      FieldKind = fkCalculated
      FieldName = 'cpr_total'
      Calculated = True
    end
    object Tb_Temporariavda_totvda: TFloatField
      FieldKind = fkCalculated
      FieldName = 'vda_totvda'
      Calculated = True
    end
    object Tb_Temporariavda_lucro: TFloatField
      FieldKind = fkCalculated
      FieldName = 'vda_lucro'
      Calculated = True
    end
    object Tb_Temporariacpr_totacre: TFloatField
      FieldKind = fkCalculated
      FieldName = 'cpr_totacre'
      Calculated = True
    end
    object Tb_Temporariavda_pcounit: TFloatField
      FieldKind = fkCalculated
      FieldName = 'vda_pcounit'
      Calculated = True
    end
  end
end
