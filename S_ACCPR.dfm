object Frm_AcCPR: TFrm_AcCPR
  Left = 507
  Top = 201
  Width = 766
  Height = 483
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Relat'#243'rio de Formas de Pagamentos de Duplicatas a Pagar'
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
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 758
    Height = 452
    Align = alClient
    TabOrder = 0
    object Label24: TLabel
      Left = 71
      Top = 227
      Width = 78
      Height = 13
      Caption = 'Banco/Caixa:'
    end
    object Label6: TLabel
      Left = 73
      Top = 264
      Width = 68
      Height = 13
      Caption = 'Usu'#225'rio/Cx:'
    end
    object MDT1: TMaskEdit
      Left = 144
      Top = 8
      Width = 80
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
      Left = 241
      Top = 8
      Width = 80
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
      Left = 109
      Top = 350
      Width = 75
      Height = 25
      Caption = '&Imprimir'
      TabOrder = 2
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
    object BitBtn3: TBitBtn
      Left = 476
      Top = 342
      Width = 75
      Height = 25
      Caption = '&Sair'
      TabOrder = 3
      OnClick = BitBtn3Click
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
    object StaticText2: TStaticText
      Left = 9
      Top = 107
      Width = 135
      Height = 19
      Alignment = taRightJustify
      AutoSize = False
      BorderStyle = sbsSingle
      Caption = 'Fornecedor:'
      Color = 16754342
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 4
    end
    object edt_codfor: TEdit
      Left = 143
      Top = 107
      Width = 80
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 5
      OnExit = edt_codforExit
      OnKeyPress = edt_codforKeyPress
    end
    object lbx_codfor: TListBox
      Left = 222
      Top = 107
      Width = 401
      Height = 42
      Hint = 'Use a Tecla - Delete P/ Remover Codigo Selecionado....'
      Color = 13828095
      Ctl3D = False
      ItemHeight = 13
      ParentCtl3D = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 6
      OnKeyDown = lbx_codforKeyDown
    end
    object OMITIR_FOR: TCheckBox
      Left = 144
      Top = 129
      Width = 51
      Height = 17
      Caption = 'Omitir'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 7
    end
    object StaticText6: TStaticText
      Left = 11
      Top = 148
      Width = 133
      Height = 19
      Alignment = taRightJustify
      AutoSize = False
      BorderStyle = sbsSingle
      Caption = 'Forma de Pagamento:'
      Color = 16754342
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 8
    end
    object edt_CODFP: TEdit
      Left = 143
      Top = 148
      Width = 80
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 9
      OnExit = edt_CODFPExit
      OnKeyPress = edt_CODFPKeyPress
    end
    object lbx_codfp: TListBox
      Left = 222
      Top = 148
      Width = 401
      Height = 42
      Hint = 'Use a Tecla - Delete P/ Remover Codigo Selecionado....'
      Color = 13828095
      Ctl3D = False
      ItemHeight = 13
      ParentCtl3D = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 10
      OnKeyDown = lbx_codfpKeyDown
    end
    object StaticText3: TStaticText
      Left = 11
      Top = 189
      Width = 133
      Height = 19
      Alignment = taRightJustify
      AutoSize = False
      BorderStyle = sbsSingle
      Caption = 'NR Inicial:'
      Color = 16754342
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 11
    end
    object NRI: TEdit
      Left = 143
      Top = 189
      Width = 80
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 12
      OnExit = NRIExit
    end
    object StaticText7: TStaticText
      Left = 222
      Top = 189
      Width = 77
      Height = 19
      Alignment = taRightJustify
      AutoSize = False
      BorderStyle = sbsSingle
      Caption = 'NR Final:'
      Color = 16754342
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 13
    end
    object NRF: TEdit
      Left = 298
      Top = 189
      Width = 80
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 14
      OnExit = NRFExit
    end
    object StaticText4: TStaticText
      Left = 11
      Top = 207
      Width = 133
      Height = 19
      Alignment = taRightJustify
      AutoSize = False
      BorderStyle = sbsSingle
      Caption = 'Lote Inicial:'
      Color = 16754342
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 15
    end
    object LOTEI: TEdit
      Left = 143
      Top = 207
      Width = 80
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 16
      OnExit = LOTEIExit
    end
    object StaticText8: TStaticText
      Left = 222
      Top = 207
      Width = 77
      Height = 19
      Alignment = taRightJustify
      AutoSize = False
      BorderStyle = sbsSingle
      Caption = 'Lote Final:'
      Color = 16754342
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 17
    end
    object LOTEF: TEdit
      Left = 298
      Top = 207
      Width = 80
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 18
      OnExit = LOTEFExit
    end
    object edt_codbco: TEdit
      Left = 143
      Top = 225
      Width = 50
      Height = 19
      Hint = 'Digite o C'#243'digo a Ser Filtrado'
      Ctl3D = False
      ParentCtl3D = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 19
      OnExit = edt_codbcoExit
      OnKeyPress = edt_codbcoKeyPress
    end
    object lbx_codbco: TListBox
      Left = 192
      Top = 225
      Width = 333
      Height = 38
      Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
      Color = 13828095
      Ctl3D = False
      ItemHeight = 13
      ParentCtl3D = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 20
      OnKeyDown = lbx_codbcoKeyDown
    end
    object OMITIR_BCO: TCheckBox
      Left = 143
      Top = 244
      Width = 48
      Height = 17
      Hint = 'Se Marcado os C'#243'digos'#13#10'Selecionados n'#227'o Ser'#227'o'#13#10'Impressos'
      Caption = 'Omitir'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 21
    end
    object edt_codusr_cx: TEdit
      Left = 143
      Top = 262
      Width = 50
      Height = 19
      Hint = 'Digite o C'#243'digo a Ser Filtrado'
      Ctl3D = False
      ParentCtl3D = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 22
      OnExit = edt_codusr_cxExit
      OnKeyPress = edt_codusr_cxKeyPress
    end
    object lbx_codusr_cx: TListBox
      Left = 192
      Top = 262
      Width = 333
      Height = 38
      Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
      Color = 13828095
      Ctl3D = False
      ItemHeight = 13
      ParentCtl3D = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 23
      OnKeyDown = lbx_codusr_cxKeyDown
    end
    object OMITIR_USR_CX: TCheckBox
      Left = 143
      Top = 281
      Width = 48
      Height = 17
      Hint = 'Se Marcado os C'#243'digos'#13#10'Selecionados n'#227'o Ser'#227'o'#13#10'Impressos'
      Caption = 'Omitir'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 24
    end
    object StaticText1: TStaticText
      Left = 9
      Top = 9
      Width = 135
      Height = 19
      Alignment = taRightJustify
      AutoSize = False
      BorderStyle = sbsSingle
      Caption = 'Per'#237'odo de'
      Color = 16754342
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 25
    end
    object StaticText5: TStaticText
      Left = 223
      Top = 8
      Width = 18
      Height = 19
      Alignment = taCenter
      AutoSize = False
      BorderStyle = sbsSingle
      Caption = #224
      Color = 16754342
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 26
    end
    object OMITIR_FP: TCheckBox
      Left = 144
      Top = 172
      Width = 51
      Height = 17
      Caption = 'Omitir'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 27
    end
  end
  object Qr_FP: TQuery
    OnCalcFields = Qr_FPCalcFields
    DatabaseName = 'SG_ASSOC'
    SessionName = 'Default'
    SQL.Strings = (
      'Select * From FPCP where FPCODEMP is null'
      'and FPLOTE is null'
      '')
    Left = 332
    Top = 12
    object Qr_FPforma: TStringField
      FieldKind = fkCalculated
      FieldName = 'forma'
      Size = 10
      Calculated = True
    end
    object Qr_FPFPCODEMP: TFloatField
      FieldName = 'FPCODEMP'
      Origin = 'SG_ASSOC.FPCR.FPCODEMP'
    end
    object Qr_FPFPSEQ: TFloatField
      FieldName = 'FPSEQ'
      Origin = 'SG_ASSOC.FPCR.FPSEQ'
    end
    object Qr_FPFPDATA: TDateTimeField
      FieldName = 'FPDATA'
      Origin = 'SG_ASSOC.FPCR.FPDATA'
    end
    object Qr_FPFPFORMA: TFloatField
      FieldName = 'FPFORMA'
      Origin = 'SG_ASSOC.FPCR.FPFORMA'
    end
    object Qr_FPFPNUMERO: TFloatField
      FieldName = 'FPNUMERO'
      Origin = 'SG_ASSOC.FPCR.FPNUMERO'
    end
    object Qr_FPFPBANCO: TFloatField
      FieldName = 'FPBANCO'
      Origin = 'SG_ASSOC.FPCR.FPBANCO'
    end
    object Qr_FPFPSERIE: TStringField
      FieldName = 'FPSERIE'
      Origin = 'SG_ASSOC.FPCR.FPSERIE'
    end
    object Qr_FPFPVALOR: TFloatField
      FieldName = 'FPVALOR'
      Origin = 'SG_ASSOC.FPCR.FPVALOR'
    end
    object Qr_FPFPLOTE: TFloatField
      FieldName = 'FPLOTE'
      Origin = 'SG_ASSOC.FPCR.FPLOTE'
    end
    object Qr_FPFPCC: TStringField
      FieldName = 'FPCC'
      Origin = 'SG_ASSOC.FPCR.FPCC'
    end
    object Qr_FPFPTIPO: TFloatField
      FieldName = 'FPTIPO'
      Origin = 'SG_ASSOC.FPCR.FPTIPO'
    end
    object Qr_FPFPCAIXA: TFloatField
      FieldName = 'FPCAIXA'
      Origin = 'SG_ASSOC.FPCR.FPCAIXA'
    end
    object Qr_FPFPCODLDR: TFloatField
      FieldName = 'FPCODLDR'
      Origin = 'SG_ASSOC.FPCR.FPCODLDR'
    end
    object Qr_FPFPDATDEP: TDateTimeField
      FieldName = 'FPDATDEP'
      Origin = 'SG_ASSOC.FPCP.FPDATDEP'
    end
  end
  object Qr_Lote: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select FPCP.FPLOTE'
      ' from FPCP, FPCPDUP'
      ' where FPCP.FPCODEMP is null'
      ' and FPCPDUP.FPTIPO=FPCP.FPTIPO'
      ' and FPCPDUP.FPLOTE=FPCP.FPLOTE'
      ' and FPCPDUP.FPCODEMP=FPCP.FPCODEMP'
      'group by FPCP.FPLOTE')
    Left = 24
    Top = 56
    object Qr_LoteFPLOTE: TFloatField
      FieldName = 'FPLOTE'
    end
  end
  object Qr_Tit: TQuery
    OnCalcFields = Qr_TitCalcFields
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select * from FPCPDUP where FPCODEMP is null'
      '             and FPLOTE is null')
    Left = 280
    Top = 56
    object Qr_TitFPCODEMP: TFloatField
      FieldName = 'FPCODEMP'
      Origin = 'SG_ASSOC.FPCRDUP.FPCODEMP'
    end
    object Qr_TitFPSEQ: TFloatField
      FieldName = 'FPSEQ'
      Origin = 'SG_ASSOC.FPCRDUP.FPSEQ'
    end
    object Qr_TitFPLOTE: TFloatField
      FieldName = 'FPLOTE'
      Origin = 'SG_ASSOC.FPCRDUP.FPLOTE'
    end
    object Qr_TitFPNUMERO: TFloatField
      FieldName = 'FPNUMERO'
      Origin = 'SG_ASSOC.FPCRDUP.FPNUMERO'
    end
    object Qr_TitFPDESD: TStringField
      FieldName = 'FPDESD'
      Origin = 'SG_ASSOC.FPCRDUP.FPDESD'
      Size = 2
    end
    object Qr_TitFPTIPO: TFloatField
      FieldName = 'FPTIPO'
      Origin = 'SG_ASSOC.FPCRDUP.FPTIPO'
    end
    object Qr_TitFPDTEMIS: TDateTimeField
      FieldName = 'FPDTEMIS'
      Origin = 'SG_ASSOC.FPCRDUP.FPDTEMIS'
    end
    object Qr_TitFPCAIXA: TFloatField
      FieldName = 'FPCAIXA'
      Origin = 'SG_ASSOC.FPCRDUP.FPCAIXA'
    end
    object Qr_TitFPCODUSR: TFloatField
      FieldName = 'FPCODUSR'
      Origin = 'SG_ASSOC.FPCRDUP.FPCODUSR'
    end
    object Qr_TitFPVALOR: TFloatField
      FieldName = 'FPVALOR'
      Origin = 'SG_ASSOC.FPCRDUP.FPVALOR'
    end
    object Qr_TitFPJUROS: TFloatField
      FieldName = 'FPJUROS'
      Origin = 'SG_ASSOC.FPCRDUP.FPJUROS'
    end
    object Qr_TitFPDESC: TFloatField
      FieldName = 'FPDESC'
      Origin = 'SG_ASSOC.FPCRDUP.FPDESC'
    end
    object Qr_TitFPCODFOR: TFloatField
      FieldName = 'FPCODFOR'
      Origin = 'SG_ASSOC.FPCPDUP.FPCODFOR'
    end
    object Qr_Titnomfor: TStringField
      FieldKind = fkCalculated
      FieldName = 'nomfor'
      Size = 40
      Calculated = True
    end
  end
end
