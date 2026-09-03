object Frm_MinRel: TFrm_MinRel
  Left = 190
  Top = 114
  Width = 610
  Height = 389
  Caption = 'Relatorio de Pedidos Por Transportadoras'
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
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object Label5: TLabel
    Left = 19
    Top = 9
    Width = 75
    Height = 13
    Caption = 'Transportadora:'
  end
  object Label2: TLabel
    Left = 31
    Top = 204
    Width = 63
    Height = 13
    AutoSize = False
    Caption = 'Per'#237'odo:'
  end
  object Label3: TLabel
    Left = 173
    Top = 204
    Width = 6
    Height = 13
    Caption = #224
  end
  object Label1: TLabel
    Left = 20
    Top = 50
    Width = 34
    Height = 13
    Caption = 'cliente:'
  end
  object Label4: TLabel
    Left = 20
    Top = 91
    Width = 57
    Height = 13
    Caption = 'Numero NF:'
  end
  object Label6: TLabel
    Left = 7
    Top = 132
    Width = 85
    Height = 13
    Caption = 'Chave do Pedido:'
  end
  object CODTRA: TEdit
    Left = 95
    Top = 9
    Width = 62
    Height = 19
    Ctl3D = False
    ParentCtl3D = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 0
    OnExit = CODTRAExit
    OnKeyPress = CODTRAKeyPress
  end
  object lbx_codtra: TListBox
    Left = 156
    Top = 9
    Width = 415
    Height = 42
    Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
    Color = 13828095
    Ctl3D = False
    ItemHeight = 13
    ParentCtl3D = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 1
    OnKeyDown = lbx_codtraKeyDown
  end
  object OMITIR_TRA: TCheckBox
    Left = 96
    Top = 33
    Width = 54
    Height = 17
    Caption = 'Omitir'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 2
  end
  object MDT1: TMaskEdit
    Left = 85
    Top = 200
    Width = 81
    Height = 19
    Hint = 
      'Para filtrar t'#237'tulos somente a Partir de '#13#10'uma determinada data ' +
      #13#10'digite a mesma.'
    Ctl3D = False
    EditMask = '!99/99/9999;1; '
    MaxLength = 10
    ParentCtl3D = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 3
    Text = '  /  /    '
    OnExit = MDT1Exit
  end
  object MDT2: TMaskEdit
    Left = 190
    Top = 200
    Width = 80
    Height = 19
    Hint = 
      'Para filtrar t'#237'tulos at'#233' '#13#10'uma determinada data '#13#10'digite a mesma' +
      '.'
    Ctl3D = False
    EditMask = '!99/99/9999;1; '
    MaxLength = 10
    ParentCtl3D = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 4
    Text = '  /  /    '
    OnExit = MDT2Exit
  end
  object bbImprimir: TBitBtn
    Left = 28
    Top = 276
    Width = 150
    Height = 40
    Hint = 'Imprime os T'#237'tulos '#13#10'Selecionados'
    Caption = '&Imprimir'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 7
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
    Left = 396
    Top = 275
    Width = 150
    Height = 40
    Hint = 'Fecha Este Formul'#225'rio'#13#10'e Volta ao Menu Principal'
    Caption = '&Sair'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 8
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
  object CB_BLOQ: TCheckBox
    Left = 86
    Top = 225
    Width = 219
    Height = 17
    Caption = 'Bloquear Duplicacoes'
    Checked = True
    State = cbChecked
    TabOrder = 5
  end
  object CB_RESUMIDO: TCheckBox
    Left = 87
    Top = 242
    Width = 97
    Height = 17
    Caption = 'Resumido'
    TabOrder = 6
  end
  object edt_codcli: TEdit
    Left = 96
    Top = 50
    Width = 62
    Height = 19
    Ctl3D = False
    ParentCtl3D = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 9
    OnExit = edt_codcliExit
    OnKeyPress = edt_codcliKeyPress
  end
  object lbx_codcli: TListBox
    Left = 157
    Top = 50
    Width = 415
    Height = 42
    Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
    Color = 13828095
    Ctl3D = False
    ItemHeight = 13
    ParentCtl3D = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 10
    OnKeyDown = lbx_codcliKeyDown
  end
  object OMITIR_CLI: TCheckBox
    Left = 97
    Top = 74
    Width = 54
    Height = 17
    Caption = 'Omitir'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 11
  end
  object edt_numnf: TEdit
    Left = 96
    Top = 91
    Width = 62
    Height = 19
    Ctl3D = False
    ParentCtl3D = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 12
    OnExit = edt_numnfExit
  end
  object lbx_numnf: TListBox
    Left = 157
    Top = 91
    Width = 415
    Height = 42
    Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
    Color = 13828095
    Ctl3D = False
    ItemHeight = 13
    ParentCtl3D = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 13
    OnKeyDown = lbx_numnfKeyDown
  end
  object OMITIR_NF: TCheckBox
    Left = 97
    Top = 115
    Width = 54
    Height = 17
    Caption = 'Omitir'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 14
  end
  object edt_chave_ped: TEdit
    Left = 97
    Top = 132
    Width = 62
    Height = 19
    Ctl3D = False
    ParentCtl3D = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 15
    OnExit = edt_chave_pedExit
  end
  object lbx_chave_ped: TListBox
    Left = 158
    Top = 132
    Width = 415
    Height = 42
    Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
    Color = 13828095
    Ctl3D = False
    ItemHeight = 13
    ParentCtl3D = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 16
    OnKeyDown = lbx_chave_pedKeyDown
  end
  object OMITIR_PED: TCheckBox
    Left = 98
    Top = 156
    Width = 54
    Height = 17
    Caption = 'Omitir'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 17
  end
  object Tb_Min2: TQuery
    CachedUpdates = True
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'SELECT '
      'CM1CODTRA'
      ',CM1INCDTHORA'
      ',CM1USRINC'
      ',CM1DATA'
      ',TRRAZTRA'
      ',CM2CODEMP'
      ',CM2LOTSEQ'
      ',CM2CODMIN'
      ',CM2SEQ'
      ',CM2TIPO'
      ',CM2LOTSEQ_CP'
      ',CM2NUMERO'
      ',CM2CLIFOR'
      ',CM2CODIGO'
      ',CM2TIPDOC'
      ',CM2NUMDOC'
      ',CM2QTDVOL'
      ',CM2PESOB'
      ',CM2PESOL'
      ',CM2VALOR'
      ',CM2OBS01'
      ',CM2OBS02'
      ',CM2OBS03'
      ',CM2DTCONF'
      ',CM2USRCONF'
      ',CM2PED_CODEMP'
      ',CM2QTDITENS'
      ',CM2QTDUND'
      ',CM2TIPOPED'
      ',CM2CODCLI'
      ',CM2VALFRE'
      ',CM2QTDPAG'
      ',CM2CODBCO'
      ',CM2DATANF'
      ',CRAZAO AS NOMCLI'
      ',CCIDADE'
      ',CUF'
      ',CFONE01'
      ' from CADMIN1,CADMIN2, CADCLI,CADTRA'
      'where CM1CODEMP=0'
      'AND CM1LOTSEQ=0'
      'AND CM1CODMIN=0'
      'and CM2CODEMP=CM1CODEMP'
      'AND CM2LOTSEQ=CM1LOTSEQ'
      'AND CM2CODMIN=CM1CODMIN'
      'AND TRCODTRA=CM1CODTRA'
      'AND CCODCLI=CM2CODCLI'
      'AND CCODCLI=CM2CODCLI'
      '')
    Left = 532
    Top = 8
    object Tb_Min2CM2CODEMP: TFloatField
      FieldName = 'CM2CODEMP'
      Origin = 'SG_ASSOC.CADMIN2.CM2CODEMP'
    end
    object Tb_Min2CM2CODMIN: TFloatField
      FieldName = 'CM2CODMIN'
      Origin = 'SG_ASSOC.CADMIN2.CM2CODMIN'
    end
    object Tb_Min2CM2SEQ: TFloatField
      FieldName = 'CM2SEQ'
      Origin = 'SG_ASSOC.CADMIN2.CM2SEQ'
    end
    object Tb_Min2CM2TIPO: TStringField
      DisplayLabel = 'Tipo'
      FieldName = 'CM2TIPO'
      Origin = 'SG_ASSOC.CADMIN2.CM2TIPO'
      Size = 2
    end
    object Tb_Min2CM2NUMERO: TFloatField
      DisplayLabel = 'Numero'
      FieldName = 'CM2NUMERO'
      Origin = 'SG_ASSOC.CADMIN2.CM2NUMERO'
    end
    object Tb_Min2CM2VALOR: TFloatField
      DisplayLabel = 'Valor'
      FieldName = 'CM2VALOR'
      Origin = 'SG_ASSOC.CADMIN2.CM2VALOR'
    end
    object Tb_Min2CM2DTCONF: TDateTimeField
      FieldName = 'CM2DTCONF'
      Origin = 'SG_ASSOC.CADMIN2.CM2DTCONF'
    end
    object Tb_Min2CM2USRCONF: TFloatField
      FieldName = 'CM2USRCONF'
      Origin = 'SG_ASSOC.CADMIN2.CM2USRCONF'
    end
    object Tb_Min2CM2CLIFOR: TStringField
      FieldName = 'CM2CLIFOR'
      Origin = 'SG_ASSOC.CADMIN2.CM2CLIFOR'
      Size = 2
    end
    object Tb_Min2CM2CODIGO: TFloatField
      FieldName = 'CM2CODIGO'
      Origin = 'SG_ASSOC.CADMIN2.CM2CODIGO'
    end
    object Tb_Min2CM2TIPDOC: TStringField
      FieldName = 'CM2TIPDOC'
      Origin = 'SG_ASSOC.CADMIN2.CM2TIPDOC'
      Size = 2
    end
    object Tb_Min2CM2NUMDOC: TFloatField
      FieldName = 'CM2NUMDOC'
      Origin = 'SG_ASSOC.CADMIN2.CM2NUMDOC'
    end
    object Tb_Min2CM2OBS01: TStringField
      FieldName = 'CM2OBS01'
      Origin = 'SG_ASSOC.CADMIN2.CM2OBS01'
      Size = 60
    end
    object Tb_Min2CM2OBS02: TStringField
      FieldName = 'CM2OBS02'
      Origin = 'SG_ASSOC.CADMIN2.CM2OBS02'
      Size = 60
    end
    object Tb_Min2CM2OBS03: TStringField
      FieldName = 'CM2OBS03'
      Origin = 'SG_ASSOC.CADMIN2.CM2OBS03'
      Size = 60
    end
    object Tb_Min2CM2LOTSEQ: TFloatField
      FieldName = 'CM2LOTSEQ'
      Origin = 'SG_ASSOC.CADMIN2.CM2LOTSEQ'
    end
    object Tb_Min2CM2LOTSEQ_CP: TFloatField
      FieldName = 'CM2LOTSEQ_CP'
      Origin = 'SG_ASSOC.CADMIN2.CM2LOTSEQ_CP'
    end
    object Tb_Min2CM2QTDVOL: TFloatField
      DisplayLabel = 'Qtd.Vol'
      FieldName = 'CM2QTDVOL'
      Origin = 'SG_ASSOC.CADMIN2.CM2QTDVOL'
      DisplayFormat = '###'
    end
    object Tb_Min2CM2PESOB: TFloatField
      DisplayLabel = 'Peso Bruto'
      FieldName = 'CM2PESOB'
      Origin = 'SG_ASSOC.CADMIN2.CM2PESOB'
      DisplayFormat = '###0.000'
    end
    object Tb_Min2CM2PESOL: TFloatField
      DisplayLabel = 'Peso L'#237'q'
      FieldName = 'CM2PESOL'
      Origin = 'SG_ASSOC.CADMIN2.CM2PESOL'
      DisplayFormat = '##0.000'
    end
    object Tb_Min2CM2PED_CODEMP: TFloatField
      DisplayLabel = 'Empresa'
      FieldName = 'CM2PED_CODEMP'
      Origin = 'SG_ASSOC.CADMIN2.CM2PED_CODEMP'
    end
    object Tb_Min2CM2QTDITENS: TFloatField
      FieldName = 'CM2QTDITENS'
      Origin = 'SG_ASSOC.CADMIN2.CM2QTDITENS'
    end
    object Tb_Min2CM2QTDUND: TFloatField
      FieldName = 'CM2QTDUND'
      Origin = 'SG_ASSOC.CADMIN2.CM2QTDUND'
    end
    object Tb_Min2CM2TIPOPED: TFloatField
      FieldName = 'CM2TIPOPED'
      Origin = 'SG_ASSOC.CADMIN2.CM2TIPOPED'
    end
    object Tb_Min2CM2CODCLI: TFloatField
      FieldName = 'CM2CODCLI'
      Origin = 'SG_ASSOC.CADMIN2.CM2CODCLI'
    end
    object Tb_Min2CM2VALFRE: TFloatField
      FieldName = 'CM2VALFRE'
      Origin = 'SG_ASSOC.CADMIN2.CM2VALFRE'
    end
    object Tb_Min2NOMCLI: TStringField
      FieldName = 'NOMCLI'
      Origin = 'SG_ASSOC.CADCLI.CRAZAO'
      Size = 40
    end
    object Tb_Min2CM2QTDPAG: TFloatField
      FieldName = 'CM2QTDPAG'
      Origin = 'SG_ASSOC.CADMIN2.CM2QTDPAG'
    end
    object Tb_Min2CM2CODBCO: TFloatField
      FieldName = 'CM2CODBCO'
      Origin = 'SG_ASSOC.CADMIN2.CM2CODBCO'
    end
    object Tb_Min2CM2DATANF: TDateTimeField
      FieldName = 'CM2DATANF'
      Origin = 'SG_ASSOC.CADMIN2.CM2DATANF'
    end
    object Tb_Min2CCIDADE: TStringField
      FieldName = 'CCIDADE'
      Origin = 'SG_ASSOC.CADCLI.CCIDADE'
      Size = 30
    end
    object Tb_Min2CUF: TStringField
      FieldName = 'CUF'
      Origin = 'SG_ASSOC.CADCLI.CUF'
      Size = 2
    end
    object Tb_Min2CFONE01: TStringField
      FieldName = 'CFONE01'
      Origin = 'SG_ASSOC.CADCLI.CFONE01'
      Size = 16
    end
    object Tb_Min2CM1CODTRA: TFloatField
      FieldName = 'CM1CODTRA'
      Origin = 'SG_ASSOC.CADMIN1.CM1CODTRA'
    end
    object Tb_Min2TRRAZTRA: TStringField
      FieldName = 'TRRAZTRA'
      Origin = 'SG_ASSOC.CADTRA.TRRAZTRA'
      Size = 40
    end
    object Tb_Min2CM1DATA: TDateTimeField
      FieldName = 'CM1DATA'
      Origin = 'SG_ASSOC.CADMIN1.CM1DATA'
    end
    object Tb_Min2CM1INCDTHORA: TDateTimeField
      FieldName = 'CM1INCDTHORA'
      Origin = 'SG_ASSOC.CADMIN1.CM1INCDTHORA'
    end
    object Tb_Min2CM1USRINC: TFloatField
      FieldName = 'CM1USRINC'
      Origin = 'SG_ASSOC.CADMIN1.CM1USRINC'
    end
    object Tb_Min2Situacao: TStringField
      FieldName = 'Situacao'
      Size = 10
    end
    object Tb_Min2P1DATENT: TDateTimeField
      FieldName = 'P1DATENT'
    end
  end
  object Tb_Min1: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'SELECT'
      ' CM1CODTRA'
      ',CM1INCDTHORA'
      ',CM1USRINC'
      ',CM1DATA'
      ',TRRAZTRA'
      ',CM1CODMIN'
      ',M1NOMEENT'
      ',CM1RG'
      ',CM1TOTAL'
      ',CM1CNPF'
      ',CM1TOTAL AS TOTPED'
      ',CM1TOTAL AS TOTBON'
      ''
      ''
      ' from CADMIN1,CADTRA'
      'where CM1CODEMP=0'
      'AND CM1LOTSEQ=0'
      'AND CM1CODMIN=0'
      'AND TRCODTRA=CM1CODTRA'
      '')
    Left = 504
    Top = 72
    object Tb_Min1CM1CODTRA: TFloatField
      FieldName = 'CM1CODTRA'
      Origin = 'SG_ASSOC.CADMIN1.CM1CODTRA'
    end
    object Tb_Min1CM1INCDTHORA: TDateTimeField
      FieldName = 'CM1INCDTHORA'
      Origin = 'SG_ASSOC.CADMIN1.CM1INCDTHORA'
    end
    object Tb_Min1CM1USRINC: TFloatField
      FieldName = 'CM1USRINC'
      Origin = 'SG_ASSOC.CADMIN1.CM1USRINC'
    end
    object Tb_Min1CM1DATA: TDateTimeField
      FieldName = 'CM1DATA'
      Origin = 'SG_ASSOC.CADMIN1.CM1DATA'
    end
    object Tb_Min1TRRAZTRA: TStringField
      FieldName = 'TRRAZTRA'
      Origin = 'SG_ASSOC.CADTRA.TRRAZTRA'
      Size = 40
    end
    object Tb_Min1CM1CODMIN: TFloatField
      FieldName = 'CM1CODMIN'
      Origin = 'SG_ASSOC.CADMIN1.CM1CODMIN'
    end
    object Tb_Min1M1NOMEENT: TStringField
      FieldName = 'M1NOMEENT'
      Origin = 'SG_ASSOC.CADMIN1.M1NOMEENT'
      Size = 40
    end
    object Tb_Min1CM1RG: TStringField
      FieldName = 'CM1RG'
      Origin = 'SG_ASSOC.CADMIN1.CM1RG'
      Size = 30
    end
    object Tb_Min1CM1TOTAL: TFloatField
      FieldName = 'CM1TOTAL'
      Origin = 'SG_ASSOC.CADMIN1.CM1TOTAL'
    end
    object Tb_Min1CM1CNPF: TStringField
      FieldName = 'CM1CNPF'
      Origin = 'SG_ASSOC.CADMIN1.CM1CNPF'
      Size = 30
    end
    object Tb_Min1TOTPED: TFloatField
      FieldName = 'TOTPED'
      Origin = 'SG_ASSOC.CADMIN1.CM1TOTAL'
    end
    object Tb_Min1TOTBON: TFloatField
      FieldName = 'TOTBON'
      Origin = 'SG_ASSOC.CADMIN1.CM1TOTAL'
    end
  end
end
