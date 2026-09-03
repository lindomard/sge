object Frm_LucSai: TFrm_LucSai
  Left = 192
  Top = 114
  Width = 544
  Height = 173
  Caption = 'Comparando o Pre'#231'o de Vendas com o Valor da Entrada mais proxima'
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
      'Select * from TMP00036')
    Left = 280
    Top = 88
    object Tb_TemporariaSAI_CODEMP: TFloatField
      FieldName = 'SAI_CODEMP'
      Origin = 'SG_ASSOC.TMP00036.SAI_CODEMP'
    end
    object Tb_TemporariaSAI_DESCRICAO: TStringField
      FieldName = 'SAI_DESCRICAO'
      Origin = 'SG_ASSOC.TMP00036.SAI_DESCRICAO'
      Size = 53
    end
    object Tb_TemporariaSAI_UNID: TStringField
      FieldName = 'SAI_UNID'
      Origin = 'SG_ASSOC.TMP00036.SAI_UNID'
      Size = 10
    end
    object Tb_TemporariaSAI_CODPROD: TFloatField
      FieldName = 'SAI_CODPROD'
      Origin = 'SG_ASSOC.TMP00036.SAI_CODPROD'
    end
    object Tb_TemporariaSAI_NUMERO: TFloatField
      FieldName = 'SAI_NUMERO'
      Origin = 'SG_ASSOC.TMP00036.SAI_NUMERO'
    end
    object Tb_TemporariaSAI_DATA: TDateTimeField
      FieldName = 'SAI_DATA'
      Origin = 'SG_ASSOC.TMP00036.SAI_DATA'
    end
    object Tb_TemporariaSAI_CNPJ: TStringField
      FieldName = 'SAI_CNPJ'
      Origin = 'SG_ASSOC.TMP00036.SAI_CNPJ'
      Size = 14
    end
    object Tb_TemporariaSAI_UF: TStringField
      FieldName = 'SAI_UF'
      Origin = 'SG_ASSOC.TMP00036.SAI_UF'
      Size = 2
    end
    object Tb_TemporariaSAI_CFOP: TFloatField
      FieldName = 'SAI_CFOP'
      Origin = 'SG_ASSOC.TMP00036.SAI_CFOP'
    end
    object Tb_TemporariaSAI_QUANTIDADE: TFloatField
      FieldName = 'SAI_QUANTIDADE'
      Origin = 'SG_ASSOC.TMP00036.SAI_QUANTIDADE'
    end
    object Tb_TemporariaSAI_ITEM: TStringField
      FieldName = 'SAI_ITEM'
      Origin = 'SG_ASSOC.TMP00036.SAI_ITEM'
      Size = 3
    end
    object Tb_TemporariaSAI_VLPRODUTO: TFloatField
      FieldName = 'SAI_VLPRODUTO'
      Origin = 'SG_ASSOC.TMP00036.SAI_VLPRODUTO'
    end
    object Tb_TemporariaSAI_PCOUNIT: TFloatField
      FieldName = 'SAI_PCOUNIT'
      Origin = 'SG_ASSOC.TMP00036.SAI_PCOUNIT'
    end
    object Tb_TemporariaSAI_VLDESCONTO: TFloatField
      FieldName = 'SAI_VLDESCONTO'
      Origin = 'SG_ASSOC.TMP00036.SAI_VLDESCONTO'
    end
    object Tb_TemporariaSAI_ICMSRET: TFloatField
      FieldName = 'SAI_ICMSRET'
      Origin = 'SG_ASSOC.TMP00036.SAI_ICMSRET'
    end
    object Tb_TemporariaSAI_ALIQ: TFloatField
      FieldName = 'SAI_ALIQ'
      Origin = 'SG_ASSOC.TMP00036.SAI_ALIQ'
    end
    object Tb_TemporariaSAI_ACRECV: TFloatField
      FieldName = 'SAI_ACRECV'
      Origin = 'SG_ASSOC.TMP00036.SAI_ACRECV'
    end
    object Tb_TemporariaSAI_ACREGER: TFloatField
      FieldName = 'SAI_ACREGER'
      Origin = 'SG_ASSOC.TMP00036.SAI_ACREGER'
    end
    object Tb_TemporariaSAI_CST: TStringField
      FieldName = 'SAI_CST'
      Origin = 'SG_ASSOC.TMP00036.SAI_CST'
      Size = 3
    end
    object Tb_TemporariaENT_ALIQ: TFloatField
      FieldName = 'ENT_ALIQ'
      Origin = 'SG_ASSOC.TMP00036.ENT_ALIQ'
    end
    object Tb_TemporariaENT_ICMSRET: TFloatField
      FieldName = 'ENT_ICMSRET'
      Origin = 'SG_ASSOC.TMP00036.ENT_ICMSRET'
    end
    object Tb_TemporariaENT_CFOP: TFloatField
      FieldName = 'ENT_CFOP'
      Origin = 'SG_ASSOC.TMP00036.ENT_CFOP'
    end
    object Tb_TemporariaENT_QUANTIDADE: TFloatField
      FieldName = 'ENT_QUANTIDADE'
      Origin = 'SG_ASSOC.TMP00036.ENT_QUANTIDADE'
    end
    object Tb_TemporariaENT_DESCRAT: TFloatField
      FieldName = 'ENT_DESCRAT'
      Origin = 'SG_ASSOC.TMP00036.ENT_DESCRAT'
    end
    object Tb_TemporariaENT_VLDESCONTO: TFloatField
      FieldName = 'ENT_VLDESCONTO'
      Origin = 'SG_ASSOC.TMP00036.ENT_VLDESCONTO'
    end
    object Tb_TemporariaENT_VLUNITARIO: TFloatField
      FieldName = 'ENT_VLUNITARIO'
      Origin = 'SG_ASSOC.TMP00036.ENT_VLUNITARIO'
    end
    object Tb_TemporariaENT_CNPJ: TStringField
      FieldName = 'ENT_CNPJ'
      Origin = 'SG_ASSOC.TMP00036.ENT_CNPJ'
      Size = 14
    end
    object Tb_TemporariaENT_UF: TStringField
      FieldName = 'ENT_UF'
      Origin = 'SG_ASSOC.TMP00036.ENT_UF'
      Size = 2
    end
    object Tb_TemporariaENT_NUMERO: TFloatField
      FieldName = 'ENT_NUMERO'
      Origin = 'SG_ASSOC.TMP00036.ENT_NUMERO'
    end
    object Tb_TemporariaENT_DATA: TStringField
      FieldName = 'ENT_DATA'
      Origin = 'SG_ASSOC.TMP00036.ENT_DATA'
      Size = 10
    end
    object Tb_Temporariasai_total: TFloatField
      FieldKind = fkCalculated
      FieldName = 'sai_total'
      Calculated = True
    end
    object Tb_Temporariaent_pcouni: TFloatField
      FieldKind = fkCalculated
      FieldName = 'ent_pcouni'
      Calculated = True
    end
    object Tb_Temporariaent_totent: TFloatField
      FieldKind = fkCalculated
      FieldName = 'ent_totent'
      Calculated = True
    end
    object Tb_Temporariaent_lucro: TFloatField
      FieldKind = fkCalculated
      FieldName = 'ent_lucro'
      Calculated = True
    end
    object Tb_Temporariasai_totacre: TFloatField
      FieldKind = fkCalculated
      FieldName = 'sai_totacre'
      Calculated = True
    end
  end
end
