object Frm_ResFat: TFrm_ResFat
  Left = 192
  Top = 107
  Width = 544
  Height = 193
  Caption = 'Resumo do Faturamento(Fechamento)'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
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
    Left = 30
    Top = 10
    Width = 139
    Height = 13
    Caption = 'Resumo de Movimento entre:'
  end
  object Label3: TLabel
    Left = 262
    Top = 10
    Width = 6
    Height = 13
    Caption = #224
  end
  object lbl_saldo: TLabel
    Left = 32
    Top = 64
    Width = 76
    Height = 13
    Caption = 'Saldo no Final..:'
  end
  object MDT1: TMaskEdit
    Left = 174
    Top = 6
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
    Left = 281
    Top = 6
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
  object bbImprimir: TBitBtn
    Left = 28
    Top = 113
    Width = 150
    Height = 39
    Caption = '&Imprimir'
    TabOrder = 3
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
    Layout = blGlyphTop
    NumGlyphs = 2
  end
  object bbSair: TBitBtn
    Left = 362
    Top = 113
    Width = 150
    Height = 39
    Caption = '&Sair'
    TabOrder = 4
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
    Layout = blGlyphTop
    NumGlyphs = 2
  end
  object cb_avisar: TCheckBox
    Left = 32
    Top = 27
    Width = 289
    Height = 17
    Caption = 'Avisar Caso Haja Pedidos Pendentes'
    Checked = True
    State = cbChecked
    TabOrder = 2
  end
  object CB_QTDESTOQUE: TCheckBox
    Left = 33
    Top = 47
    Width = 289
    Height = 17
    Caption = 'Mostrar Quantidade de Estoque no Final do Relat'#243'rio'
    Checked = True
    State = cbChecked
    TabOrder = 5
  end
  object edt_datasaldo: TDateEdit
    Left = 112
    Top = 63
    Width = 121
    Height = 21
    NumGlyphs = 2
    TabOrder = 6
  end
  object Qr_Exc: TQuery
    OnCalcFields = Qr_ExcCalcFields
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select AJSEQ AS CODIGO, '
      ' (AJSEQ-AJSEQ) AS ORDEM, '
      ' (AJSEQ-AJSEQ) AS CODCLI,'
      'AJCODEMP AS CODEMP, '
      ' AJMOTIVO AS NOME,'
      ' AJUSREXC AS CODUSR, '
      ' AJDATEXC AS DATAMOV,'
      ' AJHOREXC AS HORAMOV, '
      ' AJCODEMP AS QUANTIDADE,'
      'AJTIPOM  AS TIPOMOV '
      'from OLD_CADAJU where AJCODEMP is null')
    Left = 232
    Top = 72
    object Qr_ExcCODIGO: TFloatField
      FieldName = 'CODIGO'
      Origin = 'SG_ASSOC.OLD_CADP01.P1CHAVE'
    end
    object Qr_ExcORDEM: TFloatField
      FieldName = 'ORDEM'
      Origin = 'SG_ASSOC.OLD_CADP01.P1ORDEM'
    end
    object Qr_ExcCODCLI: TFloatField
      FieldName = 'CODCLI'
      Origin = 'SG_ASSOC.OLD_CADP01.P1CODCLI'
    end
    object Qr_ExcCODEMP: TFloatField
      FieldName = 'CODEMP'
      Origin = 'SG_ASSOC.OLD_CADP01.P1CODEMP'
    end
    object Qr_ExcNOME: TStringField
      FieldName = 'NOME'
      Origin = 'SG_ASSOC.OLD_CADP01.P1OBS1'
      Size = 60
    end
    object Qr_ExcCODUSR: TFloatField
      FieldName = 'CODUSR'
      Origin = 'SG_ASSOC.OLD_CADP01.P1USRMOD'
    end
    object Qr_ExcDATAMOV: TDateTimeField
      FieldName = 'DATAMOV'
      Origin = 'SG_ASSOC.OLD_CADP01.P1DTMOD'
    end
    object Qr_ExcHORAMOV: TStringField
      FieldName = 'HORAMOV'
      Origin = 'SG_ASSOC.OLD_CADP01.P1HRMOD'
      Size = 10
    end
    object Qr_ExcTIPOMOV: TFloatField
      FieldName = 'TIPOMOV'
      Origin = 'SG_ASSOC.OLD_CADP01.P1CODEMP'
    end
    object Qr_Excnomusr: TStringField
      FieldKind = fkCalculated
      FieldName = 'nomusr'
      Size = 40
      Calculated = True
    end
    object Qr_ExcQUANTIDADE: TFloatField
      FieldName = 'QUANTIDADE'
      Origin = 'SG_ASSOC.OLD_CADAJU.AJCODEMP'
    end
  end
end
