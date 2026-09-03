object Frm_FPagCr: TFrm_FPagCr
  Left = 18
  Top = 107
  Width = 758
  Height = 375
  Caption = 'Formas de pagamentos de titulos'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = [fsBold]
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 750
    Height = 41
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 1
      Top = 1
      Width = 748
      Height = 17
      Align = alTop
      Alignment = taCenter
      AutoSize = False
      Caption = 'Label1'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 1
      Top = 18
      Width = 748
      Height = 13
      Align = alTop
      Alignment = taCenter
      AutoSize = False
      Caption = 'Label2'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 303
    Width = 750
    Height = 41
    Align = alBottom
    TabOrder = 1
    object BitBtn1: TBitBtn
      Left = 328
      Top = 8
      Width = 75
      Height = 25
      Caption = '&Sair'
      TabOrder = 0
      OnClick = BitBtn1Click
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
  object Panel3: TPanel
    Left = 0
    Top = 41
    Width = 750
    Height = 262
    Align = alClient
    TabOrder = 2
    object STGFP: TStringGrid
      Left = 1
      Top = 1
      Width = 748
      Height = 260
      Align = alClient
      ColCount = 12
      DefaultRowHeight = 15
      FixedCols = 0
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -10
      Font.Name = 'Times New Roman'
      Font.Style = []
      Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goColSizing]
      ParentFont = False
      TabOrder = 0
      OnDrawCell = STGFPDrawCell
      ColWidths = (
        52
        61
        61
        66
        69
        69
        72
        72
        230
        77
        77
        64)
    end
  end
  object Qr_FPDup: TQuery
    OnCalcFields = Qr_FPDupCalcFields
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select * from FPCRDUP where FPCODEMP is null')
    Left = 144
    Top = 8
    object Qr_FPDupFPCODEMP: TFloatField
      FieldName = 'FPCODEMP'
      Origin = 'SG_ASSOC.FPCRDUP.FPCODEMP'
    end
    object Qr_FPDupFPSEQ: TFloatField
      FieldName = 'FPSEQ'
      Origin = 'SG_ASSOC.FPCRDUP.FPSEQ'
    end
    object Qr_FPDupFPLOTE: TFloatField
      FieldName = 'FPLOTE'
      Origin = 'SG_ASSOC.FPCRDUP.FPLOTE'
    end
    object Qr_FPDupFPNUMERO: TFloatField
      FieldName = 'FPNUMERO'
      Origin = 'SG_ASSOC.FPCRDUP.FPNUMERO'
    end
    object Qr_FPDupFPDESD: TStringField
      FieldName = 'FPDESD'
      Origin = 'SG_ASSOC.FPCRDUP.FPDESD'
      Size = 2
    end
    object Qr_FPDupFPTIPO: TFloatField
      FieldName = 'FPTIPO'
      Origin = 'SG_ASSOC.FPCRDUP.FPTIPO'
    end
    object Qr_FPDupFPCODCLI: TFloatField
      FieldName = 'FPCODCLI'
      Origin = 'SG_ASSOC.FPCRDUP.FPCODCLI'
    end
    object Qr_FPDupFPDTEMIS: TDateTimeField
      FieldName = 'FPDTEMIS'
      Origin = 'SG_ASSOC.FPCRDUP.FPDTEMIS'
    end
    object Qr_FPDupFPCAIXA: TFloatField
      FieldName = 'FPCAIXA'
      Origin = 'SG_ASSOC.FPCRDUP.FPCAIXA'
    end
    object Qr_FPDupFPCODUSR: TFloatField
      FieldName = 'FPCODUSR'
      Origin = 'SG_ASSOC.FPCRDUP.FPCODUSR'
    end
    object Qr_FPDupFPVALOR: TFloatField
      FieldName = 'FPVALOR'
      Origin = 'SG_ASSOC.FPCRDUP.FPVALOR'
    end
    object Qr_FPDupFPJUROS: TFloatField
      FieldName = 'FPJUROS'
      Origin = 'SG_ASSOC.FPCRDUP.FPJUROS'
    end
    object Qr_FPDupFPDESC: TFloatField
      FieldName = 'FPDESC'
      Origin = 'SG_ASSOC.FPCRDUP.FPDESC'
    end
    object Qr_FPDupFPDATPAG: TDateTimeField
      FieldName = 'FPDATPAG'
      Origin = 'SG_ASSOC.FPCRDUP.FPDATPAG'
    end
    object Qr_FPDupnomcli: TStringField
      FieldKind = fkCalculated
      FieldName = 'nomcli'
      Size = 40
      Calculated = True
    end
    object Qr_FPDupvaldup: TFloatField
      FieldKind = fkCalculated
      FieldName = 'valdup'
      Calculated = True
    end
  end
  object Qr_FP: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select  * from FPCR where FPCODEMP is null')
    Left = 184
    Top = 8
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
  end
end
